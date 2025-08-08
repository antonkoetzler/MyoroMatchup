import 'package:flutter/foundation.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'mm_image_picker_state.dart';

/// View model of [MmImagePicker].
final class MmImagePickerViewModel {
  MmImagePickerViewModel(MmImagePickerConfiguration configuration) : _state = MmImagePickerState(configuration);

  /// State.
  final MmImagePickerState _state;

  /// [_state] getter.
  MmImagePickerState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
