import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introducao_bloc_provider/home_cubit/cubit/counter_cubit.dart';
import 'package:introducao_bloc_provider/home_cubit/home_cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indrodução ao Bloc Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: const HomePage(),
      // ),
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const HomeCubitPage(),
      ),
    );
  }
}
