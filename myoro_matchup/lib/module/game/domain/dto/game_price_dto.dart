import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'game_price_dto.g.dart';

/// DTO representing a game price.
@immutable
@myoroModel
@JsonSerializable()
final class GamePriceDto with _$GamePriceDtoMixin {
  /// Default constructor.
  const GamePriceDto({required this.memberPrice, required this.dropInPrice});

  /// Fake constructor.
  factory GamePriceDto.fake() {
    return GamePriceDto(
      memberPrice: faker.randomGenerator.decimal(min: 0, scale: 100),
      dropInPrice: faker.randomGenerator.decimal(min: 0, scale: 100),
    );
  }

  /// From JSON.
  factory GamePriceDto.fromJson(Map<String, dynamic> json) {
    return _$GamePriceDtoFromJson(json);
  }

  /// Monthly price.
  final double memberPrice;

  /// Drop in price.
  final double dropInPrice;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GamePriceDtoToJson(this);
  }
}
