// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_street_map_location_address_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenStreetMapLocationAddressResponseDto _$OpenStreetMapLocationAddressResponseDtoFromJson(Map<String, dynamic> json) =>
    OpenStreetMapLocationAddressResponseDto(
      city: json['city'] as String? ?? '',
      state: json['state'] as String? ?? '',
      country: $enumDecode(_$MyoroCountryEnumEnumMap, json['country_code']),
    );

Map<String, dynamic> _$OpenStreetMapLocationAddressResponseDtoToJson(
  OpenStreetMapLocationAddressResponseDto instance,
) => <String, dynamic>{
  'city': instance.city,
  'state': instance.state,
  'country_code': _$MyoroCountryEnumEnumMap[instance.country]!,
};

const _$MyoroCountryEnumEnumMap = {
  MyoroCountryEnum.afghanistan: 'af',
  MyoroCountryEnum.albania: 'al',
  MyoroCountryEnum.algeria: 'dz',
  MyoroCountryEnum.andorra: 'ad',
  MyoroCountryEnum.angola: 'ao',
  MyoroCountryEnum.antiguaAndBarbuda: 'ag',
  MyoroCountryEnum.argentina: 'ar',
  MyoroCountryEnum.armenia: 'am',
  MyoroCountryEnum.australia: 'au',
  MyoroCountryEnum.austria: 'at',
  MyoroCountryEnum.azerbaijan: 'az',
  MyoroCountryEnum.bahamas: 'bs',
  MyoroCountryEnum.bahrain: 'bh',
  MyoroCountryEnum.bangladesh: 'bd',
  MyoroCountryEnum.barbados: 'bb',
  MyoroCountryEnum.belarus: 'by',
  MyoroCountryEnum.belgium: 'be',
  MyoroCountryEnum.belize: 'bz',
  MyoroCountryEnum.benin: 'bj',
  MyoroCountryEnum.bhutan: 'bt',
  MyoroCountryEnum.bolivia: 'bo',
  MyoroCountryEnum.bosniaAndHerzegovina: 'ba',
  MyoroCountryEnum.botswana: 'bw',
  MyoroCountryEnum.brazil: 'br',
  MyoroCountryEnum.brunei: 'bn',
  MyoroCountryEnum.bulgaria: 'bg',
  MyoroCountryEnum.burkinaFaso: 'bf',
  MyoroCountryEnum.burundi: 'bi',
  MyoroCountryEnum.cambodia: 'kh',
  MyoroCountryEnum.cameroon: 'cm',
  MyoroCountryEnum.canada: 'ca',
  MyoroCountryEnum.capeVerde: 'cv',
  MyoroCountryEnum.centralAfricanRepublic: 'cf',
  MyoroCountryEnum.chad: 'td',
  MyoroCountryEnum.chile: 'cl',
  MyoroCountryEnum.china: 'cn',
  MyoroCountryEnum.colombia: 'co',
  MyoroCountryEnum.comoros: 'km',
  MyoroCountryEnum.congo: 'cg',
  MyoroCountryEnum.costaRica: 'cr',
  MyoroCountryEnum.croatia: 'hr',
  MyoroCountryEnum.cuba: 'cu',
  MyoroCountryEnum.cyprus: 'cy',
  MyoroCountryEnum.czechRepublic: 'cz',
  MyoroCountryEnum.denmark: 'dk',
  MyoroCountryEnum.djibouti: 'dj',
  MyoroCountryEnum.dominica: 'dm',
  MyoroCountryEnum.dominicanRepublic: 'do',
  MyoroCountryEnum.drCongo: 'cd',
  MyoroCountryEnum.ecuador: 'ec',
  MyoroCountryEnum.egypt: 'eg',
  MyoroCountryEnum.elSalvador: 'sv',
  MyoroCountryEnum.equatorialGuinea: 'gq',
  MyoroCountryEnum.eritrea: 'er',
  MyoroCountryEnum.estonia: 'ee',
  MyoroCountryEnum.eswatini: 'sz',
  MyoroCountryEnum.ethiopia: 'et',
  MyoroCountryEnum.fiji: 'fj',
  MyoroCountryEnum.finland: 'fi',
  MyoroCountryEnum.france: 'fr',
  MyoroCountryEnum.gabon: 'ga',
  MyoroCountryEnum.gambia: 'gm',
  MyoroCountryEnum.georgia: 'ge',
  MyoroCountryEnum.germany: 'de',
  MyoroCountryEnum.ghana: 'gh',
  MyoroCountryEnum.greece: 'gr',
  MyoroCountryEnum.grenada: 'gd',
  MyoroCountryEnum.guatemala: 'gt',
  MyoroCountryEnum.guinea: 'gn',
  MyoroCountryEnum.guineaBissau: 'gw',
  MyoroCountryEnum.guyana: 'gy',
  MyoroCountryEnum.haiti: 'ht',
  MyoroCountryEnum.honduras: 'hn',
  MyoroCountryEnum.hungary: 'hu',
  MyoroCountryEnum.iceland: 'is',
  MyoroCountryEnum.india: 'in',
  MyoroCountryEnum.indonesia: 'id',
  MyoroCountryEnum.iran: 'ir',
  MyoroCountryEnum.iraq: 'iq',
  MyoroCountryEnum.ireland: 'ie',
  MyoroCountryEnum.israel: 'il',
  MyoroCountryEnum.italy: 'it',
  MyoroCountryEnum.ivoryCoast: 'ci',
  MyoroCountryEnum.jamaica: 'jm',
  MyoroCountryEnum.japan: 'jp',
  MyoroCountryEnum.jordan: 'jo',
  MyoroCountryEnum.kazakhstan: 'kz',
  MyoroCountryEnum.kenya: 'ke',
  MyoroCountryEnum.kiribati: 'ki',
  MyoroCountryEnum.kosovo: 'xk',
  MyoroCountryEnum.kuwait: 'kw',
  MyoroCountryEnum.kyrgyzstan: 'kg',
  MyoroCountryEnum.laos: 'la',
  MyoroCountryEnum.latvia: 'lv',
  MyoroCountryEnum.lebanon: 'lb',
  MyoroCountryEnum.lesotho: 'ls',
  MyoroCountryEnum.liberia: 'lr',
  MyoroCountryEnum.libya: 'ly',
  MyoroCountryEnum.liechtenstein: 'li',
  MyoroCountryEnum.lithuania: 'lt',
  MyoroCountryEnum.luxembourg: 'lu',
  MyoroCountryEnum.madagascar: 'mg',
  MyoroCountryEnum.malawi: 'mw',
  MyoroCountryEnum.malaysia: 'my',
  MyoroCountryEnum.maldives: 'mv',
  MyoroCountryEnum.mali: 'ml',
  MyoroCountryEnum.malta: 'mt',
  MyoroCountryEnum.marshallIslands: 'mh',
  MyoroCountryEnum.mauritania: 'mr',
  MyoroCountryEnum.mauritius: 'mu',
  MyoroCountryEnum.mexico: 'mx',
  MyoroCountryEnum.micronesia: 'fm',
  MyoroCountryEnum.moldova: 'md',
  MyoroCountryEnum.monaco: 'mc',
  MyoroCountryEnum.mongolia: 'mn',
  MyoroCountryEnum.montenegro: 'me',
  MyoroCountryEnum.morocco: 'ma',
  MyoroCountryEnum.mozambique: 'mz',
  MyoroCountryEnum.myanmar: 'mm',
  MyoroCountryEnum.namibia: 'na',
  MyoroCountryEnum.nauru: 'nr',
  MyoroCountryEnum.nepal: 'np',
  MyoroCountryEnum.netherlands: 'nl',
  MyoroCountryEnum.newZealand: 'nz',
  MyoroCountryEnum.nicaragua: 'ni',
  MyoroCountryEnum.niger: 'ne',
  MyoroCountryEnum.nigeria: 'ng',
  MyoroCountryEnum.northKorea: 'kp',
  MyoroCountryEnum.northMacedonia: 'mk',
  MyoroCountryEnum.norway: 'no',
  MyoroCountryEnum.oman: 'om',
  MyoroCountryEnum.pakistan: 'pk',
  MyoroCountryEnum.palau: 'pw',
  MyoroCountryEnum.palestine: 'ps',
  MyoroCountryEnum.panama: 'pa',
  MyoroCountryEnum.papuaNewGuinea: 'pg',
  MyoroCountryEnum.paraguay: 'py',
  MyoroCountryEnum.peru: 'pe',
  MyoroCountryEnum.philippines: 'ph',
  MyoroCountryEnum.poland: 'pl',
  MyoroCountryEnum.portugal: 'pt',
  MyoroCountryEnum.qatar: 'qa',
  MyoroCountryEnum.romania: 'ro',
  MyoroCountryEnum.russia: 'ru',
  MyoroCountryEnum.rwanda: 'rw',
  MyoroCountryEnum.saintKittsAndNevis: 'kn',
  MyoroCountryEnum.saintLucia: 'lc',
  MyoroCountryEnum.saintVincentAndTheGrenadines: 'vc',
  MyoroCountryEnum.samoa: 'ws',
  MyoroCountryEnum.sanMarino: 'sm',
  MyoroCountryEnum.saoTomeAndPrincipe: 'st',
  MyoroCountryEnum.saudiArabia: 'sa',
  MyoroCountryEnum.senegal: 'sn',
  MyoroCountryEnum.serbia: 'rs',
  MyoroCountryEnum.seychelles: 'sc',
  MyoroCountryEnum.sierraLeone: 'sl',
  MyoroCountryEnum.singapore: 'sg',
  MyoroCountryEnum.slovakia: 'sk',
  MyoroCountryEnum.slovenia: 'si',
  MyoroCountryEnum.solomonIslands: 'sb',
  MyoroCountryEnum.somalia: 'so',
  MyoroCountryEnum.southAfrica: 'za',
  MyoroCountryEnum.southKorea: 'kr',
  MyoroCountryEnum.southSudan: 'ss',
  MyoroCountryEnum.spain: 'es',
  MyoroCountryEnum.sriLanka: 'lk',
  MyoroCountryEnum.sudan: 'sd',
  MyoroCountryEnum.suriname: 'sr',
  MyoroCountryEnum.sweden: 'se',
  MyoroCountryEnum.switzerland: 'ch',
  MyoroCountryEnum.syria: 'sy',
  MyoroCountryEnum.taiwan: 'tw',
  MyoroCountryEnum.tajikistan: 'tj',
  MyoroCountryEnum.tanzania: 'tz',
  MyoroCountryEnum.thailand: 'th',
  MyoroCountryEnum.timorLeste: 'tl',
  MyoroCountryEnum.togo: 'tg',
  MyoroCountryEnum.tonga: 'to',
  MyoroCountryEnum.trinidadAndTobago: 'tt',
  MyoroCountryEnum.tunisia: 'tn',
  MyoroCountryEnum.turkey: 'tr',
  MyoroCountryEnum.turkmenistan: 'tm',
  MyoroCountryEnum.tuvalu: 'tv',
  MyoroCountryEnum.uganda: 'ug',
  MyoroCountryEnum.ukraine: 'ua',
  MyoroCountryEnum.unitedArabEmirates: 'ae',
  MyoroCountryEnum.unitedKingdom: 'gb',
  MyoroCountryEnum.unitedStates: 'us',
  MyoroCountryEnum.uruguay: 'uy',
  MyoroCountryEnum.uzbekistan: 'uz',
  MyoroCountryEnum.vanuatu: 'vu',
  MyoroCountryEnum.vaticanCity: 'va',
  MyoroCountryEnum.venezuela: 've',
  MyoroCountryEnum.vietnam: 'vn',
  MyoroCountryEnum.yemen: 'ye',
  MyoroCountryEnum.zambia: 'zm',
  MyoroCountryEnum.zimbabwe: 'zw',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [OpenStreetMapLocationAddressResponseDto] once the code is generated.
///
/// ```dart
/// class OpenStreetMapLocationAddressResponseDto with _$OpenStreetMapLocationAddressResponseDtoMixin {}
/// ```
mixin _$OpenStreetMapLocationAddressResponseDtoMixin {
  OpenStreetMapLocationAddressResponseDto get self => this as OpenStreetMapLocationAddressResponseDto;

  OpenStreetMapLocationAddressResponseDto copyWith({String? city, String? state, MyoroCountryEnum? country}) {
    return OpenStreetMapLocationAddressResponseDto(
      city: city ?? self.city,
      state: state ?? self.state,
      country: country ?? self.country,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is OpenStreetMapLocationAddressResponseDto &&
        other.runtimeType == runtimeType &&
        other.city == self.city &&
        other.state == self.state &&
        other.country == self.country;
  }

  @override
  int get hashCode {
    return Object.hash(self.city, self.state, self.country);
  }

  @override
  String toString() =>
      'OpenStreetMapLocationAddressResponseDto(\n'
      '  city: ${self.city},\n'
      '  state: ${self.state},\n'
      '  country: ${self.country},\n'
      ');';
}
