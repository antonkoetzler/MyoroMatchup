package com.myoro.myoro_matchup_api.util;

import jakarta.persistence.criteria.Path;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import org.springframework.data.jpa.domain.Specification;

/**
 * Helper utility for building reusable JPA Specifications.
 *
 * <p>Provides common filtering patterns that can be reused across the codebase.
 */
public class SpecificationHelper {

  /**
   * Creates a specification that searches across multiple string fields with case-insensitive LIKE
   * matching.
   *
   * @param <T> the entity type
   * @param query the search query (null or empty to skip)
   * @param fields the field paths to search in (e.g., "name", "game.name")
   * @return specification for multi-field search
   */
  public static <T> Specification<T> searchInFields(String query, String... fields) {
    if (query == null || query.trim().isEmpty()) {
      return null;
    }

    final String searchTerm = "%" + query.toLowerCase() + "%";

    return (root, criteriaQuery, criteriaBuilder) -> {
      List<Predicate> predicates = new ArrayList<>();

      for (String field : fields) {
        @SuppressWarnings("unchecked")
        Path<String> fieldPath = (Path<String>) getFieldPath(root, field);
        predicates.add(
            criteriaBuilder.like(criteriaBuilder.lower(fieldPath.as(String.class)), searchTerm));
      }

      return criteriaBuilder.or(predicates.toArray(new Predicate[0]));
    };
  }

  /**
   * Creates a specification that searches in date fields by formatting them as strings.
   *
   * @param <T> the entity type
   * @param query the search query (null or empty to skip)
   * @param fields the date field paths to search in
   * @return specification for date field search
   */
  public static <T> Specification<T> searchInDateFields(String query, String... fields) {
    if (query == null || query.trim().isEmpty()) {
      return null;
    }

    final String searchTerm = "%" + query + "%";

    return (root, criteriaQuery, criteriaBuilder) -> {
      List<Predicate> predicates = new ArrayList<>();

      for (String field : fields) {
        @SuppressWarnings("unchecked")
        Path<LocalDateTime> datePath = (Path<LocalDateTime>) getFieldPath(root, field);
        // Format date as string and search
        predicates.add(
            criteriaBuilder.like(
                criteriaBuilder.function(
                    "TO_CHAR",
                    String.class,
                    datePath,
                    criteriaBuilder.literal("YYYY-MM-DD HH24:MI:SS")),
                searchTerm));
      }

      return criteriaBuilder.or(predicates.toArray(new Predicate[0]));
    };
  }

  /**
   * Creates a specification for exact enum matching.
   *
   * @param <T> the entity type
   * @param <E> the enum type
   * @param value the enum value (null to skip)
   * @param field the field path
   * @return specification for enum equality
   */
  public static <T, E extends Enum<E>> Specification<T> equalEnum(E value, String field) {
    if (value == null) {
      return null;
    }

    return (root, criteriaQuery, criteriaBuilder) -> {
      @SuppressWarnings("unchecked")
      Path<E> fieldPath = (Path<E>) getFieldPath(root, field);
      return criteriaBuilder.equal(fieldPath, value);
    };
  }

  /**
   * Creates a specification for exact value matching.
   *
   * @param <T> the entity type
   * @param value the value to match (null to skip)
   * @param field the field path
   * @return specification for equality
   */
  public static <T> Specification<T> equal(Object value, String field) {
    if (value == null) {
      return null;
    }

    return (root, criteriaQuery, criteriaBuilder) -> {
      Path<?> fieldPath = getFieldPath(root, field);
      return criteriaBuilder.equal(fieldPath, value);
    };
  }

  /**
   * Combines multiple specifications with AND logic.
   *
   * @param <T> the entity type
   * @param specifications the specifications to combine
   * @return combined specification
   */
  @SafeVarargs
  public static <T> Specification<T> and(Specification<T>... specifications) {
    Specification<T> result = null;

    for (Specification<T> spec : specifications) {
      if (spec != null) {
        if (result == null) {
          result = spec;
        } else {
          result = result.and(spec);
        }
      }
    }

    return result;
  }

  /**
   * Gets a field path from root, supporting nested paths (e.g., "game.name").
   *
   * @param <T> the root type
   * @param root the root path
   * @param field the field path (supports dots for nested paths)
   * @return the path to the field
   */
  private static <T> Path<?> getFieldPath(Root<T> root, String field) {
    String[] parts = field.split("\\.");
    Path<?> path = root;

    for (String part : parts) {
      path = path.get(part);
    }

    return path;
  }
}
