import 'package:flutter/material.dart';

import '../../constants/textStyle.dart';

class CustomContainerWithIcon extends StatelessWidget {
  const CustomContainerWithIcon({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
     color: Colors.white,
     child:Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
       child: Row(children: [
        Icon(Icons.close,color: Colors.red,),
        SizedBox(width:10),
        Text(text,style:AppTextStyle.fontSize20_defaultColor ,)
       ],),
     ) ,
    );
  }
}