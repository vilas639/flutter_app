import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String qn;
  Questions(this.qn);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qn,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
