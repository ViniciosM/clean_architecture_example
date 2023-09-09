import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:clean_architecture_example/data/dtos/quote_dto.dart';
import 'package:clean_architecture_example/domain/usecases/get_random_quote.dart';
import 'package:clean_architecture_example/presentation/pages/home/controller/home_event.dart';
import 'package:clean_architecture_example/presentation/pages/home/controller/home_state.dart';
import 'package:clean_architecture_example/presentation/pages/home/home_di.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(status: HomeStatus.initial)) {
    on<GetRandomQuoteEvent>(_getRandomQuoteEvent);
  }

  final GetRandomQuoteUseCase getRandomQuoteUseCase =
      getIt.get<GetRandomQuoteUseCase>();

  FutureOr<void> _getRandomQuoteEvent(
      GetRandomQuoteEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState(status: HomeStatus.loading));
    try {
      final quote = await getRandomQuoteUseCase.call();
      emit(HomeState(
          status: HomeStatus.success, quote: QuoteDto.fromEntity(quote)));
    } catch (e) {
      log('BLOC [GET RANDOM QUOTE] ERROR: $e');
      emit(const HomeState(status: HomeStatus.failure));
    }
  }
}
