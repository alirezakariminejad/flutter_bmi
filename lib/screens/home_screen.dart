import 'package:flutter/material.dart';
import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Row(
                  children: [
                    Container(
                      width: 100.0,
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
                          hintText: 'وزن',
                          hintStyle: TextStyle(
                            color: rubyColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      width: 100.0,
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
                          hintText: 'قد',
                          hintStyle: TextStyle(
                            color: rubyColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40.0),
            

            // RightShape(width: 250.0),
            // LeftShape(width: 150.0),
            // // SizedBox(height: 40.0),
            // RightShape(width: 100.0),
            // // SizedBox(height: 40.0),
            // LeftShape(width: 50.0),
          ],
        ),
      ),
    );
  }
}
