import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants/constants.dart';
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
        appBar: AppBar(
          title: Text(
            'BMI خودت رو محاسبه کن',
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 275.0,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: rubyColor),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن خود را وارد نمایید',
                        hintStyle: TextStyle(
                          color: rubyColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              )

              // RightShape(width: 250.0),
              // // SizedBox(height: 40.0),
              // LeftShape(width: 150.0),
              // // SizedBox(height: 40.0),
              // RightShape(width: 100.0),
              // // SizedBox(height: 40.0),
              // LeftShape(width: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
