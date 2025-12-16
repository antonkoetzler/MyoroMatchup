/// Subscription status for a user.
enum SubscriptionStatusEnum {
  /// User has no subscription.
  free,

  /// User has an active premium subscription.
  premium,

  /// Subscription is pending verification.
  pending,

  /// Subscription expired.
  expired;

  /// Whether the user is premium (has active subscription).
  bool get isPremium => this == SubscriptionStatusEnum.premium;

  /// Whether the user is free.
  bool get isFree => this == SubscriptionStatusEnum.free;
}
