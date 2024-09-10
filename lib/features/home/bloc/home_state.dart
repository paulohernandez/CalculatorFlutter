part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({this.word});

  HomeState copyWith({
    String? word,
  }) {
    return HomeState(word: word ?? this.word);
  }

  final String? word;

  @override
  List<Object?> get props => [word];
}

final class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {}
