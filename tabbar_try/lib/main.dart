import 'package:flutter/material.dart';

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
                  padding: EdgeInsets.all(10.0),
                  child: Text('Home'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('List'),
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
                child: Text('Home Page'),
              ),
              Center(
                child: Text('List Page'),
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
