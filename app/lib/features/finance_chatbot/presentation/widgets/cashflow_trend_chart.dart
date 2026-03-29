import 'package:flutter/material.dart';

import '../../data/models/chart_series_point.dart';

/// Cashflow trend chart (placeholder; replace with charts package or Stitch).
class CashflowTrendChart extends StatelessWidget {
  const CashflowTrendChart({super.key, this.series});

  final List<$ChartSeriesPoint>? series;

  @override
  Widget build(BuildContext context) {
    if (series == null || series!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text('Chart: ${series!.length} buckets'),
      ),
    );
  }
}
