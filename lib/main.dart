import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      home: Scaffold(
          body: SafeArea(
        child: Text('علیرضا متن نمایشی'),
      )),
    );
  }
}
