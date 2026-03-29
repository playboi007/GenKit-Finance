/// Strips common currency symbols and grouping separators for parsing.
String normalizeAmountString(String raw) =>
  // ignore: deprecated_member_use
  raw.replaceAll(RegExp(r'[,\s\$€£]'), '');

