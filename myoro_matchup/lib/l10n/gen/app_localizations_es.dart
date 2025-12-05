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
  String get mmEmptyFeedbackActionButtonText => 'Actualizar';

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
  String get invitationStatusEnumPendingLabel => 'Pendiente';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Aceptado';

  @override
  String get invitationStatusEnumRejectedLabel => 'Rechazado';

  @override
  String get invitationStatusEnumExpiredLabel => 'Expirado';

  @override
  String get invitationStatusEnumCancelledLabel => 'Cancelado';

  @override
  String get friendRequestStatusEnumPendingLabel => 'Pendiente';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Aceptado';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Rechazado';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => '¡No se pudieron obtener los detalles del juego!';

  @override
  String get invitationListingScreenAppBarTitle => 'Invitaciones';

  @override
  String get friendListingScreenAppBarTitle => 'Amigos';

  @override
  String get userDetailsScreenAppBarTitle => 'Detalles del usuario';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Suscrito', 'other': 'No suscrito'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Suscrito', 'other': 'No suscrito'});
    return 'Estado de suscripción: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Suscribirse';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => 'Cambiar Visibilidad del Perfil';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      '¿Estás seguro de que quieres cambiar la visibilidad de tu perfil?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Ubicación';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'País';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'Estado/Provincia';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'Ciudad';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => 'Editar Ubicación';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => '¡No se encontraron invitaciones!';

  @override
  String get friendListingScreenBodyEmptyTitle => '¡No se encontraron amigos!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Mensaje';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Estado';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Aceptar';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => 'Estado';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Rechazar';

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
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => 'Buscar usuarios...';

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
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'Enlace del Grupo de Chat de WhatsApp';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'Usar Bot de Chat de Grupo de WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => 'Usar Bot de Chat de Grupo de WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      '¿Deseas habilitar el bot de chat de grupo de WhatsApp para este juego?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =>
      'El enlace del grupo de WhatsApp es necesario para usar el bot.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty =>
      'El enlace del grupo de chat de WhatsApp es requerido.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'El enlace del grupo de chat de WhatsApp debe estar en el formato: https://chat.whatsapp.com/[código].';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'Agregar como Amigo';

  @override
  String get playerDetailsBottomSheetBlockText => 'Bloquear';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => 'Enviar Solicitud de Amistad';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      '¿Estás seguro de que quieres enviar una solicitud de amistad a este usuario?';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => 'Aceptar Solicitud de Amistad';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      '¿Estás seguro de que quieres aceptar esta solicitud de amistad?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'Bloquear Usuario';

  @override
  String get blockUserConfirmationBottomSheetMessage => '¿Estás seguro de que quieres bloquear a este usuario?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'Desbloquear Usuario';

  @override
  String get unblockUserConfirmationBottomSheetMessage => '¿Estás seguro de que quieres desbloquear a este usuario?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => 'Eliminar Cuenta';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      '¿Estás seguro de que quieres eliminar tu cuenta? Esta acción no se puede deshacer.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => '¡Error al recuperar los juegos!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => '¡No se encontraron juegos!';

  @override
  String get homeScreenNewGameButtonText => 'Crear juego';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText => 'Editar perfil';

  @override
  String get gameCreationScreenAppBarTitle => 'Crear juego';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nombre';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'i.e., Partido Semanal de Fútbol';

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
  String get loginSignupScreenLoginUsernameEmailInputLabel => 'Nombre de usuario o email';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Contraseña';

  @override
  String get loginSignupScreenLoginLoginButton => 'Iniciar sesión';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => '¿Olvidaste tu contraseña?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Nombre';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Nombre de usuario';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Contraseña';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Contraseña';

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
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => 'El país no puede estar vacío.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Los campos de contraseña no pueden estar vacíos.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Las contraseñas no coinciden.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'Olvidé mi contraseña';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Ingrese su dirección de correo electrónico y le enviaremos un enlace para restablecer su contraseña.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'Correo electrónico';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Por favor ingrese una dirección de correo electrónico válida.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menú';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Crear Juego';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Amigos';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Invitaciones';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Cerrar sesión';
}
