import 'package:flutter_bloc/flutter_bloc.dart';

class GreetingCubit extends Cubit<String> {
  GreetingCubit() : super("Hello! 👋");

  void showGreeting(String name) {
    if (name.trim().isEmpty) {
      emit("Hello! 👋");
    } else {
      emit("Hello $name! 👋");
    }
  }
}
