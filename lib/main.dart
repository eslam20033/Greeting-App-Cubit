import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/greeting_cubit.dart';
import 'screens/greeting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeting App',
      home: BlocProvider(
        create: (context) => GreetingCubit(),
        child: const GreetingScreen(),
      ),
    );
  }
}
