import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presntation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/router.dart';

class SplashBody extends StatefulWidget  {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset>slidingAnimation;
@override
  void initState() {
  super.initState();
  initSlidingAnimation();
  navigateToHomeScreen();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4,),
       SlidingText(slidingAnimation: slidingAnimation,),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController=AnimationController
      (vsync: this,duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>
      (begin: const Offset(0,5),end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  void navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 2),(){
    Navigator.pushNamed(context, AppRoutes.homeScreen);

    });
  }
}
