import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class loadingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/wallpaper.jpg'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Center(
            child: AnimatedSplashScreen(
              splash: Image.asset(
                  'assets/HealMeLogo1.png',
              ),
              nextScreen: LoginScreen(),
            ),
          ),
        ],
      ),
    );
  }

}