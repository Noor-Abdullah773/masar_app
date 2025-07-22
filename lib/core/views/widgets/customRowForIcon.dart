import 'package:flutter/material.dart';
import 'containerWithSocailMedia.dart';

class CustomRowForIcon extends StatelessWidget {
  const CustomRowForIcon({super.key,required this.width});
final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      ContainerWithSocailMedia(
              width: width,
              imagePath: 'assets/images/facebook.svg',
              ),
      ContainerWithSocailMedia(
              width: width,
              imagePath: 'assets/images/google.svg',
              )
    ],);
  }
}