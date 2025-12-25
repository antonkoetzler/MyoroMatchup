package com.myoro.myoro_matchup_api.data;

import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.InvitationModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import java.time.LocalDateTime;
import net.datafaker.Faker;

/** Builder for creating InvitationModel instances. */
public class InvitationModelBuilder {
  private GameModel game;
  private UserModel inviter;
  private UserModel invitee;
  private InvitationStatusEnum status;
  private String message;
  private LocalDateTime createdAt;
  private LocalDateTime expiresAt;
  private LocalDateTime respondedAt;
  private final Faker faker;

  /** Creates a new builder with faker. */
  public InvitationModelBuilder(Faker faker) {
    this.faker = faker;
  }

  /** Sets the game. */
  public InvitationModelBuilder withGame(GameModel game) {
    this.game = game;
    return this;
  }

  /** Sets the inviter. */
  public InvitationModelBuilder withInviter(UserModel inviter) {
    this.inviter = inviter;
    return this;
  }

  /** Sets the invitee. */
  public InvitationModelBuilder withInvitee(UserModel invitee) {
    this.invitee = invitee;
    return this;
  }

  /** Sets the status. */
  public InvitationModelBuilder withStatus(InvitationStatusEnum status) {
    this.status = status;
    return this;
  }

  /** Sets the message. */
  public InvitationModelBuilder withMessage(String message) {
    this.message = message;
    return this;
  }

  /** Sets the created at timestamp. */
  public InvitationModelBuilder withCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
    return this;
  }

  /** Sets the expires at timestamp. */
  public InvitationModelBuilder withExpiresAt(LocalDateTime expiresAt) {
    this.expiresAt = expiresAt;
    return this;
  }

  /** Sets the responded at timestamp. */
  public InvitationModelBuilder withRespondedAt(LocalDateTime respondedAt) {
    this.respondedAt = respondedAt;
    return this;
  }

  /** Generates random message. */
  public InvitationModelBuilder withRandomMessage() {
    this.message = faker.lorem().sentence();
    return this;
  }

  /** Builds the InvitationModel instance. */
  public InvitationModel build() {
    InvitationModel invitation = new InvitationModel();
    if (game != null) {
      invitation.setGame(game);
    }
    if (inviter != null) {
      invitation.setInviter(inviter);
    }
    if (invitee != null) {
      invitation.setInvitee(invitee);
    }
    if (status != null) {
      invitation.setStatus(status);
    }
    if (message != null) {
      invitation.setMessage(message);
    }
    if (createdAt != null) {
      invitation.setCreatedAt(createdAt);
    } else {
      invitation.setCreatedAt(LocalDateTime.now());
    }
    if (expiresAt != null) {
      invitation.setExpiresAt(expiresAt);
    }
    if (respondedAt != null) {
      invitation.setRespondedAt(respondedAt);
    } else if (status == InvitationStatusEnum.ACCEPTED || status == InvitationStatusEnum.REJECTED) {
      invitation.setRespondedAt(LocalDateTime.now());
    }
    return invitation;
  }
}
