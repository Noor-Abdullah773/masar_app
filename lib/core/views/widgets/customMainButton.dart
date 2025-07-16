import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:48 ,
      decoration:  BoxDecoration(
        color: kBlue,
        borderRadius: BorderRadius.circular(8)
      ),
      child:Center(child:Text(text) ,),
    );
  }
}