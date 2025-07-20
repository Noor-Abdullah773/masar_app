import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/textStyle.dart';
import '../widgets/customContainerWithIcon.dart';
import '../widgets/customDropDown.dart';
import '../widgets/customLoginContainer.dart';
import '../widgets/customMainButton.dart';
import '../widgets/customSmallDropDown.dart';
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
 String? subject;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackgroundColor ,
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16,top: 50,bottom:30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(child: CustomLoginContainer()),
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
          SizedBox(height:20 ,),
            CustomDropdown(
            hint: 'الصف الدراسي',
            value:levelValue,
            items:['1','2'],
            onChanged: (newValue) {
              setState(() {
                levelValue = newValue;
              });
            },
          ),
          SizedBox(height:30 ,),
          Text('اختر المواد التي تريد التركيز عليها',style:AppTextStyle.fontSize24 ,),
          SizedBox(height: 10 ,),
               SizedBox(
          width:( MediaQuery.of(context).size.width/2)-20,
           child: CustomSmallDropdown(
              hint: 'إضافة المادة',
              items:['1','2'],
              onChanged: (newValue) {
                setState(() {
                  subject = newValue;
                });
              },
            ),
               ),
               SizedBox(height: 5,),
               SizedBox(
                width:( MediaQuery.of(context).size.width/2)-20,
                child: CustomContainerWithIcon(text: 'رياضيات',)),
               SizedBox(height:30 ,),
               Text('اختر الأهداف التي تريد تحقيقها',style:AppTextStyle.fontSize24 ,),
                SizedBox(height: 10 ,),
               SizedBox(
          width:( MediaQuery.of(context).size.width/2)-20,
           child: CustomSmallDropdown(
              hint: 'إضافة هدف',
              items:['1','2'],
              onChanged: (newValue) {
                setState(() {
                  subject = newValue;
                });
              },
            ),
               ),
               SizedBox(height: 5,),
               SizedBox(
                width:( MediaQuery.of(context).size.width/2),
                child: CustomContainerWithIcon(text: 'رفع معدلي',)),
               SizedBox(height:30 ,),
               CustomMainButton(text: 'انشاء',),
               SizedBox(height: 20,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('لديك حساب ؟',style:AppTextStyle.fontSize20_defaultColor),
                SizedBox(width:3),
                Text(' تسجيل الدخول',style:AppTextStyle.fontSize20_LoginColor),
               ],)
            
            
          ],),
        ),
      ),
    );
  }
}