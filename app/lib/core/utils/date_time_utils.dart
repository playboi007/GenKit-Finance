/// Timestamp parsing helpers for CSV imports.
DateTime? tryParseFlexibleDateTime(String raw) {
  final trimmed = raw.trim();
  if (trimmed.isEmpty) {
    return null;
  }
  final iso = DateTime.tryParse(trimmed);
  if (iso != null) {
    return iso;
  }
  return null;
}
String formatToMonthDayYear(DateTime date) {
  // List of abbreviated month names in English
  const List<String> monthNames = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];
  final String month = monthNames[date.month - 1];
  final String day = date.day.toString().padLeft(2, '0');
  final String year = date.year.toString();
  return '$month, $day, $year';
}