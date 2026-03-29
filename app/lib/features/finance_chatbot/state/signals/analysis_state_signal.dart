import 'package:signals/signals.dart';

import '../../data/models/analysis_response.dart';

final lastAnalysis = signal<$AnalysisResponse?>(null);

final analysisLoading = signal<bool>(false);
