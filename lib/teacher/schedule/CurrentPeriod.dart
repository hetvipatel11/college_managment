import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'globals.dart';
import 'timeutils.dart';

class CurrentPeriod extends StatefulWidget {
  CurrentState createState() => currentPeriodState;
}

class CurrentState extends State<CurrentPeriod> {
  void refresh() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Text(determinePeriod(),
        style: TextStyle(
            color: Colors.green,
            fontFamily: 'ProductSans',
            fontSize: SizeConfig.safeBlockHorizontal * 10));
  }
}