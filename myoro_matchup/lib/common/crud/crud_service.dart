import 'dart:async';

/// Abstract class representing a CRUD service.
abstract class CrudService<T> {
  /// Create function.
  ///
  /// Returns the ID of the created [T].
  FutureOr<int> create(T model);

  /// Get function.
  FutureOr<T>? get(int id);

  /// Select function.
  FutureOr<Set<T>> select([Map<String, dynamic>? queryParameters]);

  /// Update function.
  ///
  /// Returns if the operation was successful or not.
  FutureOr<void> update(int id, T data);

  /// Delete function.
  FutureOr<void> delete(int id);
}
