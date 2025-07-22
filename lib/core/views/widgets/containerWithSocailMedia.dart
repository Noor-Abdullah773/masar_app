import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerWithSocailMedia extends StatelessWidget {
  const ContainerWithSocailMedia({super.key,required this.width,required this.imagePath});
final double width;
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration:  BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 9,
            offset: Offset(0, 1),
            spreadRadius: 1,
            )
            ],
            
        ),
        child:Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:5 ),
            child: SvgPicture.asset(imagePath,width: 30,height:30,),
          ))
    );
  }
}