import 'package:flutter/material.dart';

/// Anomaly alerts list (placeholder for Stitch UI).
class AnomaliesPanel extends StatelessWidget {
  const AnomaliesPanel({super.key, this.messages});

  final List<String>? messages;

  @override
  Widget build(BuildContext context) {
    if (messages == null || messages!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: messages!.map(Text.new).toList(),
    );
  }
}
