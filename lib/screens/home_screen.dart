import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/widgets/background_shape_left.dart';
import 'package:flutter_bmi_app/widgets/background_shape_right.dart';
import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String resultText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'BMI خودت رو محاسبه کن',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
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
                        controller: weightController,
                        style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: rubyColor,
                        ),
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
                        controller: heightController,
                        style: TextStyle(
                          fontSize: 24.0,
                          // fontWeight: FontWeight.bold,
                          color: rubyColor,
                        ),
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
            InkWell(
              onTap: () {
                final weight = double.parse(weightController.text);
                final height = double.parse(heightController.text);

                setState(() {
                  resultBMI = weight / (height * height);

                  if (resultBMI > 25) {
                    resultText = 'شما اضافه وزن دارید';
                  } else if (resultBMI >= 18.5 && resultBMI < 25) {
                    resultText = 'وزن شما نرمال است';
                  } else {
                    resultText = 'وزن شما کمتر از حد نرمال است';
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  top: 15.0,
                  bottom: 15.0,
                ),
                child: Text(
                  'محاسبه کن',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              '$resultText',
              style: TextStyle(
                fontSize: 28.0,
                color: redMaterialColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            RightShape(width: 250.0),
            LeftShape(width: 150.0),
          ],
        ),
      ),
    );
  }
}
