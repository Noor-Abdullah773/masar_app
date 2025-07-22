import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/textStyle.dart';
import '../widgets/customLoginContainer.dart';
import '../widgets/customMainButton.dart';
import '../widgets/customTextFormField.dart';
import '../widgets/rowForLogin.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackgroundColor ,
      body:Padding(
        padding: EdgeInsets.only(left: 16, right: 16,top: 50,bottom:30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(child: CustomLoginContainer()),
             SizedBox(height:30 ,),
             Text('سوف يتم إرسال رمز التحقق إلى بريدك الإلكتروني',style:AppTextStyle.fontSize24 ,),
             SizedBox(height:30 ,),
             CustomTextFormField(label: 'الايميل',),
             SizedBox(height:30 ,),
              CustomMainButton(text: 'ارسل',),
            SizedBox(height:30 ,),
             RowForLogin(
                text1: 'العودة الى صفحة',
                text2: ' تسجيل الدخول', 
                onTap: () {  },)
          ],),
        )) ,
    );
  }
}