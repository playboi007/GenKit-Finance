import 'package:schemantic/schemantic.dart';

part 'chart_series_point.g.dart';
/// One bucket for cashflow trend visualization.
@Schema()
abstract class $ChartSeriesPoint {
  String get bucket;
  double get inflow;
  double get outflow;
  double get net;
}
