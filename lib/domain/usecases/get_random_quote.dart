import 'package:clean_architecture_example/domain/entities/quote_entity.dart';

abstract class GetRandomQuoteUseCase {
  Future<QuoteEntity> call();
}
