import 'package:schemantic/schemantic.dart';
part 'transaction_row.g.dart';

enum TransactionStatus { completed, failed }

/// One row from the MVP CSV schema.x
@Schema()
abstract class $TransactionRow {

  String get receiptNo;
  DateTime get completionTime;
  String get details;
  TransactionStatus get status;
  double get paidIn;
  double get withdraw;
  double get balance;

}
