
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/textStyle.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final String hint;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  CustomDropdown({
    required this.value,
    required this.hint,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical:12,horizontal: 16 ) ,
      decoration: BoxDecoration(
        color :Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kLightGrey, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            flex:22,
            child: DropdownButton<String>(
              isDense:true,
              icon:SizedBox.shrink(),
              underline: SizedBox.shrink(),
              hint: Text(hint,style: AppTextStyle.labelStyle ,),
              value: value,
              onChanged: onChanged,
              style: AppTextStyle.labelStyle,
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        
          Expanded(
            //flex: 1,
            child: Icon(Icons.arrow_drop_down)),
        ],
      ),
    );
  }
}