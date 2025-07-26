import 'dart:async';

/// Abstract class representing a CRUD service.
abstract class CrudService<T> {
  /// Create function.
  ///
  /// Returns the ID of the created [T].
  FutureOr<int> create(T model);

  /// Get function.
  FutureOr<T>? get({Map<String, dynamic>? queryParameters});

  /// Select function.
  FutureOr<Set<T>> select({Map<String, dynamic>? queryParameters});

  /// Update function.
  ///
  /// Returns if the operation was successful or not.
  FutureOr<void> update(T data);

  /// Delete function.
  FutureOr<void> delete(int id);
}
