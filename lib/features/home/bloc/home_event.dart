part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class InputNumber extends HomeEvent {
  const InputNumber(this.number);

  final int number;

  @override
  List<Object?> get props => [number];
}

class OtherButtonEvent extends HomeEvent {
  const OtherButtonEvent(this.operatorType);

  final Operators operatorType;

  @override
  List<Object?> get props => [operatorType];
}
