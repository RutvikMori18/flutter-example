import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'increment_decrement_event.dart';
part 'increment_decrement_state.dart';

class IncrementDecrementBloc
    extends Bloc<IncrementDecrementEvent, IncrementDecrementState> {
  IncrementDecrementBloc() : super(IncrementDecrementInitial()) {
    on<IncrementDecrementEvent>((event, emit) {
      log('bloc working');
      if (event is IncrementEvent) {
        int result = event.counter;
        result = result + 1;
        log('bloc working well===$result');
        emit(IncrementState(counter: result));
      }
      if (event is DecrementEvent) {
        int count = 10;
        emit(DecrementState(counter: count--));
      }
    });
  }
}
