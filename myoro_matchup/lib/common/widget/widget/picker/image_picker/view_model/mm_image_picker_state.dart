part of 'mm_image_picker_view_model.dart';

/// State of [MmImagePickerViewModel].
final class MmImagePickerState {
  MmImagePickerState(this._configuration) : _selectedImageNotifier = ValueNotifier(_configuration.initialImage);

  /// Configuration.
  final MmImagePickerConfiguration _configuration;

  /// [_configuration] getter.
  MmImagePickerConfiguration get configuration => _configuration;

  /// [ValueNotifier] of the selected image.
  final ValueNotifier<String?> _selectedImageNotifier;

  /// [_selectedImageNotifier] getter.
  ValueNotifier<String?> get selectedImageNotifier => _selectedImageNotifier;

  /// Dispose function.
  void dispose() {
    _selectedImageNotifier.dispose();
  }
}
