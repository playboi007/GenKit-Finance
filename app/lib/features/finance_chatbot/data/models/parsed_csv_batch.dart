import 'package:schemantic/schemantic.dart';
import 'transaction_row.dart';

part 'parsed_csv_batch.g.dart';

/// Parsed CSV contents and lightweight metadata for the session.
@Schema()
abstract class $ParsedCsvBatch {
  List<$TransactionRow> get rows;
  String get sourceName;
  // int? get maxRows;
}

// TODO 
// cap rows for token limits