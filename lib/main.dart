import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presntation/views/splash.dart';

void main() {
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:kPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
    // themeMode: ThemeMode.dark,
      home: const SplashScreen(),
    );
  }
}


