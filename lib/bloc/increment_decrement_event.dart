part of 'increment_decrement_bloc.dart';

abstract class IncrementDecrementEvent extends Equatable {
  const IncrementDecrementEvent();
}

class IncrementEvent extends IncrementDecrementEvent {
  final int counter;

  const IncrementEvent(this.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class DecrementEvent extends IncrementDecrementEvent {
  final int counter;

  const DecrementEvent(this.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
