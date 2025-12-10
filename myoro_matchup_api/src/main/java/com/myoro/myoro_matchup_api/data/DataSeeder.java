package com.myoro.myoro_matchup_api.data;

import com.myoro.myoro_matchup_api.enums.GameFrequencyEnum;
import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.enums.VisibilityEnum;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;
import com.myoro.myoro_matchup_api.repository.InvitationRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import net.datafaker.Faker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

/** Data seeder for populating the database with mock data. */
@Component
public class DataSeeder implements CommandLineRunner {
  /** User repository. */
  @Autowired private UserRepository userRepository;

  /** Game repository. */
  @Autowired private GameRepository gameRepository;

  /** Invitation repository. */
  @Autowired private InvitationRepository invitationRepository;

  /** Password encoder. */
  @Autowired private PasswordEncoder passwordEncoder;

  /** Faker instance for generating random data. */
  private final Faker faker = new Faker();

  /** Random instance. */
  private final Random random = new Random();

  @Override
  @SuppressWarnings("null")
  public void run(String... args) throws Exception {
    // Check if data already exists
    if (userRepository.count() > 0) {
      return; // Data already seeded
    }

    // Create fixed debug users
    UserModelBuilder userBuilder = new UserModelBuilder(faker, passwordEncoder);
    UserModel user1 =
        userBuilder
            .withUsername("user1")
            .withName("User One")
            .withEmail("user1@example.com")
            .withPassword("password123")
            .withRandomLocation()
            .build();
    UserModel user2 =
        userBuilder
            .withUsername("user2")
            .withName("User Two")
            .withEmail("user2@example.com")
            .withPassword("password123")
            .withRandomLocation()
            .build();

    user1 = userRepository.save(user1);
    user2 = userRepository.save(user2);

    // Create games with faker data
    GameModelBuilder gameBuilder = new GameModelBuilder(faker, random);
    List<GameModel> games = new ArrayList<>();
    for (int i = 0; i < 5; i++) {
      UserModel owner = random.nextBoolean() ? user1 : user2;
      SportsEnum sport = SportsEnum.values()[random.nextInt(SportsEnum.values().length)];
      GameFrequencyEnum frequency =
          GameFrequencyEnum.values()[random.nextInt(GameFrequencyEnum.values().length)];
      VisibilityEnum visibility =
          random.nextBoolean() ? VisibilityEnum.PUBLIC : VisibilityEnum.PRIVATE;

      GameModel game =
          gameBuilder
              .withRandomName()
              .withSport(sport)
              .withOwner(owner)
              .withFrequency(frequency)
              .withVisibility(visibility)
              .withRandomDayAndTime()
              .withRandomPrice()
              .withRandomAgeRange()
              .withRandomLocation()
              .build();

      // Randomly add WhatsApp group chat data (70% chance)
      if (random.nextDouble() < 0.7) {
        game.setWhatsAppGroupChatLink("https://chat.whatsapp.com/" + generateRandomWhatsAppCode());
        game.setUseWhatsAppGroupChatBot(random.nextBoolean());
      }

      games.add(gameRepository.save(game));
    }

    // Add random players to games
    for (GameModel game : games) {
      // 80% chance to add players to a game
      if (random.nextDouble() < 0.8) {
        List<UserModel> players = new ArrayList<>();
        UserModel otherUser = game.getOwner().equals(user1) ? user2 : user1;

        // Always add the other user as a player
        players.add(otherUser);

        // 30% chance to also add the owner as a player (for games with multiple
        // players)
        if (random.nextDouble() < 0.3) {
          players.add(game.getOwner());
        }

        game.setPlayers(players);
        gameRepository.save(game);
      }
    }

    // Create invitations with faker data
    Set<String> usedCombinations = new HashSet<>();
    int attempts = 0;
    int maxAttempts = 100;
    int created = 0;
    int targetInvitations = 8;

    while (created < targetInvitations && attempts < maxAttempts) {
      GameModel game = games.get(random.nextInt(games.size()));
      UserModel inviter = random.nextBoolean() ? user1 : user2;
      UserModel invitee = inviter.equals(user1) ? user2 : user1;
      InvitationStatusEnum status =
          InvitationStatusEnum.values()[random.nextInt(InvitationStatusEnum.values().length)];

      // Check unique constraint: (game_id, invitee_id, status) must be unique
      String combination = game.getId() + "_" + invitee.getId() + "_" + status.ordinal();
      if (usedCombinations.contains(combination)) {
        attempts++;
        continue;
      }

      usedCombinations.add(combination);
      LocalDateTime expiresAt = LocalDateTime.now().plusDays(random.nextInt(14) + 1);
      LocalDateTime respondedAt =
          (status == InvitationStatusEnum.ACCEPTED || status == InvitationStatusEnum.REJECTED)
              ? LocalDateTime.now().minusDays(random.nextInt(5))
              : null;

      InvitationModelBuilder builder =
          new InvitationModelBuilder(faker)
              .withGame(game)
              .withInviter(inviter)
              .withInvitee(invitee)
              .withStatus(status)
              .withExpiresAt(expiresAt);
      if (random.nextBoolean()) {
        builder.withRandomMessage();
      }
      if (respondedAt != null) {
        builder.withRespondedAt(respondedAt);
      }
      invitationRepository.save(builder.build());
      created++;
      attempts = 0; // Reset attempts on success
    }
  }

  /** Generates a random WhatsApp invite code (22 characters, alphanumeric). */
  private String generateRandomWhatsAppCode() {
    String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    StringBuilder code = new StringBuilder();
    for (int i = 0; i < 22; i++) {
      code.append(chars.charAt(random.nextInt(chars.length())));
    }
    return code.toString();
  }
}
