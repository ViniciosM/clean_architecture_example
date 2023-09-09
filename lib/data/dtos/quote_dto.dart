import 'package:clean_architecture_example/domain/entities/quote_entity.dart';

class QuoteDto extends QuoteEntity {
  QuoteDto({required int id, required String quote, required String author})
      : super(id: id, quote: quote, author: author);
  //   final int id;
  // final String quote;
  // final String author;

  // QuoteDto({
  //     required this.id,
  //     required this.quote,
  //     required this.author,
  // });

  static QuoteDto fromEntity(QuoteEntity entity) {
    return QuoteDto(id: entity.id, quote: entity.quote, author: entity.author);
  }

  QuoteDto copyWith({
    int? id,
    String? quote,
    String? author,
  }) =>
      QuoteDto(
        id: id ?? this.id,
        quote: quote ?? this.quote,
        author: author ?? this.author,
      );

  factory QuoteDto.fromJson(Map<String, dynamic> json) => QuoteDto(
        id: json["id"],
        quote: json["quote"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quote": quote,
        "author": author,
      };
}
