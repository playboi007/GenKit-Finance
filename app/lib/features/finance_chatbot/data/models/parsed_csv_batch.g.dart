// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_csv_batch.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class ParsedCsvBatch {
  factory ParsedCsvBatch.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ParsedCsvBatch._(this._json);

  ParsedCsvBatch({
    required List<TransactionRow> rows,
    required String sourceName,
  }) {
    _json = {
      'rows': rows.map((e) => e.toJson()).toList(),
      'sourceName': sourceName,
    };
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<ParsedCsvBatch> $schema =
      _ParsedCsvBatchTypeFactory();

  List<TransactionRow> get rows {
    return (_json['rows'] as List)
        .map((e) => TransactionRow.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set rows(List<TransactionRow> value) {
    _json['rows'] = value.toList();
  }

  String get sourceName {
    return _json['sourceName'] as String;
  }

  set sourceName(String value) {
    _json['sourceName'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParsedCsvBatchTypeFactory extends SchemanticType<ParsedCsvBatch> {
  const _ParsedCsvBatchTypeFactory();

  @override
  ParsedCsvBatch parse(Object? json) {
    return ParsedCsvBatch._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ParsedCsvBatch',
    definition: $Schema
        .object(
          properties: {
            'rows': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/TransactionRow'}),
            ),
            'sourceName': $Schema.string(),
          },
          required: ['rows', 'sourceName'],
        )
        .value,
    dependencies: [TransactionRow.$schema],
  );
}
