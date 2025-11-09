part of 'mm_location_input_view_model.dart';

/// State of [MmLocationInputViewModel].
final class MmLocationInputState {
  /// Configuration.
  late LocationTypeEnum type;

  /// On changed.
  late MmLocationInputOnChanged onChanged;

  /// Local [FocusNode].
  FocusNode? focusNode;

  /// Validation.
  MmLocationInputValidation? validation;

  /// On field submitted.
  MmLocationInputOnFieldSubmitted? onFieldSubmitted;
}
