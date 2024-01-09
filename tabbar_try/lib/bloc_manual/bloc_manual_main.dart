import 'package:flutter/material.dart';
import 'package:tabbar_try/bloc_manual/text_bloc.dart';

class BlocManualMain extends StatefulWidget {
  const BlocManualMain({super.key});

  @override
  State<BlocManualMain> createState() => _BlocManualMainState();
}

class _BlocManualMainState extends State<BlocManualMain> {
  TextBloc textBloc = TextBloc();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StreamBuilder(
              stream: textBloc.stateStream,
              initialData: "Ikmal",
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    decoration: const BoxDecoration(color: Colors.red),
                    width: 100,
                    height: 100,
                    child: Center(
                      child: Text(
                        snapshot.data!,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    decoration: const BoxDecoration(color: Colors.red),
                    width: 100,
                    height: 100,
                    child: const Center(
                      child: Text(
                        "Terdapat Null",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                }
              },
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    textBloc.eventSink.add(TextEvent.to_ikmal);
                  },
                  child: const Icon(Icons.science),
                  backgroundColor: Colors.lime,
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    textBloc.eventSink.add(TextEvent.to_faris);
                  },
                  child: const Icon(Icons.house),
                  backgroundColor: Colors.green,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
