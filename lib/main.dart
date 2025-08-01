import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/views/screens/forgetPasswordScreen.dart';
import 'core/views/screens/loginScreen.dart';
import 'core/views/screens/onBoardingScreen.dart';
import 'core/views/screens/singUpScreen.dart';
void main() {
  runApp(const Masar_app());
}

class Masar_app extends StatelessWidget {
  const Masar_app({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white, // لون خلفية شريط الحالة
        statusBarIconBrightness: Brightness.dark, // لون أيقونات شريط الحالة
      ),
    );
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo', // تعيين الخط الافتراضي
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ar'), // English
            Locale('en'), // English
          ],
          home:ForgetPasswordScreen() ,
    );
  }
}