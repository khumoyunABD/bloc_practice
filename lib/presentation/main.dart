import 'package:bloc_practice/logic/cubit/counter_cubit.dart';
import 'package:bloc_practice/presentation/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                  color: Colors.blue,
                  title: 'Home',
                ),
              ),
          '/second': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                  color: Colors.orangeAccent,
                  title: 'Second',
                ),
              ),
          '/third': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const HomeScreen(
                  color: Colors.lightGreenAccent,
                  title: 'Third',
                ),
              ),
        },
      ),
    );
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}
