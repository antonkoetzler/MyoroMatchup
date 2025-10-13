import 'dart:async';

/// Abstract class representing a CRUD repository.
abstract class MmCrudRepository<T> {
  /// Create function.
  ///
  /// Returns the ID of the created [T].
  FutureOr<int> create(T model);

  /// Get function.
  FutureOr<T>? get(int id);

  /// Select function.
  FutureOr<Set<T>> select();

  /// Update function.
  ///
  /// Returns if the operation was successful or not.
  FutureOr<void> update(int id, T data);

  /// Delete function.
  FutureOr<void> delete(int id);
}
