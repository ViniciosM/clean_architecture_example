import 'package:clean_architecture_example/domain/entities/quote_entity.dart';

abstract interface class QuoteDatasource {
  Future<QuoteEntity> getRandomQuote();
}
