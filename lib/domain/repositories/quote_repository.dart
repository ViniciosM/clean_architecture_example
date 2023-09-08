import 'package:clean_architecture_flutter/domain/entities/quote_entity.dart';

abstract class QuoteRepository {
  Future<QuoteEntity> getRandomRepository();
}
