package com.myoro.myoro_matchup_api.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/** Health controller. */
@Tag(name = "Health", description = "Health check endpoint")
@RestController
public class HealthController {

  /**
   * Health check endpoint
   *
   * @return simple status message indicating API is running
   */
  @Operation(
      summary = "Health check",
      description = "Returns a simple status message indicating the API is running")
  @ApiResponse(responseCode = "200", description = "API is running")
  @GetMapping("/")
  public String home() {
    return "API is running!";
  }
}
