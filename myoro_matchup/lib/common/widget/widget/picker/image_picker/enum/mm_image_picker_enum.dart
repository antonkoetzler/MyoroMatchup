/// Enum encapsulating the different types of [MmImagePicker] designs.
enum MmImagePickerEnum {
  /// Profile picture.
  profilePicture,

  /// Banner.
  banner;

  bool get isProfilePicture => this == profilePicture;
  bool get isBanner => this == banner;
}
