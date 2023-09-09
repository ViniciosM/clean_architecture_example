import 'package:clean_architecture_example/domain/entities/quote_entity.dart';

abstract class QuoteRepository {
  Future<QuoteEntity> getRandomRepository();
}
