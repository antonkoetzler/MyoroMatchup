package com.example.myoro_matchup_api.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

/** Security config. */
@Configuration
@EnableWebSecurity
public class SecurityConfig {
  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    http
        .csrf(csrf -> csrf.disable()) // Disable CSRF for API
        .authorizeHttpRequests(authz -> authz
            .requestMatchers("/api/auth/**").permitAll() // Allow signup without auth
            .requestMatchers("/").permitAll() // Allow health check
            .anyRequest().authenticated() // Everything else needs auth
        );
    return http.build();
  }
}