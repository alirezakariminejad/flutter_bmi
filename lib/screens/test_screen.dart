import 'package:flutter/material.dart';

class TapTest extends StatefulWidget {
  const TapTest({super.key});

  @override
  State<TapTest> createState() => _TapTestState();
}

class _TapTestState extends State<TapTest> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text('$counter'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Text('Click Me'),
                ),
                // GestureDetector(
                InkWell(
                  onTap: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.black12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
