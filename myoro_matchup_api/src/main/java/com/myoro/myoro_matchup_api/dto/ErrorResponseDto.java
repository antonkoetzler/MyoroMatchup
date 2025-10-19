package com.myoro.myoro_matchup_api.dto;

/**
 * Standard error response class for consistent API error formatting.
 */
public class ErrorResponseDto {
  /** Error type or category. */
  private String error;

  /** Detailed error message. */
  private String message;

  /** Default constructor for JSON deserialization. */
  public ErrorResponseDto() {
  }

  /**
   * Creates a new error response with the specified error type and message.
   * 
   * @param error   the error type or category
   * @param message the detailed error message
   */
  public ErrorResponseDto(final String error, final String message) {
    this.error = error;
    this.message = message;
  }

  /** Gets the error type or category. */
  public String getError() {
    return error;
  }

  /** Sets the error type or category. */
  public void setError(final String error) {
    this.error = error;
  }

  /** Gets the detailed error message. */
  public String getMessage() {
    return message;
  }

  /** Sets the detailed error message. */
  public void setMessage(final String message) {
    this.message = message;
  }
}
