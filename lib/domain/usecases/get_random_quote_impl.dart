import 'package:clean_architecture_example/domain/entities/quote_entity.dart';
import 'package:clean_architecture_example/domain/repositories/quote_repository.dart';
import 'package:clean_architecture_example/domain/usecases/get_random_quote.dart';

class GetRandomQuoteUseCaseImpl implements GetRandomQuoteUseCase {
  QuoteRepository quoteRepository;

  GetRandomQuoteUseCaseImpl({
    required this.quoteRepository,
  });

  @override
  Future<QuoteEntity> call() async {
    return await quoteRepository.getRandomRepository();
  }
}
