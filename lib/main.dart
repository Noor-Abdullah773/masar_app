import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(const Masar_app());
}

class Masar_app extends StatelessWidget {
  const Masar_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
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
    );
  }
}