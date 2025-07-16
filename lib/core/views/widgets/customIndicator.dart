import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key,required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:16,
      width: 16,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(8) ,
        color:isActive? kBlue :kBackgroundColor  ,
        border:Border.all(
          color: kBlue, 
          width:2 
        )
          
        
      ) ,
    );
  }
}