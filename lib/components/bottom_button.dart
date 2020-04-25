import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class BottomButton extends StatelessWidget {
  
  BottomButton({this.onTap, this.buttonTitle});
  
  final Function onTap;
  final String buttonTitle;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButton,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}