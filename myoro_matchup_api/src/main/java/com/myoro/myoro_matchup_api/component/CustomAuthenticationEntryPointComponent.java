package com.myoro.myoro_matchup_api.component;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.myoro.myoro_matchup_api.dto.ErrorResponseDto;
import com.myoro.myoro_matchup_api.service.MessageService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

/** Custom authentication entry point that returns JSON error responses. */
@Component
public class CustomAuthenticationEntryPointComponent implements AuthenticationEntryPoint {
  /** Service for retrieving localized messages */
  @Autowired private MessageService messageService;

  /** JSON serializer for converting objects to JSON */
  @Autowired private ObjectMapper objectMapper;

  /**
   * Handles authentication failures by returning JSON error response
   *
   * @param request the HTTP request
   * @param response the HTTP response
   * @param authException the authentication exception
   * @throws IOException if I/O error occurs
   * @throws ServletException if servlet error occurs
   */
  @Override
  public void commence(
      final HttpServletRequest request,
      final HttpServletResponse response,
      final AuthenticationException authException)
      throws IOException, ServletException {

    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
    response.setContentType(MediaType.APPLICATION_JSON_VALUE);

    final ErrorResponseDto error =
        new ErrorResponseDto(
            messageService.getMessage("error.authentication.required"),
            messageService.getMessage("error.authentication.required.message"));

    final String jsonResponse = objectMapper.writeValueAsString(error);
    response.getWriter().write(jsonResponse);
  }
}
