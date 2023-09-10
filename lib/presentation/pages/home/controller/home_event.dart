import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetRandomQuoteEvent extends HomeEvent {
  const GetRandomQuoteEvent();

  @override
  List<Object?> get props => [];
}
