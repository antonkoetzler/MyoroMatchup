// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Não foi possível conectar ao servidor, verifique sua internet e tente novamente.';

  @override
  String get mmErrorFeedbackSubtitle =>
      'Verifique sua conexão e tente novamente.';

  @override
  String get mmErrorFeedbackActionButtonText => 'Tentar novamente';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Lugar';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Cidade';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Estado';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'País';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continente';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

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
  String get sportsEnumFootballLabel => 'Futebol';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Vôlei';

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
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle =>
      'Erro ao recuperar os jogos!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle =>
      'Nenhum jogo encontrado!';

  @override
  String get gameListingScreenNewGameButtonText => 'Criar jogo';

  @override
  String get gameCreationScreenAppBarTitle => 'Criar jogo';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nome';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Nome';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder =>
      'i.e., Partida Semanal de Futebol';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'O nome não pode estar vazio.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Esporte';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'Frequência e Data/Hora';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'Frequência';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'Início';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Fim';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'O horário de início não pode estar vazio.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'O horário de término não pode estar vazio.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Preço';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Membro: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Visitante: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Faixa Etária';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Localização';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'Por favor, selecione uma localização.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle =>
      'Visibilidade e Imagem';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'Foto de Perfil';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Anterior';

  @override
  String get gameCreationScreenButtonNextText => 'Próximo';

  @override
  String get gameCreationScreenButtonFinishText => 'Finalizar';

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
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Senha';

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

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'As senhas não coincidem.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerUserScreenText => 'Tela do Usuário';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Criar Jogo';
}
