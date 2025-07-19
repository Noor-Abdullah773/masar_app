import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/textStyle.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,required this.label,this.onChanged,this.validator,this.suffixIcon
  ,this.obscureText=false});
final String label;
final void Function(String)? onChanged;
final String? Function(String?)? validator;
final Widget? suffixIcon;
final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText,
      onChanged: onChanged,
      validator:validator ,
      decoration:  InputDecoration(
        suffixIcon:suffixIcon,
        contentPadding:EdgeInsets.symmetric(vertical:8,horizontal: 16 ) ,
        fillColor: Colors.white,
        filled: true,
        label: Text(label),
        labelStyle: AppTextStyle.labelStyle,
        border:OutlineInputBorder(
          borderRadius:BorderRadius.circular(8) ,
          borderSide:const BorderSide(
           color:kLightGrey, 
            width:1
          )
        ),
        enabledBorder:const  OutlineInputBorder(
           borderSide:BorderSide(
            color:kLightGrey, 
            width:1
          )
        )

      )
    );
  }
}