// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Impossible de se connecter au serveur, veuillez vérifier votre connexion Internet et réessayer.';

  @override
  String get mmErrorFeedbackSubtitle => 'Veuillez vérifier votre connexion et réessayer.';

  @override
  String get mmErrorFeedbackActionButtonText => 'Réessayer';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Actualiser';

  @override
  String get mmSuccessFeedbackSubtitle => 'Opération terminée avec succès !';

  @override
  String get mmSuccessFeedbackActionButtonText => 'Terminé';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Lieu';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'Ville';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'État';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Pays';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continent';

  @override
  String mmLocationInputItemCityCountryText(String city, String emoji, String countryName) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Privé';

  @override
  String get visibilityEnumPublicLabel => 'Public';

  @override
  String get frequencyEnumWeeklyLabel => 'Hebdomadaire';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Bihebdomadaire';

  @override
  String get frequencyEnumMonthlyLabel => 'Mensuel';

  @override
  String get frequencyEnumYearlyLabel => 'Annuel';

  @override
  String get sportsEnumFootballLabel => 'Football';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Volley-ball';

  @override
  String get invitationStatusEnumPendingLabel => 'En attente';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Accepté';

  @override
  String get invitationStatusEnumRejectedLabel => 'Rejeté';

  @override
  String get invitationStatusEnumExpiredLabel => 'Expiré';

  @override
  String get invitationStatusEnumCancelledLabel => 'Annulé';

  @override
  String get gameDetailsScreenBodyErrorStateTitle => 'Échec de la récupération des détails du jeu.';

  @override
  String get invitationListingScreenAppBarTitle => 'Invitations';

  @override
  String get invitationListingScreenBodyErrorStateTitle => 'Échec de la récupération des invitations.';

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Aucune invitation trouvée.';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Message';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Statut';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Accepter';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Refuser';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Joueurs';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Inviter un joueur';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Inviter un joueur';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputPlaceholder => 'Rechercher des utilisateurs...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Message';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Annuler';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Envoyer';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Classements';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Fréquence';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Jour Principal';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Horaires Principaux';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Jour Bihebdomadaire';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Horaires Bihebdomadaires';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Prix Membre';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Prix Invité';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Tranche d\'âge';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge à $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Visibilité';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Erreur lors de la récupération des jeux.';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Aucun jeu trouvé.';

  @override
  String get homeScreenNewGameButtonText => 'Créer un jeu';

  @override
  String get homeScreenBodyUserSportStatsErrorStateTitle =>
      'Échec de la récupération des statistiques sportives de l\'utilisateur.';

  @override
  String get homeScreenBodyUserGameListingErrorStateTitle => 'Échec de la récupération de vos jeux.';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'Vous n\'avez pas encore rejoint de jeux.';

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
  String get gameCreationScreenAppBarTitle => 'Créer un jeu';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nom';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'Nom';

  @override
  String get gameCreationScreenNameScreenNameInputPlaceholder => 'ex. : Match de football hebdomadaire';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'Le nom ne peut pas être vide.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'Le nom doit contenir au moins 3 caractères.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Fréquence et Date/Heure';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Fréquence';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Début';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Fin';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'L\'heure de début ne peut pas être vide.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'L\'heure de fin ne peut pas être vide.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Prix';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Membre : ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Invité : ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Tranche d\'âge';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Lieu';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Veuillez sélectionner un lieu.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Visibilité et Image';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Photo de profil';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Bannière';

  @override
  String get gameCreationScreenButtonPreviousText => 'Précédent';

  @override
  String get gameCreationScreenButtonNextText => 'Suivant';

  @override
  String get gameCreationScreenButtonFinishText => 'Terminer';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Jeu créé avec succès !';

  @override
  String get loginSignupScreenLoginUsernameEmailInputPlaceholder => 'Nom d\'utilisateur/e-mail';

  @override
  String get loginSignupScreenLoginPasswordInputPlaceholder => 'Mot de passe';

  @override
  String get loginSignupScreenLoginLoginButton => 'Se connecter';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Mot de passe oublié ?';

  @override
  String get loginSignupScreenSignupNameInputPlaceholder => 'Nom';

  @override
  String get loginSignupScreenSignupUsernameInputPlaceholder => 'Nom d\'utilisateur';

  @override
  String get loginSignupScreenSignupEmailInputPlaceholder => 'E-mail';

  @override
  String get loginSignupScreenSignupPasswordInputPlaceholder => 'Mot de passe';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputPlaceholder => 'Mot de passe';

  @override
  String get loginSignupScreenSignupSignupButton => 'S\'inscrire';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'Nouveau sur MyoroMatchup ? Inscrivez-vous.';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Déjà inscrit ? Connectez-vous.';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Le nom d\'utilisateur/e-mail ne peut pas être vide.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Le mot de passe ne peut pas être vide.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'Le nom ne peut pas être vide.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'Le nom d\'utilisateur ne peut pas être vide.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'L\'e-mail ne peut pas être vide.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Les champs de mot de passe ne peuvent pas être vides.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'Les mots de passe ne correspondent pas.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Créer un jeu';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Amis';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Invitations';
}
