package com.myoro.myoro_matchup_api.controller;

import com.myoro.myoro_matchup_api.dto.SubscriptionStatusResponseDto;
import com.myoro.myoro_matchup_api.dto.SubscriptionVerifyRequestDto;
import com.myoro.myoro_matchup_api.service.MessageService;
import com.myoro.myoro_matchup_api.service.SubscriptionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/** Subscription controller for managing premium subscriptions. */
@Tag(name = "Subscription", description = "Subscription management endpoints")
@RestController
@RequestMapping("/api/subscription")
public class SubscriptionController {
  /** Subscription service. */
  @Autowired private SubscriptionService subscriptionService;

  /** Message service. */
  @Autowired private MessageService messageService;

  /**
   * Gets the subscription status for the authenticated user.
   *
   * @param request the HTTP request containing the bearer token
   * @return ResponseEntity containing subscription status
   */
  @Operation(
      summary = "Get subscription status",
      description = "Gets the current subscription status for the authenticated user")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Subscription status retrieved"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @GetMapping("/status")
  public ResponseEntity<SubscriptionStatusResponseDto> getStatus(HttpServletRequest request) {
    return ResponseEntity.ok(subscriptionService.getStatus(request));
  }

  /**
   * Verifies a subscription purchase.
   *
   * @param request the HTTP request containing the bearer token
   * @param verifyRequest the verification request containing receipt data
   * @return ResponseEntity containing success/failure status
   */
  @Operation(
      summary = "Verify subscription purchase",
      description = "Verifies a subscription purchase receipt from iOS or Android")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Purchase verified successfully"),
        @ApiResponse(responseCode = "400", description = "Invalid receipt"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @PostMapping("/verify")
  public ResponseEntity<Map<String, Object>> verifyPurchase(
      HttpServletRequest request, @Valid @RequestBody SubscriptionVerifyRequestDto verifyRequest) {
    Map<String, Object> responseBody = new HashMap<>();

    boolean success = subscriptionService.verifyPurchase(request, verifyRequest);
    if (success) {
      responseBody.put("success", true);
      responseBody.put("message", messageService.getMessage("subscription.verified.success"));
      return ResponseEntity.ok(responseBody);
    } else {
      responseBody.put("success", false);
      responseBody.put("message", messageService.getMessage("subscriptionScreenPurchaseError"));
      return ResponseEntity.badRequest().body(responseBody);
    }
  }

  /**
   * Cancels the subscription for the authenticated user.
   *
   * @param request the HTTP request containing the bearer token
   * @return ResponseEntity containing success message
   */
  @Operation(
      summary = "Cancel subscription",
      description = "Cancels the subscription for the authenticated user")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Subscription cancelled"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @DeleteMapping
  public ResponseEntity<Map<String, Object>> cancelSubscription(HttpServletRequest request) {
    subscriptionService.cancelSubscription(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("subscription.cancelled.success"));
    return ResponseEntity.ok(responseBody);
  }
}
