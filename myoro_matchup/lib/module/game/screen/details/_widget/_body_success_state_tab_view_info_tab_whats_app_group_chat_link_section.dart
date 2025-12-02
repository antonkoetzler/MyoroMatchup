part of '../widget/game_details_screen.dart';

/// WhatsApp group chat link section of [GameDetailsScreen].
final class _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSection extends StatelessWidget {
  /// Default constructor.
  const _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSection();

  @override
  Widget build(context) {
    final gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =
        localization.gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText;

    final themeExtension = context.resolveThemeExtension<GameDetailsScreenThemeExtension>();
    final spacing = themeExtension.spacing;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor;
    final bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor =
        themeExtension.bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor;

    final viewModel = context.read<GameDetailsScreenViewModel>();
    final pasteWhatsAppGroupChatLink = viewModel.pasteWhatsAppGroupChatLink;
    final state = viewModel.state;
    final whatsAppGroupChatLinkController = state.whatsAppGroupChatLinkController;
    final whatsAppGroupChatLinkRequestController = state.whatsAppGroupChatLinkRequestController;
    final fetch = whatsAppGroupChatLinkRequestController.fetch;
    final whatsAppGroupChatLinkIsValidController = state.whatsAppGroupChatLinkIsValidController;
    final whatsAppGroupChatLinkFormKey = state.whatsAppGroupChatLinkFormKey;
    final whatsAppGroupChatLinkInputValidation = viewModel.whatsAppGroupChatLinkInputValidation;
    final clearWhatsAppGroupChatLink = viewModel.clearWhatsAppGroupChatLink;

    return ValueListenableBuilder(
      valueListenable: whatsAppGroupChatLinkIsValidController,
      builder: (_, whatsAppGroupChatLinkIsValid, _) {
        return Row(
          spacing: spacing,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Form(
                key: whatsAppGroupChatLinkFormKey,
                child: MyoroInput(
                  style: bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionInputStyle,
                  label: gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText,
                  validation: whatsAppGroupChatLinkInputValidation,
                  controller: whatsAppGroupChatLinkController,
                ),
              ),
            ),
            if (whatsAppGroupChatLinkIsValid) ...[
              _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButton(
                icon: Icons.check,
                backgroundIdleColor:
                    bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundIdleColor,
                backgroundHoverColor:
                    bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundHoverColor,
                backgroundTapColor:
                    bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCheckButtonBackgroundTapColor,
                onTapUp: (_, _) => fetch(),
              ),
              _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButton(
                icon: Icons.close,
                backgroundIdleColor:
                    bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundIdleColor,
                backgroundHoverColor:
                    bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundHoverColor,
                backgroundTapColor:
                    bodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionCancelButtonBackgroundTapColor,
                onTapUp: (_, _) => clearWhatsAppGroupChatLink(),
              ),
            ] else ...[
              _BodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionButton(
                icon: Icons.paste,
                isSecondary: true,
                onTapUp: pasteWhatsAppGroupChatLink,
              ),
            ],
          ],
        );
      },
    );
  }
}
