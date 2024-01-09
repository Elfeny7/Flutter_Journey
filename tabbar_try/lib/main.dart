import 'package:flutter/material.dart';
import 'package:tabbar_try/bloc/bloc_main.dart';
import 'package:tabbar_try/bloc_manual/bloc_manual_main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabbar'),
            bottom: const TabBar(
              tabs: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Text('Bloc Manual'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Flutter BloC'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('History'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Profile'),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: BlocManualMain(),
              ),
              Center(
                child: BlocMain(),
              ),
              Center(
                child: Text('History Page'),
              ),
              Center(
                child: Text('Profile Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
