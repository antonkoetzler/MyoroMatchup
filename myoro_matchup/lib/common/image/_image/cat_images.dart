part of '../image/mm_images.dart';

/// Cat images.
final class CatImages {
  /// Images path.
  static const _catsPath = '${MmImages._imagesPath}/cats';

  /// Default constructor.
  const CatImages();

  /// Cat 1.
  final cat1 = '$_catsPath/cat1.jpg';

  /// Cat 2.
  final cat2 = '$_catsPath/cat2.jpg';

  /// Cat 3.
  final cat3 = '$_catsPath/cat3.jpg';

  /// Cat 4.
  final cat4 = '$_catsPath/cat4.jpg';

  /// Cat 5.
  final cat5 = '$_catsPath/cat5.jpg';

  /// Cat 6.
  final cat6 = '$_catsPath/cat6.jpg';

  /// Cat 7.
  final cat7 = '$_catsPath/cat7.jpg';

  /// Cat 8.
  final cat8 = '$_catsPath/cat8.jpg';

  /// Cat 9.
  final cat9 = '$_catsPath/cat9.jpg';

  /// Cat 10.
  final cat10 = '$_catsPath/cat10.jpg';

  /// All cats.
  List<String> get all {
    return [cat1, cat2, cat3, cat4, cat5, cat6, cat7, cat8, cat9, cat10];
  }

  /// Random cat.
  String get random {
    return all[faker.randomGenerator.integer(all.length - 1)];
  }
}
