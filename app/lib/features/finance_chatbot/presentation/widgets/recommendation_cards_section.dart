import 'package:flutter/material.dart';

import '../../data/models/recommendation_item.dart';

/// Recommendation cards with optional follow-up (placeholder for Stitch UI).
class RecommendationCardsSection extends StatelessWidget {
  const RecommendationCardsSection({
    super.key,
    required this.items,
    this.onFollowUp,
  });

  final List<$RecommendationItem> items;
  final void Function(String prompt)? onFollowUp;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      children: items
          .map(
            (item) => Card(
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.rationale),
                trailing: item.followUpPrompt != null && onFollowUp != null
                    ? TextButton(
                        onPressed: () => onFollowUp!(item.followUpPrompt!),
                        child: const Text('Follow up'),
                      )
                    : null,
              ),
            ),
          )
          .toList(),
    );
  }
}
