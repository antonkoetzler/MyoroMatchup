part of '../widget/user_details_screen.dart';

/// Profile visibility of [UserDetailsScreen].
final class _BodyProfileVisibility extends StatelessWidget {
  /// Default constructor.
  const _BodyProfileVisibility(this._user);

  /// User.
  final UserResponseDto _user;

  /// Build function.
  @override
  Widget build(context) {
    final userDetailsScreenBodyProfileVisibilityTitle = localization.userDetailsScreenBodyProfileVisibilityTitle;

    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodySpacing = themeExtension.bodySpacing;

    final visibility = _user.visibility;

    return _BodyCard(
      userDetailsScreenBodyProfileVisibilityTitle,
      Row(
        spacing: bodySpacing,
        children: VisibilityEnum.values.map((v) {
          final isSelected = v == visibility;

          return Expanded(
            child: MyoroIconTextButton(
              style: isSelected
                  ? const MyoroIconTextButtonStyle().secondary(context)
                  : const MyoroIconTextButtonStyle().bordered(context),
              text: v.label,
              onTapUp: (_, _) {
                if (isSelected) {
                  return;
                }
                _BodyProfileVisibilityBottomSheet.show(context, v);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
