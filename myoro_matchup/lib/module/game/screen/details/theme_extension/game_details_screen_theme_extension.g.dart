// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_details_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameDetailsScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class GameDetailsScreenThemeExtension with _$GameDetailsScreenThemeExtensionMixin {}
/// ```
mixin _$GameDetailsScreenThemeExtensionMixin on ThemeExtension<GameDetailsScreenThemeExtension> {
  GameDetailsScreenThemeExtension get self => this as GameDetailsScreenThemeExtension;

  @override
  GameDetailsScreenThemeExtension copyWith({
    EdgeInsets? errorStatePadding,
    EdgeInsets? bodySuccessStateTabViewContentPadding,
    double? spacing,
    EdgeInsets? bodySuccessStateTabViewInfoTabContentPadding,
    MyoroTextConfiguration? bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration,
    TextStyle? invitationBottomSheetTitleTextStyle,
    double? invitationBottomSheetActionButtonsSpacing,
    double? invitationBottomSheetSpacing,
  }) {
    return GameDetailsScreenThemeExtension(
      errorStatePadding: errorStatePadding ?? self.errorStatePadding,
      bodySuccessStateTabViewContentPadding:
          bodySuccessStateTabViewContentPadding ?? self.bodySuccessStateTabViewContentPadding,
      spacing: spacing ?? self.spacing,
      bodySuccessStateTabViewInfoTabContentPadding:
          bodySuccessStateTabViewInfoTabContentPadding ?? self.bodySuccessStateTabViewInfoTabContentPadding,
      bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration:
          bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration ??
          self.bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration,
      invitationBottomSheetTitleTextStyle:
          invitationBottomSheetTitleTextStyle ?? self.invitationBottomSheetTitleTextStyle,
      invitationBottomSheetActionButtonsSpacing:
          invitationBottomSheetActionButtonsSpacing ?? self.invitationBottomSheetActionButtonsSpacing,
      invitationBottomSheetSpacing: invitationBottomSheetSpacing ?? self.invitationBottomSheetSpacing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameDetailsScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorStatePadding == self.errorStatePadding &&
        other.bodySuccessStateTabViewContentPadding == self.bodySuccessStateTabViewContentPadding &&
        other.spacing == self.spacing &&
        other.bodySuccessStateTabViewInfoTabContentPadding == self.bodySuccessStateTabViewInfoTabContentPadding &&
        other.bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration ==
            self.bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration &&
        other.invitationBottomSheetTitleTextStyle == self.invitationBottomSheetTitleTextStyle &&
        other.invitationBottomSheetActionButtonsSpacing == self.invitationBottomSheetActionButtonsSpacing &&
        other.invitationBottomSheetSpacing == self.invitationBottomSheetSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.errorStatePadding,
      self.bodySuccessStateTabViewContentPadding,
      self.spacing,
      self.bodySuccessStateTabViewInfoTabContentPadding,
      self.bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration,
      self.invitationBottomSheetTitleTextStyle,
      self.invitationBottomSheetActionButtonsSpacing,
      self.invitationBottomSheetSpacing,
    );
  }

  @override
  String toString() =>
      'GameDetailsScreenThemeExtension(\n'
      '  errorStatePadding: ${self.errorStatePadding},\n'
      '  bodySuccessStateTabViewContentPadding: ${self.bodySuccessStateTabViewContentPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  bodySuccessStateTabViewInfoTabContentPadding: ${self.bodySuccessStateTabViewInfoTabContentPadding},\n'
      '  bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration: ${self.bodySuccessStateTabViewPlayersTabActionButtonTextConfiguration},\n'
      '  invitationBottomSheetTitleTextStyle: ${self.invitationBottomSheetTitleTextStyle},\n'
      '  invitationBottomSheetActionButtonsSpacing: ${self.invitationBottomSheetActionButtonsSpacing},\n'
      '  invitationBottomSheetSpacing: ${self.invitationBottomSheetSpacing},\n'
      ');';
}
