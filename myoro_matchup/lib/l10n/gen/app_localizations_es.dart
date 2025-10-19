// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'No se pudo conectar al servidor, verifica tu internet e inténtalo de nuevo.';

  @override
  String get mmErrorFeedbackSubtitle => 'Por favor, verifica tu conexión e inténtalo de nuevo.';

  @override
  String get mmErrorFeedbackActionButtonText => 'Reintentar';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Lugar';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Ciudad';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'Estado';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'País';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continente';

  @override
  String get visibilityEnumPrivateLabel => 'Privado';

  @override
  String get visibilityEnumPublicLabel => 'Público';

  @override
  String get frequencyEnumWeeklyLabel => 'Semanal';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Quincenal';

  @override
  String get frequencyEnumMonthlyLabel => 'Mensual';

  @override
  String get frequencyEnumYearlyLabel => 'Anual';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => '¡No se pudieron obtener los detalles del juego!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Jugadores';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Jugadores';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Clasificaciones';

  @override
  String get gameListingScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get gameListingScreenBodyErrorStateTitle => '¡Error al recuperar los juegos!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle => '¡No se encontraron juegos!';

  @override
  String get gameListingScreenNewGameButtonText => 'Crear juego';

  @override
  String get gameCreationScreenAppBarTitle => 'Crear juego';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Nombre de usuario o email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Contraseña';

  @override
  String get loginSignupScreenLoginLoginButton => 'Iniciar sesión';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '¿Olvidaste tu contraseña?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Nombre';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Nombre de usuario';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Contraseña';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Repetir contraseña';

  @override
  String get loginSignupScreenSignupSignupButton => 'Registrarse';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => '¿Nuevo en MyoroMatchup? ¡Regístrate!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => '¿Ya estás registrado? ¡Inicia sesión!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'El nombre de usuario/correo electrónico no puede estar vacío.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Contraseña no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'El nombre no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'El nombre de usuario no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'El correo electrónico no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Los campos de contraseña no pueden estar vacíos.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Las contraseñas no coinciden.';
}
