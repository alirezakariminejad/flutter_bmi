import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/widgets/background_shape_left.dart';
import 'package:flutter_bmi_app/widgets/background_shape_right.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dana'),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              RightShape(
                width: 50.0,
              ),
              // SizedBox(height: 40.0),
              LeftShape(width: 150.0),
              // SizedBox(height: 40.0),
              RightShape(width: 100.0),
              // SizedBox(height: 40.0),
              LeftShape(width: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
