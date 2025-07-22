import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width:MediaQuery.of(context).size.width/2.5 ,
                  child: Divider(
                    color: kDarkGrey,
                    thickness:1
                  ),
                ),
                Text('أو',style:TextStyle(color: kBlue),),
                 SizedBox(
                  width:MediaQuery.of(context).size.width/2.5 ,
                  child: Divider(
                    color: kDarkGrey,
                    thickness:1
                  ),
                ),
              ],
            );
  }
}