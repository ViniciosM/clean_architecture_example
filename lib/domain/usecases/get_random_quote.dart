import 'package:clean_architecture_flutter/domain/entities/quote_entity.dart';

abstract class GetRandomQuote {
  Future<QuoteEntity> call();
}
