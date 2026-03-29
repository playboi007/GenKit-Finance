import 'package:flutter/material.dart';

import '../../data/models/analysis_response.dart';

/// KPI summary grid (placeholder for Stitch UI).
class KpiCardsSection extends StatelessWidget {
  const KpiCardsSection({super.key, this.cards});

  final List<$KpiCard>? cards;

  @override
  Widget build(BuildContext context) {
    if (cards == null || cards!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: cards!
          .map(
            (c) => Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(c.label),
                    Text(c.formattedValue ?? '${c.value}'),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
