import 'package:flutter/material.dart';

/// Horizontal list of starter prompt chips.
class PromptTemplatesBar extends StatelessWidget {
  const PromptTemplatesBar({
    super.key,
    required this.prompts,
    this.onPromptSelected,
  });

  final List<String> prompts;
  final ValueChanged<String>? onPromptSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: prompts
          .map(
            (p) => ActionChip(
              label: Text(p),
              onPressed: onPromptSelected == null
                  ? null
                  : () => onPromptSelected!(p),
            ),
          )
          .toList(),
    );
  }
}
