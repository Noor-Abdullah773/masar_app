import 'package:flutter/material.dart';

import '../../constants/textStyle.dart';

class RowForLogin extends StatelessWidget {
  const RowForLogin({super.key,required this.text1,required this.text2,required this.onTap});
final String text1,text2;
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(text1,style:AppTextStyle.fontSize20_defaultColor),
                SizedBox(width:3),
                GestureDetector(
                  child: Text(text2,style:AppTextStyle.fontSize20_LoginColor),
                  onTap: onTap,
                  ),
               ],);
  }
}