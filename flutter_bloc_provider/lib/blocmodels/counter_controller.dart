import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_provider/blocmodels/counter_event.dart';
import 'package:flutter_bloc_provider/blocmodels/counter_state.dart';

class CounterController extends Bloc<CounterEvent, CounterState> {
  CounterController() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is arttir) {
      yield CounterState(state.counter + 1);
    }
    if (event is azalt) {
      yield CounterState(state.counter - 1);
    }
  }
}
