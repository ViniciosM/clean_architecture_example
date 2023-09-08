import 'package:clean_architecture_flutter/data/datasources/quote_datasource.dart';
import 'package:clean_architecture_flutter/domain/entities/quote_entity.dart';
import 'package:clean_architecture_flutter/domain/repositories/quote_repository.dart';

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
