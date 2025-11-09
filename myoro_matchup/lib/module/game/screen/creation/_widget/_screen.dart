part of '../game_creation_screen.dart';

/// Generic screen of [GameCreationScreen].
abstract class _Screen extends StatelessWidget {
  /// Default constructor.
  _Screen({this.onInit, required this.title, required this.builder});

  /// Form key.
  final formKey = GlobalKey<FormState>();

  /// On init.
  final void Function(GameCreationScreenViewModel)? onInit;

  /// Title.
  final String title;

  /// Child.
  final Widget Function(BuildContext) builder;

  @override
  @mustCallSuper
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<GameCreationScreenThemeExtension>();
    final titleTextStyle = themeExtension.titleTextStyle;
    final spacing = themeExtension.spacing;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: titleTextStyle),
          Expanded(
            child: Center(
              child: MyoroSingleChildScrollable(
                child: Padding(
                  padding: EdgeInsets.only(top: spacing),
                  child: Form(key: formKey, child: builder(context)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
