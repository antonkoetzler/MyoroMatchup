package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.util.ValidationConstants;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

/** Request DTO for setting WhatsApp group chat link. */
public class SetWhatsAppGroupChatLinkRequestDto {
  /** WhatsApp group chat invite link. */
  @NotBlank(message = "{validation.game.whatsapp.group.chat.link.required}")
  @Pattern(regexp = ValidationConstants.WHATSAPP_GROUP_CHAT_LINK_PATTERN, message = "{validation.game.whatsapp.group.chat.link.invalid}")
  private String whatsAppGroupChatLink;

  /** Default constructor. */
  public SetWhatsAppGroupChatLinkRequestDto() {
  }

  /**
   * Getter for whatsAppGroupChatLink
   * 
   * @return the WhatsApp group chat invite link
   */
  public String getWhatsAppGroupChatLink() {
    return whatsAppGroupChatLink;
  }

  /**
   * Setter for whatsAppGroupChatLink
   * 
   * @param whatsAppGroupChatLink the WhatsApp group chat invite link
   */
  public void setWhatsAppGroupChatLink(String whatsAppGroupChatLink) {
    this.whatsAppGroupChatLink = whatsAppGroupChatLink;
  }
}
