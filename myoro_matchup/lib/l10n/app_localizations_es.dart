// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get myoroErrorFeedbackSubtitle =>
      'Por favor, verifica tu conexión e inténtalo de nuevo.';

  @override
  String get myoroErrorFeedbackActionButtonText => 'Reintentar';

  @override
  String get gameListingScreenAppBarTitle => 'MyoroMatchup';

  @override
  String get gameListingScreenBodyErrorStateTitle =>
      '¡Error al recuperar los juegos!';

  @override
  String get gameListingScreenBodySuccessStateEmptyTitle =>
      '¡No se encontraron juegos!';

  @override
  String get gameDetailsScreenBodyErrorStateTitle =>
      'Failed to retrieve game details!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder =>
      'Nombre de usuario o email';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Contraseña';

  @override
  String get loginSignupScreenLoginLoginButton => 'Iniciar sesión';

  @override
  String get loginSignupScreenLoginForgotPasswordButton =>
      '¿Olvidaste tu contraseña?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Nombre';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder =>
      'Nombre de usuario';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Contraseña';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder =>
      'Repetir contraseña';

  @override
  String get loginSignupScreenSignupSignupButton => 'Registrarse';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      '¿Nuevo en MyoroMatchup? ¡Regístrate!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      '¿Ya estás registrado? ¡Inicia sesión!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'El nombre de usuario/correo electrónico no puede estar vacío.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'Contraseña no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'El nombre no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'El nombre de usuario no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'El correo electrónico no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Los campos de contraseña no pueden estar vacíos.';
}
