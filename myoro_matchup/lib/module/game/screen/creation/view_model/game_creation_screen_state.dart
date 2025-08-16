part of 'game_creation_screen_view_model.dart';

/// State of [GameCreationScreenViewModel].
final class GameCreationScreenState extends ChangeNotifier {
  /// Banner field.
  String? _bannerPicture;

  /// [_bannerPicture] getter.
  String? get bannerPicture => _bannerPicture;

  /// [_bannerPicture] setter.
  set bannerPicture(String? bannerPicture) {
    if (_bannerPicture == bannerPicture) return;
    _bannerPicture = bannerPicture;
    notifyListeners();
  }

  /// Profile picture field.
  String? _profilePicture;

  /// [_profilePicture] getter.
  String? get profilePicture => _profilePicture;

  /// [_profilePicture] setter.
  set profilePicture(String? profilePicture) {
    if (_profilePicture == profilePicture) return;
    _profilePicture = profilePicture;
    notifyListeners();
  }

  /// Name field.
  String? _name;

  /// [_name] getter.
  String? get name => _name;

  /// [_name] setter.
  set name(String? name) {
    if (_name == name) return;
    _name = name;
    notifyListeners();
  }

  /// Sport field.
  SportsEnum? _sport;

  /// [_sport] getter.
  SportsEnum? get sport => _sport;

  /// [_sport] setter.
  set sport(SportsEnum? sport) {
    if (_sport == sport) return;
    _sport = sport;
    notifyListeners();
  }

  /// Competitiveness field.
  CompetitivenessEnum? _competitiveness;

  /// [_competitiveness] getter.
  CompetitivenessEnum? get competitiveness => _competitiveness;

  /// [_competitiveness] setter.
  set competitiveness(CompetitivenessEnum? competitiveness) {
    if (_competitiveness == competitiveness) return;
    _competitiveness = competitiveness;
    notifyListeners();
  }

  /// Player quantity field.
  int? _playerQuantity;

  /// [_playerQuantity] getter.
  int? get playerQuantity => _playerQuantity;

  /// [_playerQuantity] setter.
  set playerQuantity(int? playerQuantity) {
    if (_playerQuantity == playerQuantity) return;
    _playerQuantity = playerQuantity;
    notifyListeners();
  }

  /// One time price field.
  double? _oneTimePrice;

  /// [_oneTimePrice] getter.
  double? get oneTimePrice => _oneTimePrice;

  /// [_oneTimePrice] setter.
  set oneTimePrice(double? oneTimePrice) {
    if (_oneTimePrice == oneTimePrice) return;
    _oneTimePrice = oneTimePrice;
    notifyListeners();
  }

  /// Monthly price field.
  double? _monthlyPrice;

  /// [_monthlyPrice] getter.
  double? get monthlyPrice => _monthlyPrice;

  /// [_monthlyPrice] setter.
  set monthlyPrice(double? monthlyPrice) {
    if (_monthlyPrice == monthlyPrice) return;
    _monthlyPrice = monthlyPrice;
    notifyListeners();
  }

  /// Age range field.
  RangeValues? _minAgeRange;

  /// [_minAgeRange] getter.
  RangeValues? get minAgeRange {
    /// [_minAgeRange] setter.
    return _minAgeRange;
  }

  set minAgeRange(RangeValues? minAgeRange) {
    if (_minAgeRange == minAgeRange) return;
    _minAgeRange = minAgeRange;
    notifyListeners();
  }

  /// Visibility field.
  bool? _visibility;

  /// [_visibility] getter.
  bool? get visibility => _visibility;

  /// [_visibility] setter.
  set visibility(bool? visibility) {
    if (_visibility == visibility) return;
    _visibility = visibility;
    notifyListeners();
  }

  /// Location field.
  String? _location;

  /// [_location] getter.
  String? get location => _location;

  /// [_location] setter.
  set location(String? location) {
    if (_location == location) return;
    _location = location;
    notifyListeners();
  }

  /// Frequency, date, and time field.
  String? _frequencyDateTime;

  /// [_frequencyDateTime] getter.
  String? get frequencyDateTime => _frequencyDateTime;

  /// [_frequencyDateTime] setter.
  set frequencyDateTime(String? frequencyDateTime) {
    if (_frequencyDateTime == frequencyDateTime) return;
    _frequencyDateTime = frequencyDateTime;
    notifyListeners();
  }
}
