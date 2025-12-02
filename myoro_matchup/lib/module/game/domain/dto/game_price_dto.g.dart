// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamePriceDto _$GamePriceDtoFromJson(Map<String, dynamic> json) => GamePriceDto(
  memberPrice: (json['memberPrice'] as num).toDouble(),
  dropInPrice: (json['dropInPrice'] as num).toDouble(),
);

Map<String, dynamic> _$GamePriceDtoToJson(GamePriceDto instance) =>
    <String, dynamic>{
      'memberPrice': instance.memberPrice,
      'dropInPrice': instance.dropInPrice,
    };

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GamePriceDto] once the code is generated.
///
/// ```dart
/// class GamePriceDto with _$GamePriceDtoMixin {}
/// ```
mixin _$GamePriceDtoMixin {
  GamePriceDto get self => this as GamePriceDto;

  GamePriceDto copyWith({double? memberPrice, double? dropInPrice}) {
    return GamePriceDto(
      memberPrice: memberPrice ?? self.memberPrice,
      dropInPrice: dropInPrice ?? self.dropInPrice,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GamePriceDto &&
        other.runtimeType == runtimeType &&
        other.memberPrice == self.memberPrice &&
        other.dropInPrice == self.dropInPrice;
  }

  @override
  int get hashCode {
    return Object.hash(self.memberPrice, self.dropInPrice);
  }

  @override
  String toString() =>
      'GamePriceDto(\n'
      '  memberPrice: ${self.memberPrice},\n'
      '  dropInPrice: ${self.dropInPrice},\n'
      ');';
}
