part of '../image/mm_images.dart';

/// SVG images.
final class SvgImages {
  /// Images path.
  static const _svgsPath = '${MmImages._imagesPath}/svg';

  /// Default constructor.
  const SvgImages();

  /// Logo.
  final logo = '$_svgsPath/logo.svg';

  /// All SVGs.
  List<String> get all {
    return [logo];
  }

  /// Random SVG.
  String get random {
    return all[faker.randomGenerator.integer(all.length - 1)];
  }
}
