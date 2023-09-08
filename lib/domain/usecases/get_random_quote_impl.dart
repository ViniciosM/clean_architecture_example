// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_flutter/domain/entities/quote_entity.dart';
import 'package:clean_architecture_flutter/domain/repositories/quote_repository.dart';
import 'package:clean_architecture_flutter/domain/usecases/get_random_quote.dart';

class GetRandomQuoteImpl implements GetRandomQuote {
  QuoteRepository quoteRepository;

  GetRandomQuoteImpl({
    required this.quoteRepository,
  });

  @override
  Future<QuoteEntity> call() async {
    return await quoteRepository.getRandomRepository();
  }
}
