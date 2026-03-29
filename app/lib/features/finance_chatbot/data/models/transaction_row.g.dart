// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_row.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class TransactionRow {
  factory TransactionRow.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  TransactionRow._(this._json);

  TransactionRow({
    required String receiptNo,
    required DateTime completionTime,
    required String details,
    required TransactionStatus status,
    required double paidIn,
    required double withdraw,
    required double balance,
  }) {
    _json = {
      'receiptNo': receiptNo,
      'completionTime': completionTime,
      'details': details,
      'status': status.name,
      'paidIn': paidIn,
      'withdraw': withdraw,
      'balance': balance,
    };
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<TransactionRow> $schema =
      _TransactionRowTypeFactory();

  String get receiptNo {
    return _json['receiptNo'] as String;
  }

  set receiptNo(String value) {
    _json['receiptNo'] = value;
  }

  DateTime get completionTime {
    return DateTime.parse(_json['completionTime'] as String);
  }

  set completionTime(DateTime value) {
    _json['completionTime'] = value.toIso8601String();
  }

  String get details {
    return _json['details'] as String;
  }

  set details(String value) {
    _json['details'] = value;
  }

  TransactionStatus get status {
    return TransactionStatus.values.byName(_json['status'] as String);
  }

  set status(TransactionStatus value) {
    _json['status'] = value.name;
  }

  double get paidIn {
    return (_json['paidIn'] as num).toDouble();
  }

  set paidIn(double value) {
    _json['paidIn'] = value;
  }

  double get withdraw {
    return (_json['withdraw'] as num).toDouble();
  }

  set withdraw(double value) {
    _json['withdraw'] = value;
  }

  double get balance {
    return (_json['balance'] as num).toDouble();
  }

  set balance(double value) {
    _json['balance'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TransactionRowTypeFactory extends SchemanticType<TransactionRow> {
  const _TransactionRowTypeFactory();

  @override
  TransactionRow parse(Object? json) {
    return TransactionRow._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'TransactionRow',
    definition: $Schema
        .object(
          properties: {
            'receiptNo': $Schema.string(),
            'completionTime': $Schema.string(format: 'date-time'),
            'details': $Schema.string(),
            'status': $Schema.string(enumValues: ['completed', 'failed']),
            'paidIn': $Schema.number(),
            'withdraw': $Schema.number(),
            'balance': $Schema.number(),
          },
          required: [
            'receiptNo',
            'completionTime',
            'details',
            'status',
            'paidIn',
            'withdraw',
            'balance',
          ],
        )
        .value,
    dependencies: [],
  );
}
