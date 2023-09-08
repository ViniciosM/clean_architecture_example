import 'package:clean_architecture_flutter/data/datasources/quote_datasource.dart';
import 'package:clean_architecture_flutter/domain/entities/quote_entity.dart';

class QuoteDatasourceImpl implements QuoteDatasource {
  @override
  Future<QuoteEntity> getRandomQuote() async {
    // TODO: implement getRandomQuote
    throw UnimplementedError();
  }
}
