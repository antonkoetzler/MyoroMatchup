package com.myoro.myoro_matchup_api.exception;

import com.myoro.myoro_matchup_api.dto.ErrorResponseDto;
import com.myoro.myoro_matchup_api.service.MessageService;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/** Global exception handler for centralized error handling across all REST controllers. */
@RestControllerAdvice
public class GlobalExceptionHandler {
  /** Message service for localization and internationalization. */
  @Autowired private MessageService messageService;

  /**
   * Handles HTTP message not readable exceptions when request body is missing or invalid JSON.
   *
   * @param ex the HttpMessageNotReadableException that was thrown
   * @return ResponseEntity containing error details with HTTP 400 Bad Request status
   */
  @ExceptionHandler(HttpMessageNotReadableException.class)
  public ResponseEntity<ErrorResponseDto> handleMissingBody(
      final HttpMessageNotReadableException ex) {
    final ErrorResponseDto error =
        new ErrorResponseDto(
            messageService.getMessage("error.request.body.required"),
            messageService.getMessage("error.invalid.json"));
    return ResponseEntity.badRequest().body(error);
  }

  /**
   * Handles method argument validation exceptions when request body validation fails. Returns the
   * first error based on field declaration order in the DTO.
   *
   * @param ex the MethodArgumentNotValidException containing validation errors
   * @return ResponseEntity containing the first validation error with HTTP 400 Bad Request status
   */
  @ExceptionHandler(MethodArgumentNotValidException.class)
  public ResponseEntity<ErrorResponseDto> handleValidationException(
      final MethodArgumentNotValidException ex) {
    String errorMessage = messageService.getMessage("error.validation.failed");

    if (!ex.getBindingResult().getAllErrors().isEmpty()) {
      Object target = ex.getBindingResult().getTarget();

      if (target != null) {
        // Get field declaration order from DTO class
        Class<?> dtoClass = target.getClass();
        Field[] declaredFields = dtoClass.getDeclaredFields();
        List<String> fieldOrder =
            Arrays.stream(declaredFields).map(Field::getName).collect(Collectors.toList());

        // Sort errors by field declaration order and get first
        List<ObjectError> errors = ex.getBindingResult().getAllErrors();
        FieldError firstFieldError =
            errors.stream()
                .filter(error -> error instanceof FieldError)
                .map(error -> (FieldError) error)
                .min(
                    Comparator.comparingInt(
                        error -> {
                          String fieldName = error.getField();
                          int index = fieldOrder.indexOf(fieldName);
                          return index == -1 ? Integer.MAX_VALUE : index;
                        }))
                .orElse(null);

        errorMessage =
            firstFieldError != null
                ? firstFieldError.getDefaultMessage()
                : errors.get(0).getDefaultMessage();
      } else {
        errorMessage = ex.getBindingResult().getAllErrors().get(0).getDefaultMessage();
      }
    }

    final ErrorResponseDto error =
        new ErrorResponseDto(messageService.getMessage("error.validation.failed"), errorMessage);
    return ResponseEntity.badRequest().body(error);
  }

  /**
   * Handles access denied exceptions when user lacks permission to access a resource.
   *
   * @param ex the AccessDeniedException that was thrown
   * @return ResponseEntity containing access denied message with HTTP 403 Forbidden status
   */
  @ExceptionHandler(AccessDeniedException.class)
  public ResponseEntity<ErrorResponseDto> handleAccessDenied(final AccessDeniedException ex) {
    final ErrorResponseDto error =
        new ErrorResponseDto(
            messageService.getMessage("error.access.denied"),
            messageService.getMessage("error.access.denied.message"));
    return ResponseEntity.status(HttpStatus.FORBIDDEN).body(error);
  }

  /**
   * Handles authentication exceptions when user is not authenticated.
   *
   * @param ex the AuthenticationException that was thrown
   * @return ResponseEntity containing authentication required message with HTTP 401 Unauthorized
   *     status
   */
  @ExceptionHandler(AuthenticationException.class)
  public ResponseEntity<ErrorResponseDto> handleAuthentication(final AuthenticationException ex) {
    final ErrorResponseDto error =
        new ErrorResponseDto(
            messageService.getMessage("error.authentication.required"),
            messageService.getMessage("error.authentication.required.message"));
    return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(error);
  }

  /**
   * Handles general runtime exceptions for business logic and service layer errors.
   *
   * @param ex the RuntimeException that was thrown
   * @return ResponseEntity containing error details with HTTP 400 Bad Request status
   */
  @ExceptionHandler(RuntimeException.class)
  public ResponseEntity<ErrorResponseDto> handleException(final RuntimeException ex) {
    final ErrorResponseDto error =
        new ErrorResponseDto(messageService.getMessage("error.request.failed"), ex.getMessage());
    return ResponseEntity.badRequest().body(error);
  }

  /**
   * Catch-all handler for any unhandled exception.
   *
   * @param ex any Exception that was thrown
   * @return ResponseEntity containing error details with HTTP 500 Internal Server Error status
   */
  @ExceptionHandler(Exception.class)
  public ResponseEntity<ErrorResponseDto> handleAllExceptions(final Exception ex) {
    final ErrorResponseDto error =
        new ErrorResponseDto(
            messageService.getMessage("error.internal.server"),
            ex.getClass().getSimpleName() + ": " + ex.getMessage());
    return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(error);
  }
}
