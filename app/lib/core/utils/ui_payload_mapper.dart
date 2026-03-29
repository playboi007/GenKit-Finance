import '../../features/finance_chatbot/data/models/analysis_response.dart';

/// Maps [AnalysisResponse] into view models for presentation widgets.
class UiPayloadMapper {
  const UiPayloadMapper();

  String narrativeOnly($AnalysisResponse response) => response.narrative;
}
