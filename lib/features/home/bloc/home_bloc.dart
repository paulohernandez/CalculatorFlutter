import 'package:bloc/bloc.dart';
import 'package:calculator_flutter/features/home/entities/operators.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<OtherButtonEvent>((event, emit) {
      switch (event.operatorType) {
        case Operators.clear:
          emit(state.copyWith(word: '0'));
        case Operators.addition:
          emit(state.copyWith(word: '${state.word} + '));
        case Operators.subtraction:
          emit(state.copyWith(word: '${state.word} - '));
        case Operators.division:
          emit(state.copyWith(word: '${state.word} ÷ '));
        case Operators.multiplication:
          // emit(state.copyWith(word: '${state.word} x '));
          emit(state.copyWith(word: 'BALIK KANA\n😭😭😭😭'));
        case Operators.output:
          emit(state.copyWith(word: 'IMISSU\n🥲😭😭😘'));
      }
    });
    on<InputNumber>((event, emit) {
      String? displayNumber;
      if (state.word != null) {
        if (state.word == '0') {
          displayNumber = '';
        } else {
          displayNumber = state.word;
        }
      } else {
        displayNumber = '';
      }

      final displayOutput = '$displayNumber${event.number}';

      emit(state.copyWith(word: displayOutput));
    });
  }
}
