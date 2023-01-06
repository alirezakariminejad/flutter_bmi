import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/constants/constants.dart';

class LeftShape extends StatelessWidget {
  const LeftShape({super.key, this.width = 0.0});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            color: greenMaterialColor,
            // color: Colors.green,
          ),
        ),
      ],
    );
  }
}
