import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLoginContainer extends StatelessWidget {
  const CustomLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/images/Logo.svg',
        height:MediaQuery.of(context).size.width/3 ,
        width:MediaQuery.of(context).size.width/3,
        );
  }
}