part of 'timer_cubit.dart';

@immutable
sealed class TimerState {}

final class TimerInitial extends TimerState {
  String timerText = '';
  TimerInitial({required this.timerText});
}
