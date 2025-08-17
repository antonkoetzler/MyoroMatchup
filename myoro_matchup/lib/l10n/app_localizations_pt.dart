// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get mmErrorFeedbackSubtitle =>
      'Verifique sua conexão e tente novamente.';

  @override
  String get mmErrorFeedbackActionButtonText => 'Tentar novamente';

  @override
  String get visibilityEnumPrivateLabel => 'Privado';

  @override
  String get visibilityEnumPublicLabel => 'Público';

  @override
  String get frequencyEnumWeeklyLabel => 'Semanal';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Quinzenal';

  @override
  String get frequencyEnumMonthlyLabel => 'Mensal';

  @override
  String get frequencyEnumYearlyLabel => 'Anual';

  @override
  String get gameCreationScreenAppBarTitle => 'Novo jogo';

  @override
  String get gameCreationScreenNameFieldLabel => 'Nome';

  @override
  String get gameCreationScreenSportFieldLabel => 'Esporte';

  @override
  String get gameDetailsScreenBodyErrorStateTitle =>
      'Falha ao obter os detalhes do jogo!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Jogadores';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'Jogadores';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Classificações';

  @override
  String get gameListingScreenAppBarTitle => 'MyoroMatchup';

  @override
  String get gameListingScreenBodyErrorStateTitle =>
      'Erro ao recuperar os jogos!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle =>
      'Nenhum jogo encontrado!';

  @override
  String get gameListingScreenNewGameButtonText => 'Criar jogo';

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
      'Repetir senha';

  @override
  String get loginSignupScreenSignupSignupButton => 'Cadastrar-se';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'Novo no MyoroMatchup? Cadastre-se!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'Já tem cadastro? Entre';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Nome de usuário/e-mail não pode estar vazio.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'Senha não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'O nome não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'O nome de usuário não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'O e-mail não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Os campos de senha não podem estar vazios.';
}
