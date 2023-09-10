import 'package:clean_architecture_example/domain/entities/quote_entity.dart';

abstract interface class QuoteRepository {
  Future<QuoteEntity> getRandomRepository();
}
