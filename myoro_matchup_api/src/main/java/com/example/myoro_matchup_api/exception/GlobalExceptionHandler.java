package com.example.myoro_matchup_api.exception;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.example.myoro_matchup_api.service.MessageService;

/** Global exception handler. */
@RestControllerAdvice
public class GlobalExceptionHandler {

  /** Message service for localization. */
  @Autowired
  private MessageService messageService;

  /** Handles when request body is missing or invalid JSON. */
  @ExceptionHandler(HttpMessageNotReadableException.class)
  public ResponseEntity<Map<String, String>> handleMissingBody(HttpMessageNotReadableException ex) {
    Map<String, String> error = new HashMap<>();
    error.put("error", messageService.getMessage("error.request.body.required"));
    error.put("message", messageService.getMessage("error.invalid.json"));
    return ResponseEntity.badRequest().body(error);
  }

  /** Handles when request body is invalid. */
  @ExceptionHandler(MethodArgumentNotValidException.class)
  public ResponseEntity<Map<String, String>> handleValidationException(MethodArgumentNotValidException ex) {
    Map<String, String> error = new HashMap<>();
    // Get the first error only.
    if (!ex.getBindingResult().getAllErrors().isEmpty()) {
      final ObjectError firstError = ex.getBindingResult().getAllErrors().get(0);
      final String errorMessage = firstError.getDefaultMessage();
      error.put("message", errorMessage);
    }
    return ResponseEntity.badRequest().body(error);
  }

  /** Handles when an exception is thrown. */
  @ExceptionHandler(RuntimeException.class)
  public ResponseEntity<Map<String, String>> handleException(RuntimeException ex) {
    Map<String, String> error = new HashMap<>();
    error.put("error", messageService.getMessage("error.request.failed"));
    error.put("message", ex.getMessage());
    return ResponseEntity.badRequest().body(error);
  }
}