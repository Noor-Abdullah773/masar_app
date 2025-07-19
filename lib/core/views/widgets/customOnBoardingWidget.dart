import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masar_app/core/constants/data.dart';
import '../../constants/colors.dart';
import '../../constants/textStyle.dart';
import 'customRowIndicator.dart';

class CustomOnBoardingWidget extends StatelessWidget {
  const CustomOnBoardingWidget({super.key,required this.pageIndex});
final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackgroundColor ,
      body: ListView(
        children: [
        SizedBox(
          height: 320 ,
          child:SvgPicture.asset(listOnBoarding[pageIndex].imagePath)
          ),
        Text(listOnBoarding[pageIndex].title,style:AppTextStyle.defaultFontStyle ,textAlign:TextAlign.center ,),
        Text(listOnBoarding[pageIndex].subTitle,style:AppTextStyle.subtitleFontStyle ,textAlign:TextAlign.center ,),
         SizedBox(height:30,),
         Center(child: CustomRowIndicator(pageIndex: pageIndex,)),
        
    
      ],),
    );
  }
}