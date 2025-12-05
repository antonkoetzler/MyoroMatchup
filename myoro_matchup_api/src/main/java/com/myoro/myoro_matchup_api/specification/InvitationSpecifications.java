package com.myoro.myoro_matchup_api.specification;

import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.model.InvitationModel;
import com.myoro.myoro_matchup_api.util.SpecificationHelper;
import jakarta.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.data.jpa.domain.Specification;

/**
 * Specifications for filtering InvitationModel entities.
 *
 * <p>Provides reusable query specifications for invitation filtering.
 */
public class InvitationSpecifications {

  /**
   * Creates a specification to filter invitations by user (as invitee or inviter).
   *
   * @param userId the user ID
   * @return specification for user filtering
   */
  public static Specification<InvitationModel> forUser(Long userId) {
    return (root, query, criteriaBuilder) -> {
      return criteriaBuilder.or(
          criteriaBuilder.equal(root.get("invitee").get("id"), userId),
          criteriaBuilder.equal(root.get("inviter").get("id"), userId));
    };
  }

  /**
   * Creates a specification to filter invitations by status.
   *
   * @param status the status to filter by (null to skip)
   * @return specification for status filtering
   */
  public static Specification<InvitationModel> byStatus(InvitationStatusEnum status) {
    return SpecificationHelper.equalEnum(status, "status");
  }

  /**
   * Creates a specification to search invitations across multiple fields.
   *
   * <p>Searches in: - Game name - Inviter name - Status (as string) - Message - Created date
   * (formatted) - Expires date (formatted, if not null) - Responded date (formatted, if not null)
   *
   * @param searchQuery the search query (null or empty to skip)
   * @return specification for multi-field search
   */
  public static Specification<InvitationModel> search(String searchQuery) {
    if (searchQuery == null || searchQuery.trim().isEmpty()) {
      return null;
    }

    final String query = searchQuery.trim();
    final String searchTerm = "%" + query.toLowerCase() + "%";

    return (root, criteriaQuery, criteriaBuilder) -> {
      List<Predicate> predicates = new ArrayList<>();

      // Search in game name
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("game").get("name").as(String.class)), searchTerm));

      // Search in inviter name
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("inviter").get("name").as(String.class)), searchTerm));

      // Search in status (convert enum to string)
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("status").as(String.class)), searchTerm));

      // Search in message (handle null)
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(
                  criteriaBuilder.coalesce(root.get("message").as(String.class), "")),
              searchTerm));

      // Search in created date
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.function(
                  "TO_CHAR",
                  String.class,
                  root.get("createdAt"),
                  criteriaBuilder.literal("YYYY-MM-DD HH24:MI:SS")),
              "%" + query + "%"));

      // Search in expires date (if not null)
      predicates.add(
          criteriaBuilder.and(
              criteriaBuilder.isNotNull(root.get("expiresAt")),
              criteriaBuilder.like(
                  criteriaBuilder.function(
                      "TO_CHAR",
                      String.class,
                      root.get("expiresAt"),
                      criteriaBuilder.literal("YYYY-MM-DD HH24:MI:SS")),
                  "%" + query + "%")));

      // Search in responded date (if not null)
      predicates.add(
          criteriaBuilder.and(
              criteriaBuilder.isNotNull(root.get("respondedAt")),
              criteriaBuilder.like(
                  criteriaBuilder.function(
                      "TO_CHAR",
                      String.class,
                      root.get("respondedAt"),
                      criteriaBuilder.literal("YYYY-MM-DD HH24:MI:SS")),
                  "%" + query + "%")));

      return criteriaBuilder.or(predicates.toArray(new Predicate[0]));
    };
  }

  /**
   * Combines specifications for filtering invitations.
   *
   * @param userId the user ID (required)
   * @param searchQuery optional search query
   * @param status optional status filter
   * @return combined specification
   */
  public static Specification<InvitationModel> filter(
      Long userId, String searchQuery, InvitationStatusEnum status) {
    return SpecificationHelper.and(forUser(userId), search(searchQuery), byStatus(status));
  }
}
