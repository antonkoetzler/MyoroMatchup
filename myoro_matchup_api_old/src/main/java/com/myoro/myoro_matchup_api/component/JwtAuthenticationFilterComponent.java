package com.myoro.myoro_matchup_api.component;

import com.myoro.myoro_matchup_api.service.JwtService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

/** JWT authentication filter that validates JWT tokens in requests. */
@Component
public class JwtAuthenticationFilterComponent extends OncePerRequestFilter {

  /** JWT service for token validation */
  @Autowired private JwtService jwtService;

  /**
   * Validates JWT tokens and sets authentication context
   *
   * @param request the HTTP request
   * @param response the HTTP response
   * @param filterChain the filter chain
   * @throws ServletException if servlet error occurs
   * @throws IOException if I/O error occurs
   */
  @Override
  protected void doFilterInternal(
      @NonNull final HttpServletRequest request,
      @NonNull final HttpServletResponse response,
      @NonNull final FilterChain filterChain)
      throws ServletException, IOException {
    final String authHeader = request.getHeader("Authorization");
    if (authHeader != null) {
      final String token = jwtService.extractTokenFromHeader(authHeader);
      if (token != null && jwtService.isValidToken(token)) {
        // Token is valid - tell Spring Security user is authenticated
        SecurityContextHolder.getContext()
            .setAuthentication(
                new UsernamePasswordAuthenticationToken("authenticated", null, null));
      }
    }
    filterChain.doFilter(request, response);
  }
}
