package com.myoro.myoro_matchup_api.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import com.myoro.myoro_matchup_api.exception.ErrorResponse;
import com.myoro.myoro_matchup_api.service.MessageService;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Custom authentication entry point that returns JSON error responses.
 */
@Component
public class CustomAuthenticationEntryPoint implements AuthenticationEntryPoint {
  @Autowired
  private MessageService messageService;

  @Autowired
  private ObjectMapper objectMapper;

  @Override
  public void commence(final HttpServletRequest request, final HttpServletResponse response,
      final AuthenticationException authException) throws IOException, ServletException {

    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
    response.setContentType(MediaType.APPLICATION_JSON_VALUE);

    final ErrorResponse error = new ErrorResponse(
        messageService.getMessage("error.authentication.required"),
        messageService.getMessage("error.authentication.required.message"));

    final String jsonResponse = objectMapper.writeValueAsString(error);
    response.getWriter().write(jsonResponse);
  }
}
