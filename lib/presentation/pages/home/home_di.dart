import 'package:clean_architecture_example/data/datasources/quote_datasource.dart';
import 'package:clean_architecture_example/data/datasources/quote_datasource_impl.dart';
import 'package:clean_architecture_example/data/repositories/quote_repository_impl.dart';
import 'package:clean_architecture_example/domain/repositories/quote_repository.dart';
import 'package:clean_architecture_example/domain/usecases/get_random_quote.dart';
import 'package:clean_architecture_example/domain/usecases/get_random_quote_impl.dart';
import 'package:clean_architecture_example/main_di.dart';

void setupHomeDependencies() {
  // DataSources
  getIt.registerLazySingleton<QuoteDatasource>(
    () => QuoteDatasourceImpl(),
  );

  // Repositories
  getIt.registerSingleton<QuoteRepository>(
    QuoteRepositoryImpl(
      quoteDatasource: getIt<QuoteDatasource>(),
    ),
  );

  // Usecases
  getIt.registerSingleton<GetRandomQuoteUseCase>(
    GetRandomQuoteUseCaseImpl(
      quoteRepository: getIt<QuoteRepository>(),
    ),
  );
}
