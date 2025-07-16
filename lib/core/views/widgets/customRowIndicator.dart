import 'package:flutter/material.dart';

import 'customIndicator.dart';

class CustomRowIndicator extends StatelessWidget {
  const CustomRowIndicator({super.key,required this.pageIndex});
final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
    CustomIndicator(isActive:pageIndex==0 ,),
    SizedBox(width: 8,),
    CustomIndicator(isActive:pageIndex==1,),
    SizedBox(width: 8,),
    CustomIndicator(isActive:pageIndex==2 ,)

    ],);
  }
}