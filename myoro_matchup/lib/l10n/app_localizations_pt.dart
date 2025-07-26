// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get gameScreenAppBarTitle => 'MyoroMatchup';

  @override
  String get gameScreenBodySuccessStateEmptyMessage =>
      'Nenhum jogo encontrado!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Nome de usuário ou email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Senha';

  @override
  String get loginSignupScreenLoginLoginButton => 'Entrar';

  @override
  String get loginSignupScreenLoginForgotPasswordButton =>
      'Esqueceu sua senha?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Nome';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder =>
      'Nome de usuário';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Senha';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder =>
      'Senha repetida';

  @override
  String get loginSignupScreenSignupSignupButton => 'Cadastrar-se';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'Novo no MyoroMatchup? Cadastre-se!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'Já tem cadastro? Entre';
}
