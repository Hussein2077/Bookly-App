import 'package:bookly_app/features/home/presentation/views/book_details.dart';
import 'package:bookly_app/features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/features/splash/presntation/views/splash.dart';
import 'package:flutter/material.dart';
Map<String, Widget Function(BuildContext context)> routes={
  AppRoutes.homeScreen: (context)=>const HomeScreen(),
  AppRoutes.splashScreen: (context)=>const SplashScreen(),
  AppRoutes.bookDetails:(context)=>const BookDetailsScreen(),

};
class AppRoutes {
  static const homeScreen='homeScreen';
  static const splashScreen='splash';
  static const bookDetails='bookDetails';


}