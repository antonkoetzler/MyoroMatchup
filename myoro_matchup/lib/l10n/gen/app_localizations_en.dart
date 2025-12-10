// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get httpClientConnectionExceptionMessage =>
      'Couldn\'t connect to server, please check your internet and try again.';

  @override
  String get mmEmptyFeedbackActionButtonText => 'Refresh';

  @override
  String get mmLocationInputTypeEnumPlaceLabel => 'Place';

  @override
  String get mmLocationInputTypeEnumCityLabel => 'City';

  @override
  String get mmLocationInputTypeEnumStateLabel => 'State';

  @override
  String get mmLocationInputTypeEnumCountryLabel => 'Country';

  @override
  String get mmLocationInputTypeEnumContinentLabel => 'Continent';

  @override
  String mmLocationInputItemCityCountryText(
    String city,
    String emoji,
    String countryName,
  ) {
    return '$city, $emoji $countryName';
  }

  @override
  String get visibilityEnumPrivateLabel => 'Private';

  @override
  String get visibilityEnumPublicLabel => 'Public';

  @override
  String get frequencyEnumWeeklyLabel => 'Weekly';

  @override
  String get frequencyEnumBiWeeklyLabel => 'Bi-weekly';

  @override
  String get frequencyEnumMonthlyLabel => 'Monthly';

  @override
  String get frequencyEnumYearlyLabel => 'Yearly';

  @override
  String get sportsEnumFootballLabel => 'Football';

  @override
  String get sportsEnumFutsalLabel => 'Futsal';

  @override
  String get sportsEnumFut7Label => 'Fut7';

  @override
  String get sportsEnumVolleyballLabel => 'Volleyball';

  @override
  String get invitationStatusEnumPendingLabel => 'Pending';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Accepted';

  @override
  String get invitationStatusEnumRejectedLabel => 'Rejected';

  @override
  String get invitationStatusEnumExpiredLabel => 'Expired';

  @override
  String get invitationStatusEnumCancelledLabel => 'Cancelled';

  @override
  String get friendRequestStatusEnumPendingLabel => 'Pending';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Accepted';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Rejected';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle =>
      'Failed to retrieve game details!';

  @override
  String get invitationListingScreenAppBarTitle => 'Invitations';

  @override
  String get friendListingScreenAppBarTitle => 'Friends';

  @override
  String get userDetailsScreenAppBarTitle => 'User Details';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {
      'true': 'Subscribed',
      'other': 'Unsubscribed',
    });
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {
      'true': 'Subscribed',
      'other': 'Unsubscribed',
    });
    return 'Subscription status: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Subscribe';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle =>
      'Change Profile Visibility';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'Are you sure you want to change your profile visibility?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Location';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'Country';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'State/Province';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'City';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle =>
      'Edit Location';

  @override
  String userLocationResponseDtoFormattedLocation(
    String city,
    String state,
    String country,
  ) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle =>
      'No invitations found!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'No friends found!';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel =>
      'Message';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Status';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText =>
      'Accept';

  @override
  String
  get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel =>
      'Status';

  @override
  String
  get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText =>
      'Decline';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText =>
      'Players';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText =>
      'Invite Player';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Invite Player';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(
    String username,
    String name,
  ) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel =>
      'Search users...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel =>
      'Message';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText =>
      'Cancel';

  @override
  String
  get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText =>
      'Send';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText =>
      'Rankings';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel =>
      'Frequency';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel =>
      'Primary Day';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Primary Times';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel =>
      'Bi-weekly Day';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Bi-weekly Times';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel =>
      'Member Price';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel =>
      'Drop-in Price';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel =>
      'Age Range';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(
    int minAge,
    int maxAge,
  ) {
    return '$minAge to $maxAge';
  }

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel =>
      'Visibility';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'WhatsApp Group Chat Link';

  @override
  String
  get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'Use WhatsApp Group Chat Bot';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle =>
      'Use WhatsApp Group Chat Bot';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      'Do you want to enable the WhatsApp group chat bot for this game?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =>
      'WhatsApp group link is required to use the bot.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty =>
      'WhatsApp group chat link is required.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'WhatsApp group chat link must be in the format: https://chat.whatsapp.com/[code].';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'Add as Friend';

  @override
  String get playerDetailsBottomSheetBlockText => 'Block';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle =>
      'Send Friend Request';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'Are you sure you want to send a friend request to this user?';

  @override
  String
  get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle =>
      'Accept Friend Request';

  @override
  String
  get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'Are you sure you want to accept this friend request?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'Block User';

  @override
  String get blockUserConfirmationBottomSheetMessage =>
      'Are you sure you want to block this user?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'Unblock User';

  @override
  String get unblockUserConfirmationBottomSheetMessage =>
      'Are you sure you want to unblock this user?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle =>
      'Delete Account';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'Are you sure you want to delete your account? This action cannot be undone.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Error retrieving games!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'No games found!';

  @override
  String get homeScreenNewGameButtonText => 'Create game';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle =>
      'You haven\'t joined any games yet!';

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
  String get homeScreenBodyUserSportStatsEditProfileButtonText =>
      'Edit profile';

  @override
  String get gameCreationScreenAppBarTitle => 'Create game';

  @override
  String get gameCreationScreenNameScreenTitle => 'Name';

  @override
  String get gameCreationScreenNameScreenNameInputLabel =>
      'i.e., Weekly Soccer Game';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage =>
      'Name cannot be empty.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage =>
      'Name must be at least 3 characters long.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Sport';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle =>
      'Frequency & Date/Time';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel =>
      'Frequency';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel =>
      'Start';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'End';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'Start time cannot be empty.';

  @override
  String
  get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
      'End time cannot be empty.';

  @override
  String get gameCreationScreenPriceScreenTitle => 'Price';

  @override
  String get gameCreationScreenPriceScreenMemberLabel => 'Member: ';

  @override
  String get gameCreationScreenPriceScreenDropInLabel => 'Drop-in: ';

  @override
  String get gameCreationScreenAgeRangeScreenTitle => 'Age Range';

  @override
  String get gameCreationScreenLocationScreenTitle => 'Location';

  @override
  String get gameCreationScreenLocationScreenLocationValidationMessage =>
      'Please select a location.';

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
      'Visibility & Image';

  @override
  String
  get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle =>
      'Profile Picture';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle =>
      'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Previous';

  @override
  String get gameCreationScreenButtonNextText => 'Next';

  @override
  String get gameCreationScreenButtonFinishText => 'Finish';

  @override
  String get gameCreationScreenGameCreationSuccessMessage =>
      'Game created successfully!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputLabel => 'Username/email';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Password';

  @override
  String get loginSignupScreenLoginLoginButton => 'Login';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Forgot password?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Name';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Username';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Password';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Password';

  @override
  String get loginSignupScreenSignupSignupButton => 'Signup';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText =>
      'New to MyoroMatchup? Signup!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText =>
      'New to MyoroMatchup? Login!';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage =>
      'Username/email cannot be empty.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage =>
      'Password cannot be empty.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage =>
      'Name cannot be empty.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage =>
      'Username cannot be empty.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage =>
      'Email cannot be empty.';

  @override
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage =>
      'Country cannot be empty.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage =>
      'Password fields cannot be empty.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage =>
      'Passwords do not match.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'Forgot Password';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Enter your email address and we\'ll send you a link to reset your password.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'Email';

  @override
  String
  get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Please enter a valid email address.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Create Game';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Friends';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Invitations';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Logout';
}
