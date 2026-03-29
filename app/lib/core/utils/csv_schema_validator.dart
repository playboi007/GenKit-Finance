/// Validates raw CSV headers and row shape before parsing.
class CsvSchemaValidator {
  const CsvSchemaValidator();

  bool hasExpectedHeaders(List<String> headers) {
    final normalized = headers.map((h) => h.trim().toLowerCase()).toList();
    const expected = [
      'receipt_no',
      'completion_time',
      'details',
      'transaction_status',
      'paid_in',
      'withdraw',
      'balance',
    ];
    for (final name in expected) {
      if (!normalized.contains(name)) {
        return false;
      }
    }
    return true;
  }
}
