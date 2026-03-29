import 'recommendation_item.dart';
import 'chart_series_point.dart';
import 'package:schemantic/schemantic.dart';

part 'analysis_response.g.dart';
/// AI response: narrative plus structured UI payload (replace with schemantic later).
@Schema()
abstract class $AnalysisResponse {

   String get narrative;
   $UiPayload? get uiPayload;
}

@Schema()
abstract class $UiPayload {


  List<$KpiCard>? get kpiCards;
  List<$ChartSeriesPoint>? get trendSeries;
  List<int>? get highlightedRows;
  List<$RecommendationItem>? get recommendations;
}

@Schema()
abstract class $KpiCard {
  String get label;
  double get value;
  String? get formattedValue;
}
