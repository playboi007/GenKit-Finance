/// Formats currency and percentages for KPI and chart labels.
class FinanceMetricsFormatter {
  const FinanceMetricsFormatter();

  String currency(double value) => value.toStringAsFixed(2);
}
