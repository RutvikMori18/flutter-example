part of 'increment_decrement_bloc.dart';

abstract class IncrementDecrementEvent extends Equatable {
  const IncrementDecrementEvent();
}

class IncrementEvent extends IncrementDecrementEvent {
  const IncrementEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class DecrementEvent extends IncrementDecrementEvent {
  final int counter;

  const DecrementEvent(this.counter);
  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
