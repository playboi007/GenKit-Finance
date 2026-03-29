import 'package:get_it/get_it.dart';

/// Global [GetIt] instance for dependency injection and service management.
///
/// Register interfaces to implementations here. Prefer `registerLazySingleton`
/// for app-wide services and `registerFactory` for short-lived objects.
final GetIt getIt = GetIt.instance;

/// Registers all application dependencies.
///
/// Call once from [main] after [WidgetsFlutterBinding.ensureInitialized]
/// and before [runApp].
void configureDependencies() {
  // Register data sources, repositories, and facades as implementations land.
  //
  // Example:
  // getIt.registerLazySingleton<CsvParserDataSource>(CsvParserDataSourceImpl.new);
  // getIt.registerLazySingleton<SessionMemoryDataSource>(
  //   SessionMemoryDataSourceImpl.new,
  // );
  // getIt.registerLazySingleton<GenkitRemoteDataSource>(
  //   GenkitRemoteDataSourceImpl.new,
  // );
  // getIt.registerLazySingleton<FinanceChatbotRepository>(
  //   () => FinanceChatbotRepositoryImpl(
  //     csvParser: getIt(),
  //     session: getIt(),
  //     genkit: getIt(),
  //   ),
  // );
  // getIt.registerLazySingleton<FinanceChatbotProvider>(
  //   () => FinanceChatbotProvider(repository: getIt()),
  // );
}
