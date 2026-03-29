// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_response.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class AnalysisResponse {
  factory AnalysisResponse.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AnalysisResponse._(this._json);

  AnalysisResponse({required String narrative, UiPayload? uiPayload}) {
    _json = {'narrative': narrative, 'uiPayload': ?uiPayload?.toJson()};
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<AnalysisResponse> $schema =
      _AnalysisResponseTypeFactory();

  String get narrative {
    return _json['narrative'] as String;
  }

  set narrative(String value) {
    _json['narrative'] = value;
  }

  UiPayload? get uiPayload {
    return _json['uiPayload'] == null
        ? null
        : UiPayload.fromJson(_json['uiPayload'] as Map<String, dynamic>);
  }

  set uiPayload(UiPayload? value) {
    if (value == null) {
      _json.remove('uiPayload');
    } else {
      _json['uiPayload'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AnalysisResponseTypeFactory
    extends SchemanticType<AnalysisResponse> {
  const _AnalysisResponseTypeFactory();

  @override
  AnalysisResponse parse(Object? json) {
    return AnalysisResponse._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AnalysisResponse',
    definition: $Schema
        .object(
          properties: {
            'narrative': $Schema.string(),
            'uiPayload': $Schema.fromMap({'\$ref': r'#/$defs/UiPayload'}),
          },
          required: ['narrative'],
        )
        .value,
    dependencies: [UiPayload.$schema],
  );
}

base class UiPayload {
  factory UiPayload.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  UiPayload._(this._json);

  UiPayload({
    List<KpiCard>? kpiCards,
    List<ChartSeriesPoint>? trendSeries,
    List<int>? highlightedRows,
    List<RecommendationItem>? recommendations,
  }) {
    _json = {
      'kpiCards': ?kpiCards?.map((e) => e.toJson()).toList(),
      'trendSeries': ?trendSeries?.map((e) => e.toJson()).toList(),
      'highlightedRows': ?highlightedRows,
      'recommendations': ?recommendations?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<UiPayload> $schema = _UiPayloadTypeFactory();

  List<KpiCard>? get kpiCards {
    return (_json['kpiCards'] as List?)
        ?.map((e) => KpiCard.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set kpiCards(List<KpiCard>? value) {
    if (value == null) {
      _json.remove('kpiCards');
    } else {
      _json['kpiCards'] = value.toList();
    }
  }

  List<ChartSeriesPoint>? get trendSeries {
    return (_json['trendSeries'] as List?)
        ?.map((e) => ChartSeriesPoint.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set trendSeries(List<ChartSeriesPoint>? value) {
    if (value == null) {
      _json.remove('trendSeries');
    } else {
      _json['trendSeries'] = value.toList();
    }
  }

  List<int>? get highlightedRows {
    return (_json['highlightedRows'] as List?)?.cast<int>();
  }

  set highlightedRows(List<int>? value) {
    if (value == null) {
      _json.remove('highlightedRows');
    } else {
      _json['highlightedRows'] = value;
    }
  }

  List<RecommendationItem>? get recommendations {
    return (_json['recommendations'] as List?)
        ?.map((e) => RecommendationItem.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set recommendations(List<RecommendationItem>? value) {
    if (value == null) {
      _json.remove('recommendations');
    } else {
      _json['recommendations'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _UiPayloadTypeFactory extends SchemanticType<UiPayload> {
  const _UiPayloadTypeFactory();

  @override
  UiPayload parse(Object? json) {
    return UiPayload._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'UiPayload',
    definition: $Schema
        .object(
          properties: {
            'kpiCards': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/KpiCard'}),
            ),
            'trendSeries': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/ChartSeriesPoint'}),
            ),
            'highlightedRows': $Schema.list(items: $Schema.integer()),
            'recommendations': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/RecommendationItem'}),
            ),
          },
          required: [],
        )
        .value,
    dependencies: [
      KpiCard.$schema,
      ChartSeriesPoint.$schema,
      RecommendationItem.$schema,
    ],
  );
}

base class KpiCard {
  factory KpiCard.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  KpiCard._(this._json);

  KpiCard({
    required String label,
    required double value,
    String? formattedValue,
  }) {
    _json = {'label': label, 'value': value, 'formattedValue': ?formattedValue};
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<KpiCard> $schema = _KpiCardTypeFactory();

  String get label {
    return _json['label'] as String;
  }

  set label(String value) {
    _json['label'] = value;
  }

  double get value {
    return (_json['value'] as num).toDouble();
  }

  set value(double value) {
    _json['value'] = value;
  }

  String? get formattedValue {
    return _json['formattedValue'] as String?;
  }

  set formattedValue(String? value) {
    if (value == null) {
      _json.remove('formattedValue');
    } else {
      _json['formattedValue'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _KpiCardTypeFactory extends SchemanticType<KpiCard> {
  const _KpiCardTypeFactory();

  @override
  KpiCard parse(Object? json) {
    return KpiCard._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'KpiCard',
    definition: $Schema
        .object(
          properties: {
            'label': $Schema.string(),
            'value': $Schema.number(),
            'formattedValue': $Schema.string(),
          },
          required: ['label', 'value'],
        )
        .value,
    dependencies: [],
  );
}
