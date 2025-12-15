part of '../widget/user_details_screen.dart';

/// Body of [UserDetailsScreen].
final class _Body extends StatelessWidget {
  /// Default constructor.
  const _Body();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<UserDetailsScreenThemeExtension>();
    final bodySpacing = themeExtension.bodySpacing;
    final bodyPadding = themeExtension.bodyPadding;

    final viewModel = context.read<UserDetailsScreenViewModel>();
    final userRequest = viewModel.userRequest;

    return MyoroRequestWidget(
      request: userRequest,
      successBuilder: (_, user) {
        return MyoroSingleChildScrollable(
          child: Padding(
            padding: bodyPadding,
            child: Column(
              spacing: bodySpacing,
              mainAxisSize: MainAxisSize.min,
              children: [
                _BodyUserDetails(user!),
                _BodyLocation(user),
                _BodyProfileVisibility(user),
                _BodySubscriptionStatus(user),
                const Flexible(child: _BodyBlockedUsers()),
                const _BodyDeleteAccountButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
