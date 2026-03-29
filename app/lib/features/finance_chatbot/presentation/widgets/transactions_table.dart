import 'package:flutter/material.dart';

import '../../data/models/transaction_row.dart';

/// Transactions table with optional row highlights.
class TransactionsTable extends StatelessWidget {
  const TransactionsTable({
    super.key,
    required this.rows,
    this.highlightedIndices,
  });

  final List<$TransactionRow> rows;
  final Set<int>? highlightedIndices;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Receipt')),
          DataColumn(label: Text('Time')),
          DataColumn(label: Text('Details')),
          DataColumn(label: Text('Status')),
          DataColumn(label: Text('In')),
          DataColumn(label: Text('Out')),
          DataColumn(label: Text('Balance')),
        ],
        rows: [
          for (var i = 0; i < rows.length; i++)
            DataRow(
              color:
                  highlightedIndices != null && highlightedIndices!.contains(i)
                  ? WidgetStateProperty.all(Colors.yellow.shade100)
                  : null,
              cells: [
                DataCell(Text(rows[i].receiptNo)),
                DataCell(Text(rows[i].completionTime.toIso8601String())),
                DataCell(Text(rows[i].details)),
                DataCell(Text(rows[i].status.name)),
                DataCell(Text('${rows[i].paidIn}')),
                DataCell(Text('${rows[i].withdraw}')),
                DataCell(Text('${rows[i].balance}')),
              ],
            ),
        ],
      ),
    );
  }
}
