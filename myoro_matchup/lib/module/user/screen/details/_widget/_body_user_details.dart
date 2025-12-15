part of '../widget/user_details_screen.dart';

/// User details of [UserDetailsScreen].
final class _BodyUserDetails extends StatelessWidget {
  /// Default constructor.
  const _BodyUserDetails(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final userDetailsScreenBodyUserDetailsTitle = localization.userDetailsScreenBodyUserDetailsTitle;

    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodySpacing = themeExtension.bodySpacing;

    return _BodyCard(
      userDetailsScreenBodyUserDetailsTitle,
      Row(
        spacing: bodySpacing,
        children: [
          _BodyProfilePicture(_user),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_BodyUsername(_user), _BodyName(_user)],
            ),
          ),
          _BodySubscriptionPlan(_user),
        ],
      ),
    );
  }
}
