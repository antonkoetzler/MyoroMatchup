import 'package:faker/faker.dart';

part '../_image/cat_images.dart';
part '../_image/svg_images.dart';
part '../_image/test_banner_images.dart';

/// Images of Myoro Matchup.
final class MmImages {
  /// Images path.
  static const _imagesPath = 'assets/images';

  /// SVGs.
  static const svgs = SvgImages();

  /// Cat pictures.
  static const cats = CatImages();

  /// Test banners.
  static const testBanners = TestBannerImages();

  /// All images.
  static final all = [...svgs.all, ...cats.all, ...testBanners.all];

  /// Random image.
  static String get random {
    return all[faker.randomGenerator.integer(all.length - 1)];
  }
}
