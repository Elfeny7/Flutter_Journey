import 'package:flutter/material.dart';

class BlocMain extends StatefulWidget {
  const BlocMain({super.key});

  @override
  State<BlocMain> createState() => _BlocMainState();
}

class _BlocMainState extends State<BlocMain> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.lightBlue,
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  'Ikmal',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.green,
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.lime,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
