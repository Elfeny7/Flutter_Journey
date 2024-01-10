import 'package:cubit_try/bloc/text_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlocBuilder<TextBloc, String>(
                  builder: (context, state) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Text(state),
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<TextBloc>()
                        .add(ChangeTextPressed(value: "Library"));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Library'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<TextBloc>()
                        .add(ChangeTextPressed(value: "Perpustakaan"));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Perpustakaan'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ikmal'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
