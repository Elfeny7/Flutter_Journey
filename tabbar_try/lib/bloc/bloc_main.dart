import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabbar_try/bloc/text_bloc.dart';

class BlocMain extends StatelessWidget {
  const BlocMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TextBloc>(
      create: (context) => TextBloc("Buy"),
      child: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextBloc bloc = BlocProvider.of<TextBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<TextBloc, String>(
              builder: (context, stateText) => Container(
                color: Colors.lightBlue,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    stateText,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    bloc.add(TextEvent.to_buy);
                  },
                  backgroundColor: Colors.green,
                  child: const Text("Buy"),
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    bloc.add(TextEvent.to_sell);
                  },
                  backgroundColor: Colors.lime,
                  child: const Text("Sell"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
