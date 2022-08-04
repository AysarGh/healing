import 'package:flutter/material.dart';
import 'package:get/get.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This is Welcome Screen',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                onPressed: ()
                {
                  Get.toNamed('/pharmcyAdmin');
                },
                child: Text(
                  'بائع',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                onPressed: ()
                {
                  Get.toNamed('/mainScreen');
                },
                child: Text(
                  'مشتري',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
