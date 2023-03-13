import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'increment_decrement_event.dart';
part 'increment_decrement_state.dart';

class IncrementDecrementBloc
    extends Bloc<IncrementDecrementEvent, IncrementDecrementState> {
  int blockCounter = 0;

  IncrementDecrementBloc() : super(IncrementDecrementInitial()) {
    on<IncrementDecrementEvent>((event, emit) {
      log('bloc working');
      if (event is IncrementEvent) {
        // blockCounter = event.counter;
        blockCounter += 1;
        log('bloc working well===$blockCounter');
        emit(IncrementState(counter: blockCounter));
      }
      if (event is DecrementEvent) {
        int count = 10;
        emit(DecrementState(counter: count--));
      }
    });
  }
}
