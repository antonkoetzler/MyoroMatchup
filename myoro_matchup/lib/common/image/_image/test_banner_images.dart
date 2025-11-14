part of '../image/mm_images.dart';

/// Test banner images.
final class TestBannerImages {
  /// Images path.
  static const _bannersPath = '${MmImages._imagesPath}/banners';

  /// Default constructor.
  const TestBannerImages();

  /// Banner 1.
  final banner1 = '$_bannersPath/banner1.png';

  /// Banner 2.
  final banner2 = '$_bannersPath/banner2.jpg';

  /// Banner 3.
  final banner3 = '$_bannersPath/banner3.jpg';

  /// Banner 4.
  final banner4 = '$_bannersPath/banner4.jpg';

  /// Banner 5.
  final banner5 = '$_bannersPath/banner5.png';

  /// All banners.
  List<String> get all {
    return [banner1, banner2, banner3, banner4, banner5];
  }

  /// Random banner.
  String get random {
    return all[faker.randomGenerator.integer(all.length - 1)];
  }
}
