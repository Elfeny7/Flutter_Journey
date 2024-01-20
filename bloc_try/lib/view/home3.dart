import 'package:cubit_try/bloc/text_bloc.dart';
import 'package:cubit_try/bloc/text_bloc2.dart';
import 'package:cubit_try/bloc/text_bloc3/text_bloc3_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView3 extends StatelessWidget {
  const HomeView3({super.key});

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<TextBloc3Bloc, TextBloc3State>(
                  builder: (context, state) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.lime,
                      ),
                      child: Center(child: Text(state.text)),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<TextBloc3Bloc>()
                            .add(const ChangeTextPressed3(TextToo.toLibrary));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: const Text('Library'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<TextBloc3Bloc>().add(
                            const ChangeTextPressed3(TextToo.toPerpustakaan));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: const Text('Perpustakaan'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
