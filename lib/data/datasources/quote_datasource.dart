import 'package:clean_architecture_flutter/domain/entities/quote_entity.dart';

abstract class QuoteDatasource {
  Future<QuoteEntity> getRandomQuote();
}
