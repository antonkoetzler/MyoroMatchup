package com.myoro.myoro_matchup_api.service;

import javax.crypto.SecretKey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;

@Service
public final class JwtService {
  /**
   * Secret key for JWT.
   */
  private final String secret = "mySecretKey123456789012345678901234567890";

  @Autowired
  private MessageService messageService;

  /**
   * Creates a secret key for signing JWT tokens.
   * This key is used to both create and verify tokens - it's like a password
   * that ensures tokens can't be tampered with.
   * 
   * @return A secret key derived from our secret string
   */
  private SecretKey getSigningKey() {
    return Keys.hmacShaKeyFor(secret.getBytes());
  }

  /**
   * Generates a JWT token for a given user ID.
   * 
   * @param userId The ID of the user to create a token for
   * @return A JWT token string that can be used for authentication
   */
  public String generateToken(final Long userId) {
    return Jwts.builder()
        .subject(userId.toString())
        .claim("userId", userId)
        .signWith(getSigningKey())
        .compact();
  }

  /**
   * Validates if a JWT token is valid.
   * 
   * @param token the JWT token to validate
   * @return true if token is valid, false otherwise
   */
  public boolean isValidToken(final String token) {
    try {
      Jwts.parser()
          .verifyWith(getSigningKey())
          .build()
          .parseSignedClaims(token);
      return true;
    } catch (final Exception e) {
      return false;
    }
  }

  /**
   * Extracts the token from the Authorization header.
   * 
   * @param authHeader the Authorization header value
   * @return the token without "Bearer " prefix, or null if invalid
   */
  public String extractTokenFromHeader(final String authHeader) {
    if (authHeader != null && authHeader.startsWith("Bearer ")) {
      return authHeader.substring(7);
    }
    return null;
  }

  /**
   * Validates a JWT token and extracts the user ID.
   * 
   * @param token the JWT token to validate
   * @return the user ID from the token
   * @throws RuntimeException if the token is invalid or expired
   */
  public Long validateTokenAndGetUserId(final String token) {
    try {
      final Claims claims = Jwts.parser()
          .verifyWith(getSigningKey())
          .build()
          .parseSignedClaims(token)
          .getPayload();

      return claims.get("userId", Long.class);
    } catch (final Exception e) {
      throw new RuntimeException(messageService.getMessage("error.jwt.invalid"), e);
    }
  }
}
