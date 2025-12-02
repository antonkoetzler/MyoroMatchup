part of '../widget/game_details_screen.dart';

/// Button of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButton extends StatelessWidget {
  /// Default value of [isSecondary].
  static const isSecondaryDefaultValue = false;

  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButton({
    required this.icon,
    this.backgroundIdleColor,
    this.backgroundHoverColor,
    this.backgroundTapColor,
    this.isSecondary = isSecondaryDefaultValue,
    required this.onTapUp,
  }) : assert(
         isSecondary
             ? (backgroundIdleColor == null && backgroundHoverColor == null && backgroundTapColor == null)
             : true,
         '[_BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButton]: [backgroundIdleColor], [backgroundHoverColor] and [backgroundTapColor] must be null if [isSecondary ]is true',
       );

  /// Icon.
  final IconData icon;

  /// [MyoroTapStatusEnum.idle] background color.
  final Color? backgroundIdleColor;

  /// [MyoroTapStatusEnum.hover] background color.
  final Color? backgroundHoverColor;

  /// [MyoroTapStatusEnum.tap] background color.
  final Color? backgroundTapColor;

  /// [bool] to determine if the button is secondary.
  final bool isSecondary;

  /// On tap up.
  final MyoroButtonOnTapUp onTapUp;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: (isSecondary ? const MyoroIconTextButtonStyle().secondary(context) : const MyoroIconTextButtonStyle())
            .copyWith(
              backgroundIdleColor: backgroundIdleColor,
              backgroundHoverColor: backgroundHoverColor,
              backgroundTapColor: backgroundTapColor,
              borderWidth: 0,
              iconSize: bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButtonIconSize,
            ),
        icon: icon,
        onTapUp: onTapUp,
      ),
    );
  }
}
