// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_series_point.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class ChartSeriesPoint {
  factory ChartSeriesPoint.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ChartSeriesPoint._(this._json);

  ChartSeriesPoint({
    required String bucket,
    required double inflow,
    required double outflow,
    required double net,
  }) {
    _json = {
      'bucket': bucket,
      'inflow': inflow,
      'outflow': outflow,
      'net': net,
    };
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<ChartSeriesPoint> $schema =
      _ChartSeriesPointTypeFactory();

  String get bucket {
    return _json['bucket'] as String;
  }

  set bucket(String value) {
    _json['bucket'] = value;
  }

  double get inflow {
    return (_json['inflow'] as num).toDouble();
  }

  set inflow(double value) {
    _json['inflow'] = value;
  }

  double get outflow {
    return (_json['outflow'] as num).toDouble();
  }

  set outflow(double value) {
    _json['outflow'] = value;
  }

  double get net {
    return (_json['net'] as num).toDouble();
  }

  set net(double value) {
    _json['net'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ChartSeriesPointTypeFactory
    extends SchemanticType<ChartSeriesPoint> {
  const _ChartSeriesPointTypeFactory();

  @override
  ChartSeriesPoint parse(Object? json) {
    return ChartSeriesPoint._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ChartSeriesPoint',
    definition: $Schema
        .object(
          properties: {
            'bucket': $Schema.string(),
            'inflow': $Schema.number(),
            'outflow': $Schema.number(),
            'net': $Schema.number(),
          },
          required: ['bucket', 'inflow', 'outflow', 'net'],
        )
        .value,
    dependencies: [],
  );
}
