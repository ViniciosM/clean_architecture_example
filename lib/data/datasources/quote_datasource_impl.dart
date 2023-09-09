import 'dart:convert';
import 'package:clean_architecture_example/data/datasources/quote_datasource.dart';
import 'package:clean_architecture_example/data/dtos/quote_dto.dart';
import 'package:clean_architecture_example/domain/entities/quote_entity.dart';
import 'package:http/http.dart' as http;

class QuoteDatasourceImpl implements QuoteDatasource {
  @override
  Future<QuoteEntity> getRandomQuote() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/quotes/random'));

    if (response.statusCode == 200) {
      final quote = jsonDecode(response.body)['quote'];

      return QuoteDto.fromJson(quote);
    } else {
      throw Exception('Erro ao obter a frase aleatória');
    }
  }
}
