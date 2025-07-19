import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../widgets/customDropDown.dart';
import '../widgets/customLoginContainer.dart';
import '../widgets/customTextFormField.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
 bool obscureText=true;
 String? levelValue;
 String? classValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackgroundColor ,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          SizedBox(height:50 ,),
          CustomLoginContainer(),
          SizedBox(height:30 ,),
          CustomTextFormField(label: 'الاسم',),
          SizedBox(height:20 ,),
          CustomTextFormField(label: 'الايميل',),
          SizedBox(height:20 ,),
          CustomTextFormField(
            label: 'الرمز السري',
            obscureText:obscureText,
            suffixIcon:IconButton(onPressed:(){
               obscureText = !obscureText;
                 print(obscureText);
              setState(() {
                
              });
            },
             icon:obscureText ? Icon(Icons.visibility_off) : Icon(Icons.remove_red_eye ))
          ),
          SizedBox(height:20 ,),
          CustomDropdown(
          hint: 'المرحلة الدراسية',
          value:levelValue,
          items:['1','2'],
          onChanged: (newValue) {
            setState(() {
              levelValue = newValue;
            });
          },
        ),
          
          
        ],),
      ),
    );
  }
}