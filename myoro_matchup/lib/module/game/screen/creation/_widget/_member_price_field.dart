part of '../game_creation_screen.dart';

/// Monthly price field of [GameCreationScreen].
final class _MemberPriceField extends StatelessWidget {
  const _MemberPriceField();

  @override
  Widget build(_) {
    return MyoroInput.number(configuration: MyoroInputConfiguration(label: localization.gameCreationScreenMemberPriceFieldLabel));
  }
}
