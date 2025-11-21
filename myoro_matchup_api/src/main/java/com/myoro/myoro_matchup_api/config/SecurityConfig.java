package com.myoro.myoro_matchup_api.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.myoro.myoro_matchup_api.component.CustomAuthenticationEntryPointComponent;
import com.myoro.myoro_matchup_api.component.JwtAuthenticationFilterComponent;

/** Security config. */
@Configuration
@EnableWebSecurity
public class SecurityConfig {

  @Autowired
  private CustomAuthenticationEntryPointComponent customAuthenticationEntryPoint;

  @Autowired
  private JwtAuthenticationFilterComponent jwtAuthenticationFilter;

  /**
   * Security filter chain.
   * 
   * We need to add the endpoints that will not require authentication.
   */
  @Bean
  public SecurityFilterChain filterChain(final HttpSecurity http) throws Exception {
    http
        .csrf(csrf -> csrf.disable()) // Disable CSRF for API
        .exceptionHandling(exceptions -> exceptions
            .authenticationEntryPoint(customAuthenticationEntryPoint))
        .authorizeHttpRequests(authz -> authz
            .requestMatchers("/api/auth/**").permitAll()
            .requestMatchers("/").permitAll()
            .requestMatchers("/api/test/**").permitAll()
            .anyRequest().authenticated())
        .addFilterBefore(jwtAuthenticationFilter, UsernamePasswordAuthenticationFilter.class);
    return http.build();
  }
}