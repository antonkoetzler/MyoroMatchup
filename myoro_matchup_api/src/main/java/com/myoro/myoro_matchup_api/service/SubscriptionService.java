package com.myoro.myoro_matchup_api.service;

import com.myoro.myoro_matchup_api.dto.SubscriptionStatusResponseDto;
import com.myoro.myoro_matchup_api.dto.SubscriptionVerifyRequestDto;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.util.SubscriptionConstants;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/** Service for managing subscriptions. */
@Service
public class SubscriptionService {
  /** User repository. */
  @Autowired private UserRepository userRepository;

  /** Game repository. */
  @Autowired private GameRepository gameRepository;

  /** JWT service. */
  @Autowired private JwtService jwtService;

  /** Message service for localization. */
  @Autowired private MessageService messageService;

  /**
   * Gets the subscription status for the authenticated user.
   *
   * @param request the HTTP request
   * @return subscription status response
   */
  public SubscriptionStatusResponseDto getStatus(HttpServletRequest request) {
    Long userId = jwtService.getUserIdFromRequest(request);
    UserModel user =
        userRepository
            .findById(userId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    int gameCount = gameRepository.countGamesUserParticipatesIn(userId);
    boolean isSubscribed = user.getIsSubscribed() != null && user.getIsSubscribed();

    SubscriptionStatusResponseDto response = new SubscriptionStatusResponseDto();
    response.setIsSubscribed(isSubscribed);
    response.setCurrentGameCount(gameCount);
    response.setMaxFreeGames(SubscriptionConstants.FREE_USER_MAX_GAMES);
    response.setCanCreateGames(isSubscribed);
    response.setCanJoinMoreGames(
        isSubscribed || gameCount < SubscriptionConstants.FREE_USER_MAX_GAMES);

    return response;
  }

  /**
   * Verifies a subscription purchase receipt.
   *
   * <p>TODO: Implement actual receipt verification with Apple/Google servers. For now, this is
   * mocked and will always succeed in development.
   *
   * @param request the HTTP request
   * @param verifyRequest the verification request
   * @return true if verification succeeded
   */
  @Transactional
  public boolean verifyPurchase(
      HttpServletRequest request, SubscriptionVerifyRequestDto verifyRequest) {
    Long userId = jwtService.getUserIdFromRequest(request);
    UserModel user =
        userRepository
            .findById(userId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // TODO: Implement actual receipt verification with Apple App Store / Google
    // Play
    // For iOS: Verify receipt with Apple's verifyReceipt endpoint
    // For Android: Verify purchase token with Google Play Developer API
    //
    // For now, we mock success in development:
    boolean isValid = verifyReceiptWithStore(verifyRequest);

    if (isValid) {
      user.setIsSubscribed(true);
      userRepository.save(user);
      return true;
    }

    return false;
  }

  /**
   * Cancels the user's subscription.
   *
   * @param request the HTTP request
   */
  @Transactional
  public void cancelSubscription(HttpServletRequest request) {
    Long userId = jwtService.getUserIdFromRequest(request);
    UserModel user =
        userRepository
            .findById(userId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    user.setIsSubscribed(false);
    userRepository.save(user);
  }

  /**
   * Checks if a user can create games.
   *
   * @param userId the user ID
   * @return true if the user can create games
   */
  public boolean canCreateGame(Long userId) {
    UserModel user =
        userRepository
            .findById(userId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    return user.getIsSubscribed() != null && user.getIsSubscribed();
  }

  /**
   * Checks if a user can join more games.
   *
   * @param userId the user ID
   * @return true if the user can join more games
   */
  public boolean canJoinGame(Long userId) {
    UserModel user =
        userRepository
            .findById(userId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    if (user.getIsSubscribed() != null && user.getIsSubscribed()) {
      return true;
    }

    int gameCount = gameRepository.countGamesUserParticipatesIn(userId);
    return gameCount < SubscriptionConstants.FREE_USER_MAX_GAMES;
  }

  /**
   * Verifies receipt with the appropriate store.
   *
   * <p>TODO: Implement actual verification
   *
   * @param verifyRequest the verification request
   * @return true if valid (mocked for now)
   */
  private boolean verifyReceiptWithStore(SubscriptionVerifyRequestDto verifyRequest) {
    // TODO: Implement actual verification
    // For iOS: Call Apple's verifyReceipt endpoint
    // For Android: Call Google Play Developer API
    //
    // Mock implementation for development:
    return verifyRequest.getReceipt() != null && !verifyRequest.getReceipt().isEmpty();
  }
}
