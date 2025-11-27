package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.NotNull;

/** Request DTO for setting use WhatsApp group chat bot flag. */
public class SetUseWhatsAppGroupChatBotRequestDto {
  /** Whether to use the WhatsApp group chat bot. */
  @NotNull(message = "{validation.game.use.whatsapp.group.chat.bot.required}")
  private Boolean useWhatsAppGroupChatBot;

  /** Default constructor. */
  public SetUseWhatsAppGroupChatBotRequestDto() {
  }

  /**
   * Getter for useWhatsAppGroupChatBot
   * 
   * @return whether to use the WhatsApp group chat bot
   */
  public Boolean getUseWhatsAppGroupChatBot() {
    return useWhatsAppGroupChatBot;
  }

  /**
   * Setter for useWhatsAppGroupChatBot
   * 
   * @param useWhatsAppGroupChatBot whether to use the WhatsApp group chat bot
   */
  public void setUseWhatsAppGroupChatBot(Boolean useWhatsAppGroupChatBot) {
    this.useWhatsAppGroupChatBot = useWhatsAppGroupChatBot;
  }
}

