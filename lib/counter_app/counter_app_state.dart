part of 'counter_app_bloc.dart';

class CounterAppState {
  final int value;
  CounterAppState({required this.value});
}

// ignore: camel_case_types
class initaialstaet extends CounterAppState {
  initaialstaet() : super(value: 0);
}
