import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetRandomQuoteEvent extends HomeEvent {
  const GetRandomQuoteEvent();

  @override
  List<Object?> get props => [];
}
