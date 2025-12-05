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
  String get mmEmptyFeedbackActionButtonText => 'Atualizar';

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
  String get invitationStatusEnumPendingLabel => 'Pendente';

  @override
  String get invitationStatusEnumAcceptedLabel => 'Aceito';

  @override
  String get invitationStatusEnumRejectedLabel => 'Rejeitado';

  @override
  String get invitationStatusEnumExpiredLabel => 'Expirado';

  @override
  String get invitationStatusEnumCancelledLabel => 'Cancelado';

  @override
  String get friendRequestStatusEnumPendingLabel => 'Pendente';

  @override
  String get friendRequestStatusEnumAcceptedLabel => 'Aceito';

  @override
  String get friendRequestStatusEnumRejectedLabel => 'Rejeitado';

  @override
  String get gameDetailsScreenBodyErrorFeedbackTitle => 'Falha ao obter os detalhes do jogo!';

  @override
  String get invitationListingScreenAppBarTitle => 'Convites';

  @override
  String get friendListingScreenAppBarTitle => 'Amigos';

  @override
  String get userDetailsScreenAppBarTitle => 'Detalhes do usuário';

  @override
  String userDetailsScreenBodySubscriptionPlanText(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Assinado', 'other': 'Não assinado'});
    return '$_temp0';
  }

  @override
  String bodySubscriptionStatusLabel(String isSubscribed) {
    String _temp0 = intl.Intl.selectLogic(isSubscribed, {'true': 'Assinado', 'other': 'Não assinado'});
    return 'Status da assinatura: $_temp0';
  }

  @override
  String get bodySubscriptionStatusButtonText => 'Assinar';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetTitle => 'Alterar Visibilidade do Perfil';

  @override
  String get userDetailsScreenBodyProfileVisibilityBottomSheetMessage =>
      'Tem certeza de que deseja alterar a visibilidade do seu perfil?';

  @override
  String get userDetailsScreenBodyLocationLabel => 'Localização';

  @override
  String get userDetailsScreenBodyLocationCountryLabel => 'País';

  @override
  String get userDetailsScreenBodyLocationStateLabel => 'Estado/Província';

  @override
  String get userDetailsScreenBodyLocationCityLabel => 'Cidade';

  @override
  String get userDetailsScreenLocationEditingBottomSheetTitle => 'Editar Localização';

  @override
  String userLocationResponseDtoFormattedLocation(String city, String state, String country) {
    String _temp0 = intl.Intl.selectLogic(city, {'other': ', '});
    String _temp1 = intl.Intl.selectLogic(state, {'other': ', '});
    return '$city$_temp0$state$_temp1$country';
  }

  @override
  String get invitationListingScreenBodySuccessStateEmptyTitle => 'Nenhum convite encontrado!';

  @override
  String get friendListingScreenBodyEmptyTitle => 'Nenhum amigo encontrado!';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemMessageLabel => 'Mensagem';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateFiltersStatusFilterButtonLabel => 'Status';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemAcceptButtonText => 'Aceitar';

  @override
  String get friendListingScreenBodyNonEmptyStateFiltersStatusFilterButtonLabel => 'Status';

  @override
  String get invitationListingScreenBodySuccessStateNonEmptyStateItemDeclineButtonText => 'Recusar';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabText => 'Info';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabText => 'Jogadores';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewPlayersTabActionButtonText => 'Convidar Jogador';

  @override
  String get gameDetailsScreenInvitationBottomSheetTitleText => 'Convidar Jogador';

  @override
  String gameDetailsScreenInvitationBottomSheetUserSearchInputItemText(String username, String name) {
    return '$username ($name)';
  }

  @override
  String get gameDetailsScreenInvitationBottomSheetUserSearchInputLabel => 'Pesquisar usuários...';

  @override
  String get gameDetailsScreenInvitationBottomSheetMessageInputLabel => 'Mensagem';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsCancelButtonText => 'Cancelar';

  @override
  String get gameDetailsScreenInvitationBottomSheetActionButtonsSendButtonText => 'Enviar';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewRankingsTabText => 'Classificações';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionFrequencyLabel => 'Frequência';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryDayLabel => 'Dia Principal';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionPrimaryTimesLabel =>
      'Horários Principais';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyDayLabel => 'Dia Quinzenal';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabFrequencyDayTimeSectionBiWeeklyTimesLabel =>
      'Horários Quinzenais';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionMemberPriceLabel => 'Preço de Membro';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabPriceSectionDropInPriceLabel => 'Preço de Visitante';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionLabel => 'Faixa Etária';

  @override
  String gameDetailsScreenBodySuccessStateTabViewInfoTabAgeRangeSectionData(int minAge, int maxAge) {
    return '$minAge a $maxAge';
  }

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabVisibilitySectionLabel => 'Visibilidade';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabWhatsAppGroupChatLinkSectionText =>
      'Link do Grupo de Chat do WhatsApp';

  @override
  String get gameDetailsScreenBodySuccessStateTabViewInfoTabUseWhatsAppGroupChatBotSectionText =>
      'Usar Bot de Chat de Grupo do WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetTitle => 'Usar Bot de Chat de Grupo do WhatsApp';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotBottomSheetText =>
      'Deseja habilitar o bot de chat de grupo do WhatsApp para este jogo?';

  @override
  String get gameDetailsScreenUseWhatsAppGroupChatBotDisabledOnTapUpMessage =>
      'O link do grupo do WhatsApp é necessário para usar o bot.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationEmpty =>
      'O link do grupo de chat do WhatsApp é obrigatório.';

  @override
  String get gameDetailsScreenWhatsAppGroupChatLinkInputValidationInvalid =>
      'O link do grupo de chat do WhatsApp deve estar no formato: https://chat.whatsapp.com/[código].';

  @override
  String get playerDetailsBottomSheetAddAsFriendText => 'Adicionar como Amigo';

  @override
  String get playerDetailsBottomSheetBlockText => 'Bloquear';

  @override
  String get sendFriendRequestConfirmationBottomSheetTitle => 'Enviar Solicitação de Amizade';

  @override
  String get sendFriendRequestConfirmationBottomSheetMessage =>
      'Tem certeza de que deseja enviar uma solicitação de amizade para este usuário?';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetTitle => 'Aceitar Solicitação de Amizade';

  @override
  String get friendListingScreenAcceptFriendRequestConfirmationBottomSheetMessage =>
      'Tem certeza de que deseja aceitar esta solicitação de amizade?';

  @override
  String get blockUserConfirmationBottomSheetTitle => 'Bloquear Usuário';

  @override
  String get blockUserConfirmationBottomSheetMessage => 'Tem certeza de que deseja bloquear este usuário?';

  @override
  String get unblockUserConfirmationBottomSheetTitle => 'Desbloquear Usuário';

  @override
  String get unblockUserConfirmationBottomSheetMessage => 'Tem certeza de que deseja desbloquear este usuário?';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetTitle => 'Excluir Conta';

  @override
  String get userDetailsScreenDeleteAccountConfirmationBottomSheetMessage =>
      'Tem certeza de que deseja excluir sua conta? Esta ação não pode ser desfeita.';

  @override
  String get homeScreenAppBarTitle => 'Myoro Matchup';

  @override
  String get homeScreenBodyErrorStateTitle => 'Erro ao recuperar os jogos!';

  @override
  String get homeScreenBodySuccessStateEmptyTitle => 'Nenhum jogo encontrado!';

  @override
  String get homeScreenNewGameButtonText => 'Criar jogo';

  @override
  String get homeScreenBodyUserGameListingEmptyTitle => 'Você ainda não se juntou a nenhum jogo!';

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
  String get gameCreationScreenAppBarTitle => 'Criar jogo';

  @override
  String get gameCreationScreenNameScreenTitle => 'Nome';

  @override
  String get gameCreationScreenNameScreenNameInputLabel => 'i.e., Partida Semanal de Futebol';

  @override
  String get gameCreationScreenNameScreenNameInputEmptyMessage => 'O nome não pode estar vazio.';

  @override
  String get gameCreationScreenNameScreenNameInputLengthMessage => 'O nome deve ter pelo menos 3 caracteres.';

  @override
  String get gameCreationScreenSportScreenTitle => 'Esporte';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTitle => 'Frequência e Data/Hora';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenFrequencyFieldLabel => 'Frequência';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartLabel => 'Início';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndLabel => 'Fim';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldStartTimeEmptyMessage =>
      'O horário de início não pode estar vazio.';

  @override
  String get gameCreationScreenFrequencyDayTimeScreenTimeFieldEndTimeEmptyMessage =>
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
  String get gameCreationScreenLocationScreenLocationValidationMessage => 'Por favor, selecione uma localização.';

  @override
  String gameCreationScreenLocationScreenCurrencyNotificationText(
    String emoji,
    String locationName,
    String currencySymbol,
  ) {
    return '$emoji $locationName selected, $currencySymbol will be used as the currency.';
  }

  @override
  String get gameCreationScreenVisibilityAndImageScreenTitle => 'Visibilidade e Imagem';

  @override
  String get gameCreationScreenVisibilityAndImageScreenProfilePictureImageFieldTitle => 'Foto de Perfil';

  @override
  String get gameCreationScreenVisibilityAndImageScreenBannerImageFieldTitle => 'Banner';

  @override
  String get gameCreationScreenButtonPreviousText => 'Anterior';

  @override
  String get gameCreationScreenButtonNextText => 'Próximo';

  @override
  String get gameCreationScreenButtonFinishText => 'Finalizar';

  @override
  String get gameCreationScreenGameCreationSuccessMessage => 'Jogo criado com sucesso!';

  @override
  String get loginSignupScreenLoginUsernameEmailInputLabel => 'Nome de usuário ou email';

  @override
  String get loginSignupScreenLoginPasswordInputLabel => 'Senha';

  @override
  String get loginSignupScreenLoginLoginButton => 'Entrar';

  @override
  String get loginSignupScreenLoginForgotPasswordButton => 'Esqueceu sua senha?';

  @override
  String get loginSignupScreenSignupNameInputLabel => 'Nome';

  @override
  String get loginSignupScreenSignupUsernameInputLabel => 'Nome de usuário';

  @override
  String get loginSignupScreenSignupEmailInputLabel => 'Email';

  @override
  String get loginSignupScreenSignupPasswordInputLabel => 'Senha';

  @override
  String get loginSignupScreenSignupPasswordRepeatInputLabel => 'Senha';

  @override
  String get loginSignupScreenSignupSignupButton => 'Cadastrar-se';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonLoginText => 'Novo no MyoroMatchup? Cadastre-se!';

  @override
  String get loginSignupScreenFormTypeSwitcherButtonSignupText => 'Já tem cadastro? Entre';

  @override
  String get loginSignupScreenLoginFormUsernameEmailFieldEmptyMessage => 'Nome de usuário/e-mail não pode estar vazio.';

  @override
  String get loginSignupScreenLoginFormPasswordFieldEmptyMessage => 'Senha não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormNameFieldEmptyMessage => 'O nome não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormUsernameFieldEmptyMessage => 'O nome de usuário não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormEmailFieldEmptyMessage => 'O e-mail não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormLocationCountryFieldEmptyMessage => 'O país não pode estar vazio.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsEmptyMessage => 'Os campos de senha não podem estar vazios.';

  @override
  String get loginSignupScreenSignupFormPasswordFieldsMismatchMessage => 'As senhas não coincidem.';

  @override
  String get loginSignupScreenForgotPasswordDialogTitle => 'Esqueci minha senha';

  @override
  String get loginSignupScreenForgotPasswordDialogMessage =>
      'Digite seu endereço de e-mail e enviaremos um link para redefinir sua senha.';

  @override
  String get loginSignupScreenForgotPasswordDialogInputPlaceholder => 'E-mail';

  @override
  String get loginSignupScreenForgotPasswordDialogEmailInputInvalidValidationMessage =>
      'Por favor, insira um endereço de e-mail válido.';

  @override
  String get mmAppBarMenuDrawerTitle => 'Menu';

  @override
  String get mmAppBarMenuDrawerCreateGameText => 'Criar Jogo';

  @override
  String get mmAppBarMenuDrawerFriendListingText => 'Amigos';

  @override
  String get mmAppBarMenuDrawerInvitationListingText => 'Convites';

  @override
  String get mmAppBarMenuDrawerLogoutText => 'Sair';
}
