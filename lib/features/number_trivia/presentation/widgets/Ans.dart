import 'package:flutter/material.dart';


class Ans extends StatelessWidget {


  final Function selecthandler;
  final String btntext;

  Ans(this.selecthandler,this.btntext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
        // color: Colors.blue,
        
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(btntext),
           onPressed: selecthandler));
  }
}
