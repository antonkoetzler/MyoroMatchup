part of '../widget/user_details_screen.dart';

/// Subscription status of [UserDetailsScreen].
final class _BodySubscriptionStatus extends StatelessWidget {
  /// Default constructor.
  const _BodySubscriptionStatus(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final bodySubscriptionStatusLabel = localization.bodySubscriptionStatusLabel;
    final bodySubscriptionStatusButtonText = localization.bodySubscriptionStatusButtonText;

    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodySubscriptionStatusLabelTextStyle = themeExtension.bodySubscriptionStatusLabelTextStyle;

    final isSubscribed = _user.isSubscribed;

    return _BodyCard(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bodySubscriptionStatusLabel(isSubscribed.toString()), style: bodySubscriptionStatusLabelTextStyle),
          // TODO
          IntrinsicWidth(
            child: MyoroIconTextButton(text: bodySubscriptionStatusButtonText, onTapUp: isSubscribed ? null : (_, _) {}),
          ),
        ],
      ),
    );
  }
}
