import 'package:bloc/bloc.dart';
import 'package:introducao_bloc_provider/home_cubit/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(value: 0));

  void add() {
    var counter = state.value;
    emit(CounterState(value: ++counter));
  }

  void subtract() {
    var counter = state.value;
    emit(CounterState(value: --counter));
  }
}
