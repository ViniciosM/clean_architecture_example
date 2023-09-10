import 'package:clean_architecture_example/data/dtos/quote_dto.dart';
import 'package:equatable/equatable.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  final HomeStatus status;
  final String? errorMessage;
  final QuoteDto? quote;

  const HomeState({
    required this.status,
    this.errorMessage,
    this.quote,
  });

  HomeState copyWith({
    HomeStatus? status,
    String? errorMessage,
    QuoteDto? quote,
  }) {
    return HomeState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      quote: quote ?? this.quote,
    );
  }

  @override
  List<Object?> get props => [status, errorMessage, quote];
}
