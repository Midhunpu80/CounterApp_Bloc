import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_app_event.dart';
part 'counter_app_state.dart';

class CounterAppBloc extends Bloc<CounterAppEvent, CounterAppState> {
  CounterAppBloc() : super(initaialstaet()) {
    on<increase>((event, emit) {
      return emit(CounterAppState(value: state.value + 1));
    });
    on<decrease>(
      (event, emit) {
        return emit(CounterAppState(value: state.value - 1));
      },
    );
  }
}
