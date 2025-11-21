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
  String get mmSuccessFeedbackSubtitle => '¡Operación completada con éxito!';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Hecho';

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
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

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
  String get sportsEnumFootballLabel => 'Fútbol';

  @override
  String get sportsEnumFutsalLabel => 'Fútbol Sala';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Voleibol';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => '¡No se pudieron obtener los detalles del juego!';

  @override
  String get invitationListingScreenBodyErrorStateTitle => '¡No se pudieron obtener las invitaciones!';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '¡No se encontraron invitaciones!';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Jugadores';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Invitar Jugador';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Invitar Jugador';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Buscar usuarios...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Mensaje';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Cancelar';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Enviar';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Clasificaciones';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Frecuencia';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Día Principal';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Horarios Principales';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel => 'Día Quincenal';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Horarios Quincenales';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Precio de Miembro';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Precio de Invitado';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Rango de Edad';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge a $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Visibilidad';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '¡Error al recuperar los juegos!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '¡No se encontraron juegos!';

  @override
  String get homeScreenNewGameButtonText => 'Crear juego';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle =>
      '¡Error al recuperar las estadísticas deportivas del usuario!';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => '¡Error al recuperar tus juegos!';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => '¡Aún no te has unido a ningún juego!';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballAttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballDefenseLabel => 'DEF';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballStrikingLabel => 'STR';

  @override
  String get homeScreenBodyUserSportStatsStatsFootballSkillsLabel => 'SKL';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7AttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7DefenseLabel => 'DEF';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7StrikingLabel => 'STR';

  @override
  String get homeScreenBodyUserSportStatsStatsFut7SkillsLabel => 'SKL';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalAttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalDefenseLabel => 'DEF';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalStrikingLabel => 'STR';

  @override
  String get homeScreenBodyUserSportStatsStatsFutsalSkillsLabel => 'SKL';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballAttackLabel => 'ATK';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballBlockingLabel => 'BLK';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballServingLabel => 'SRV';

  @override
  String get homeScreenBodyUserSportStatsStatsVolleyballReceptionLabel => 'REC';

  @override
  String get gameCreationScreenAppBarTitle => 'Crear juego';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nombre';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Nombre';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'i.e., Partido Semanal de Fútbol';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'El nombre no puede estar vacío.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'El nombre debe tener al menos 3 caracteres.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Deporte';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Frecuencia y Fecha/Hora';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Frecuencia';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Inicio';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Fin';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'La hora de inicio no puede estar vacía.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'La hora de finalización no puede estar vacía.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Precio';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Miembro: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Invitado: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Rango de Edad';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Ubicación';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Por favor, seleccione una ubicación.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Visibilidad e Imagen';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Foto de perfil';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Anterior';

  @override
  String get gameCreationScreenButtonNextText => 'Siguiente';

  @override
  String get gameCreationScreenButtonFinishText => 'Finalizar';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => '¡Juego creado exitosamente!';

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
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Contraseña';

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

  @override
  String get mmAppBarMenuDrawerTitle => 'Menú';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Crear Juego';
}
