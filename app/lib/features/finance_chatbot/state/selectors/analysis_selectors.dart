import 'package:signals/signals.dart';

import '../../data/models/analysis_response.dart';
import '../signals/analysis_state_signal.dart';

/// Derived view of the latest analysis narrative for widgets.
final analysisNarrative = computed<String?>(() {
  final $AnalysisResponse? r = lastAnalysis.value;
  return r?.narrative;
});
