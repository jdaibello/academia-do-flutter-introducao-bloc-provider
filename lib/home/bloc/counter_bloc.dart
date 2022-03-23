import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introducao_bloc_provider/home/bloc/counter_event.dart';
import 'package:introducao_bloc_provider/home/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(value: 0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    //* O state é uma variável que o bloc nos dá acesso
    var counter = state.value;
    if (event is CounterAdd) {
      //* yield é um tipo de retorno, mas sem parar a execução
      //* Podem haver vários yiels, que o restante do if será
      //* executado.
      yield CounterState(value: ++counter);
      // mesma coisa que:
      // yield state.copyWith(value: ++counter);
    } else if (event is CounterSubtract) {
      yield CounterState(value: --counter);
      // yield state.copyWith(value: --counter);
    }
  }
}
