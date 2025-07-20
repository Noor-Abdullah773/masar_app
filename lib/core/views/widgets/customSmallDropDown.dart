
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/textStyle.dart';

class CustomSmallDropdown extends StatelessWidget {
  final String? value;
  final String hint;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  CustomSmallDropdown({
     this.value,
    required this.hint,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical:12,horizontal: 16 ) ,
      decoration: BoxDecoration(
        color :Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kLightGrey, width: 1),
      ),
      child: Row(
        children: [
            Icon(Icons.add,color:kBlue ,),
            SizedBox(width: 8,),
          DropdownButton<String>(
            isDense:true,
            icon:SizedBox.shrink(),
            underline: SizedBox.shrink(),
            hint: Text(hint,style: AppTextStyle.labelStyle ,),
            value: value,
            onChanged: onChanged,
            style: AppTextStyle.fontSize20_LoginColor,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        
        ],
      ),
    );
  }
}