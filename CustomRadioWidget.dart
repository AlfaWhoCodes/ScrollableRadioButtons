// Designed and Coded by - M Alfaz
//Instagram :  @alfWhoCodes
// Follow For More

import 'package:flutter/material.dart';

class CustomRadioWidget extends StatefulWidget {
  const CustomRadioWidget({Key? key}) : super(key: key);

  @override
  State<CustomRadioWidget> createState() => _CustomRadioWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _CustomRadioWidgetState extends State<CustomRadioWidget> {
  int value = 1;
  // ignore: non_constant_identifier_names
  Widget CustomRadioButton(String text, int index) {
    return Container(
      margin: const EdgeInsets.only(left: 6, top: 4, bottom: 4, right: 6),
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        child: Text(
          text,
          style: TextStyle(
            color: (value == index) ? Colors.white : Colors.black38,
          ),
        ),
        style: ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(BorderSide(
              width: 1, color: (value == index) ? Colors.black : Colors.white)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          )),
          backgroundColor: (value == index)
              ? MaterialStateProperty.all<Color>(Colors.black)
              : MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6, right: 6),
      width: double.infinity,
      height: 36,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomRadioButton("1 Min", 1),
          CustomRadioButton("30 Min", 2),
          CustomRadioButton("1 Hour", 3),
          CustomRadioButton("4 Hours", 4),
          CustomRadioButton("1 Day", 5),
          CustomRadioButton("1 Week", 6),
          CustomRadioButton("1 Month", 7)
        ],
      ),
    );
  }
}
