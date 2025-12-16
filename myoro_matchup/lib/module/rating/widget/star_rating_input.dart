import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// 10-star rating input widget.
///
/// TODO: Add theme extension for styling.
final class StarRatingInput extends StatelessWidget {
  /// Default constructor.
  const StarRatingInput({
    super.key,
    required this.value,
    required this.onChanged,
    this.maxStars = 10,
    this.starSize = 32,
    this.enabled = true,
  });

  /// Current rating value (1-10).
  final int value;

  /// Callback when rating changes.
  final ValueChanged<int> onChanged;

  /// Maximum number of stars.
  final int maxStars;

  /// Size of each star.
  final double starSize;

  /// Whether the input is enabled.
  final bool enabled;

  @override
  Widget build(context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxStars, (index) {
        final starIndex = index + 1;
        final isFilled = starIndex <= value;

        return GestureDetector(
          onTap: enabled ? () => onChanged(starIndex) : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kMyoroMultiplier / 4),
            child: Icon(
              isFilled ? Icons.star : Icons.star_border,
              size: starSize,
              color: isFilled ? colorScheme.primary : colorScheme.onSurface.withValues(alpha: 0.3),
            ),
          ),
        );
      }),
    );
  }
}
