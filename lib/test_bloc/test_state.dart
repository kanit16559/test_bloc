part of 'test_bloc.dart';

@immutable
sealed class TestState {}

final class TestInitial extends TestState {
}

final class TestLoading extends TestState {
}

final class TestSuccess extends TestState {
}



// class TestState extends Equatable {
//   int data;
//   TestState({required this.data});
//
//   @override
//   List<Object?> get props => [
//   ];
// }
