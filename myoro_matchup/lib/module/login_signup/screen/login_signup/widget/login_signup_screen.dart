import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:provider/provider.dart';

part '../_widget/_body.dart';
part '../_widget/_active_button.dart';
part '../_widget/_action_buttons.dart';
part '../_widget/_form_type_switcher_button.dart';
part '../_widget/_input.dart';
part '../_widget/_inputs.dart';
part '../_widget/_logo.dart';
part '../_widget/_bottom_navigation_bar.dart';
part '../_widget/_forgot_password_dialog.dart';

/// Login/signup screen.
final class LoginSignupScreen extends StatelessWidget {
  /// Default constructor.
  const LoginSignupScreen({super.key});

  /// Build function.
  @override
  Widget build(_) {
    final viewModel = getIt<LoginSignupScreenViewModel>();
    final state = viewModel.state;
    final formController = state.formController;
    final formTypeController = state.formTypeController;

    return Provider.value(
      value: viewModel,
      child: MyoroForm(
        controller: formController,
        builder: (request, _) {
          return ValueListenableBuilder(
            valueListenable: formTypeController,
            builder: (_, formType, _) {
              return MyoroScreen(body: _Body(formType), bottomNavigationBar: _BottomNavigationBar(request, formType));
            },
          );
        },
      ),
    );
  }
}
