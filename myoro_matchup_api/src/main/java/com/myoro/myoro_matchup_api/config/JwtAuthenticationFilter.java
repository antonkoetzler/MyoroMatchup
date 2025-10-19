package com.myoro.myoro_matchup_api.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import com.myoro.myoro_matchup_api.service.JwtService;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * JWT authentication filter that validates JWT tokens in requests.
 */
@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

  @Autowired
  private JwtService jwtService;

  @Override
  protected void doFilterInternal(@NonNull final HttpServletRequest request,
      @NonNull final HttpServletResponse response,
      @NonNull final FilterChain filterChain) throws ServletException, IOException {
    final String authHeader = request.getHeader("Authorization");
    if (authHeader != null) {
      final String token = jwtService.extractTokenFromHeader(authHeader);
      if (token != null && jwtService.isValidToken(token)) {
        // Token is valid - tell Spring Security user is authenticated
        SecurityContextHolder.getContext().setAuthentication(
            new UsernamePasswordAuthenticationToken("authenticated", null, null));
      }
    }
    filterChain.doFilter(request, response);
  }
}
