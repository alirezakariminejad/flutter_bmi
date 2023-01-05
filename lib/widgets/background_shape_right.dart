import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants/constants.dart';

class RightShape extends StatelessWidget {
  const RightShape({super.key, this.width = 0.0});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            color: rubyColor,
            // color: Colors.red,
          ),
        ),
      ],
    );
  }
}
