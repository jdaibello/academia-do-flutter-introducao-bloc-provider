import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introducao_bloc_provider/home/bloc/counter_bloc.dart';
import 'package:introducao_bloc_provider/home/bloc/counter_event.dart';
import 'package:introducao_bloc_provider/home/bloc/counter_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('BUILD TELA');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              debugPrint('BUILD TEXT COUNTER');
              return Text('Contador: ${state.value}');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  var bloc = context.read<CounterBloc>();
                  bloc.add(CounterAdd());
                },
                child: const Text('Adicionar'),
              ),
              ElevatedButton(
                onPressed: () {
                  var bloc = context.read<CounterBloc>();
                  bloc.add(CounterSubtract());
                },
                child: const Text('Subtrair'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
