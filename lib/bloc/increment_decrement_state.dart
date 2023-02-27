part of 'increment_decrement_bloc.dart';

abstract class IncrementDecrementState extends Equatable {
  const IncrementDecrementState();
}

class IncrementDecrementInitial extends IncrementDecrementState {
  @override
  List<Object> get props => [];
}

class IncrementState extends IncrementDecrementInitial {
  final int counter;

  IncrementState({required this.counter});

  @override
  // TODO: implement props
  List<Object> get props => [counter];
}

class DecrementState extends IncrementDecrementInitial {
  final int counter;

  DecrementState({required this.counter});

  @override
  // TODO: implement props
  List<Object> get props => [counter];
}
