// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [Game] once the code is generated.
///
/// ```dart
/// class Game with _$GameMixin {}
/// ```
mixin _$GameMixin {
  Game get self => this as Game;

  Game copyWith({int? id}) {
    return Game(id: id ?? self.id);
  }

  @override
  bool operator ==(Object other) {
    return other is Game &&
        other.runtimeType == runtimeType &&
        other.id == self.id;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.id]);
  }

  @override
  String toString() =>
      'Game(\n'
      '  id: ${self.id},\n'
      ');';
}
