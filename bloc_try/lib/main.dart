import 'package:cubit_try/bloc/text_bloc.dart';
import 'package:cubit_try/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return BlocProvider(
      create: (context) => TextBloc(),
      child: MaterialApp(
        title: 'Library App',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: HomeView(),
      ),
    );
  }
}
