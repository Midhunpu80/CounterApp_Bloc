part of 'counter_app_bloc.dart';

@immutable
sealed class CounterAppEvent {}
class increase extends CounterAppEvent{}
class decrease extends CounterAppEvent{}
