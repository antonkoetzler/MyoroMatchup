part of '../widget/user_details_screen.dart';

/// Subscription plan of [UserDetailsScreen].
final class _BodySubscriptionPlan extends StatelessWidget {
  /// Default constructor.
  const _BodySubscriptionPlan(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final userDetailsScreenBodySubscriptionPlanText = localization.userDetailsScreenBodySubscriptionPlanText;

    final isSubscribed = _user.isSubscribed ?? false;
    final isSubscribedString = isSubscribed.toString();

    return MyoroTag(text: userDetailsScreenBodySubscriptionPlanText(isSubscribedString));
  }
}
