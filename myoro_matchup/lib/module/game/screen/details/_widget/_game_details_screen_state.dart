part of '../widget/game_details_screen.dart';

/// State of [GameDetailsScreen].
final class _GameDetailsScreenState extends State<GameDetailsScreen> {
  /// View model.
  late final GameDetailsScreenViewModel _viewModel;

  /// Initialization function.
  @override
  void initState() {
    super.initState();
    _viewModel = getIt<GameDetailsScreenViewModel>(param1: widget.gameId);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(_) {
    return InheritedProvider.value(
      value: _viewModel,
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.gameRequestController,
        builder: (_, gameRequest, _) {
          return MyoroScreen(
            appBar: gameRequest.status.isSuccess ? _AppBar(gameRequest.data!) : null,
            body: switch (gameRequest.status) {
              MyoroRequestEnum.idle => const _BodyLoaderState(),
              MyoroRequestEnum.loading => const _BodyLoaderState(),
              MyoroRequestEnum.success => _BodySuccessState(gameRequest.data!),
              MyoroRequestEnum.error => const _ErrorState(),
            },
          );
        },
      ),
    );
  }
}
