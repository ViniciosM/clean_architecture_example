import 'package:clean_architecture_example/data/datasources/quote_datasource.dart';
import 'package:clean_architecture_example/data/datasources/quote_datasource_impl.dart';
import 'package:clean_architecture_example/data/repositories/quote_repository_impl.dart';
import 'package:clean_architecture_example/domain/repositories/quote_repository.dart';
import 'package:clean_architecture_example/domain/usecases/get_random_quote.dart';
import 'package:clean_architecture_example/domain/usecases/get_random_quote_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupHomeDependencies() {
  // Usecases
  getIt.registerSingleton<GetRandomQuoteUseCase>(
      GetRandomQuoteUseCaseImpl(quoteRepository: getIt()));

  // Repositories
  getIt.registerSingleton<QuoteRepository>(
      QuoteRepositoryImpl(quoteDatasource: getIt()));

  // DataSources
  getIt.registerSingleton<QuoteDatasource>(QuoteDatasourceImpl());
}
