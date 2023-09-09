import 'package:clean_architecture_example/data/datasources/quote_datasource.dart';
import 'package:clean_architecture_example/domain/entities/quote_entity.dart';
import 'package:clean_architecture_example/domain/repositories/quote_repository.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  QuoteDatasource quoteDatasource;

  QuoteRepositoryImpl({
    required this.quoteDatasource,
  });

  @override
  Future<QuoteEntity> getRandomRepository() async {
    return await quoteDatasource.getRandomQuote();
  }
}
