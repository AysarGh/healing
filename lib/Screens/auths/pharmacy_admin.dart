import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healme/Screens/auths/addpro.dart';

class pharmacyAdmin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.subdirectory_arrow_left,
          ),
        ),
        title: Text(
          'Main page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: double.infinity,
                  height: 150.0,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        width: 120.0,
                        height: 120.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'Acamol',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: CircleAvatar(
                maxRadius: 30,
                backgroundColor: Colors.blueGrey,
                child: MaterialButton(
                    height: 50.0,
                    minWidth: 50.0,
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,

                      ),
                    ),
                    onPressed: (){
                      Get.toNamed('/addpro');
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}