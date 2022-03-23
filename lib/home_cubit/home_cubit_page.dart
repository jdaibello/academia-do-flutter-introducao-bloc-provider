import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introducao_bloc_provider/home_cubit/cubit/counter_cubit.dart';
import 'package:introducao_bloc_provider/home_cubit/cubit/counter_state.dart';

class HomeCubitPage extends StatelessWidget {
  const HomeCubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('BUILD TELA');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
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
                  var cubit = context.read<CounterCubit>();
                  cubit.add();
                },
                child: const Text('Adicionar'),
              ),
              ElevatedButton(
                onPressed: () {
                  var cubit = context.read<CounterCubit>();
                  cubit.subtract();
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
