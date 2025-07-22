import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/textStyle.dart';
import '../widgets/containerWithSocailMedia.dart';
import '../widgets/customDivider.dart';
import '../widgets/customLoginContainer.dart';
import '../widgets/customMainButton.dart';
import '../widgets/customRowForIcon.dart';
import '../widgets/customTextFormField.dart';
import '../widgets/rowForLogin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:kBackgroundColor ,
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16,top: 50,bottom:30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Center(child: CustomLoginContainer()),
             SizedBox(height:30 ,),
             CustomTextFormField(label: 'الايميل',),
             SizedBox(height:15 ,),
             Text('نسيت الرمز السري؟',
             style: AppTextStyle.fontSize14_LoginColor,
             ),
              SizedBox(height:5 ,),
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
            SizedBox(height:30 ,),
             CustomMainButton(text: 'دخول',),
            SizedBox(height:30 ,),
            CustomDivider(),
            SizedBox(height:20 ,),
            CustomRowForIcon(width:MediaQuery.of(context).size.width/2.5 ,),
            SizedBox(height:30 ,),
             RowForLogin(
                text1: 'ليس لديك حساب ؟',
                text2: 'انشاء حساب',
                onTap: () {  },)
            
          ],),
        ) ,
      ),
    );
  }
}