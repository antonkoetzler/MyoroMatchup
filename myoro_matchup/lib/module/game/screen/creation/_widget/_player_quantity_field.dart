part of '../game_creation_screen.dart';

/// Player quantity field of [GameCreationScreen].
final class _PlayerQuantityField extends StatelessWidget {
  const _PlayerQuantityField();

  @override
  Widget build(_) {
    return MyoroSingularDropdown<int>(
      configuration: MyoroSingularDropdownConfiguration(
        menuConfiguration: MyoroMenuConfiguration(
          request: 
        ),
      ),
    );
  }
}
