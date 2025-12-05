package com.myoro.myoro_matchup_api.specification;

import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;
import com.myoro.myoro_matchup_api.model.FriendRequestModel;
import com.myoro.myoro_matchup_api.util.SpecificationHelper;
import jakarta.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.data.jpa.domain.Specification;

/**
 * Specifications for filtering FriendRequestModel entities.
 *
 * <p>Provides reusable query specifications for friend request filtering.
 */
public class FriendSpecifications {

  /**
   * Creates a specification to filter friend requests by user (as requester or recipient).
   *
   * @param userId the user ID
   * @return specification for user filtering
   */
  public static Specification<FriendRequestModel> forUser(Long userId) {
    return (root, query, criteriaBuilder) -> {
      return criteriaBuilder.or(
          criteriaBuilder.equal(root.get("requester").get("id"), userId),
          criteriaBuilder.equal(root.get("recipient").get("id"), userId));
    };
  }

  /**
   * Creates a specification to filter friend requests by status.
   *
   * @param status the status to filter by (null to skip)
   * @return specification for status filtering
   */
  public static Specification<FriendRequestModel> byStatus(FriendRequestStatusEnum status) {
    return SpecificationHelper.equalEnum(status, "status");
  }

  /**
   * Creates a specification to search friend requests across multiple fields.
   *
   * <p>Searches in: - Requester name - Requester username - Recipient name - Recipient username -
   * Status (as string) - Created date (formatted) - Responded date (formatted, if not null)
   *
   * @param searchQuery the search query (null or empty to skip)
   * @return specification for multi-field search
   */
  public static Specification<FriendRequestModel> search(String searchQuery) {
    if (searchQuery == null || searchQuery.trim().isEmpty()) {
      return null;
    }

    final String query = searchQuery.trim();
    final String searchTerm = "%" + query.toLowerCase() + "%";

    return (root, criteriaQuery, criteriaBuilder) -> {
      List<Predicate> predicates = new ArrayList<>();

      // Search in requester name
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("requester").get("name").as(String.class)),
              searchTerm));

      // Search in requester username
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("requester").get("username").as(String.class)),
              searchTerm));

      // Search in recipient name
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("recipient").get("name").as(String.class)),
              searchTerm));

      // Search in recipient username
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("recipient").get("username").as(String.class)),
              searchTerm));

      // Search in status (convert enum to string)
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("status").as(String.class)), searchTerm));

      // Search in created date
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.function(
                  "TO_CHAR",
                  String.class,
                  root.get("createdAt"),
                  criteriaBuilder.literal("YYYY-MM-DD HH24:MI:SS")),
              "%" + query + "%"));

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
   * Creates a specification to filter only accepted friend requests (friends).
   *
   * @return specification for accepted friend requests
   */
  public static Specification<FriendRequestModel> onlyAccepted() {
    return byStatus(FriendRequestStatusEnum.ACCEPTED);
  }

  /**
   * Combines specifications for filtering friend requests.
   *
   * @param userId the user ID (required)
   * @param searchQuery optional search query
   * @param status optional status filter
   * @return combined specification
   */
  public static Specification<FriendRequestModel> filter(
      Long userId, String searchQuery, FriendRequestStatusEnum status) {
    return SpecificationHelper.and(forUser(userId), search(searchQuery), byStatus(status));
  }
}
