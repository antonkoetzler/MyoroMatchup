package com.myoro.myoro_matchup_api.specification;

import com.myoro.myoro_matchup_api.model.UserModel;
import jakarta.persistence.criteria.Predicate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.data.jpa.domain.Specification;

/**
 * Specifications for filtering UserModel entities.
 *
 * <p>Provides reusable query specifications for user filtering.
 */
public class UserSpecifications {

  /**
   * Creates a specification to search users across multiple fields.
   *
   * <p>Searches in: - Username - Name - Email
   *
   * @param searchQuery the search query (null or empty to skip)
   * @return specification for multi-field search
   */
  public static Specification<UserModel> search(String searchQuery) {
    if (searchQuery == null || searchQuery.trim().isEmpty()) {
      return null;
    }

    final String query = searchQuery.trim();
    final String searchTerm = "%" + query.toLowerCase() + "%";

    return (root, criteriaQuery, criteriaBuilder) -> {
      List<Predicate> predicates = new ArrayList<>();

      // Search in username
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("username").as(String.class)), searchTerm));

      // Search in name
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("name").as(String.class)), searchTerm));

      // Search in email
      predicates.add(
          criteriaBuilder.like(
              criteriaBuilder.lower(root.get("email").as(String.class)), searchTerm));

      return criteriaBuilder.or(predicates.toArray(new Predicate[0]));
    };
  }
}
