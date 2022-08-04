import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:healme/Screens/auths/SignUp.dart';


class LoginScreen extends StatelessWidget{
  LoginScreen({Key? key}) : super(key: key);
  var priceController = TextEditingController();
  var passwordController = TextEditingController();
 String? email;
String? Pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: const [
                    Colors.lightBlueAccent,
                    Colors.blueGrey,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            transform: Matrix4.translationValues(290, 160, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/drugs-login.png',
                  scale: 2.5,
                  color: Colors.white.withOpacity(0.5),
                ),
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, 490, 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25)
              ),
              color: Colors.white,
            ),
          ),
          Container(
            transform: Matrix4.translationValues(30, 300, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/HealMeLogo1.png',
                  scale:2.0 ,
                ),
                Text('Welcome to HealMe',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 27.5,
                    fontWeight: FontWeight.bold,
                  ) ,
                ),
                Text('The online pharmacy for\nBeauty & Health ',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ) ,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Quick login by:',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0,right: 35.0),
            child: Container(
              transform: Matrix4.translationValues(0, 550, 1),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.blue,
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: (){

                              },

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/fb_icon.png',
                                    scale: 40.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.blue,
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: (){},

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/g_icon.png',
                                    scale: 40.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'Google account',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1.0,
                              color: Colors.blue,
                            ),
                          ),
                          child: MaterialButton(
                              padding: EdgeInsets.all(15.0),
                              minWidth: double.infinity ,
                              height: 50.0,
                              onPressed: ()=> showModalBottomSheet(
                                context: context,
                                builder: (context)=> buildSheet(),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top:Radius.circular(25.0),
                                  ),
                                ),


                              ),

                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Don\'t You Have an Account?'
                          ),
                          TextButton(
                            onPressed: ()
                            {
                              Get.toNamed('/singUpScreen');
                            },
                            child: Text(
                                'Register'
                            ),

                          ),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget buildSheet() =>Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Sign in',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),

        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          
       
          onFieldSubmitted: (String value){
            print(value);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email Address',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            prefixIcon: Icon(
              Icons.email,
            ),
          ),
          onChanged: (value){
          email = value;
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType:TextInputType.visiblePassword ,
          obscureText: true,
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            prefixIcon: Icon(
              Icons.lock,
            ),
          ),
         onChanged: (value){
            Pass = value;
          },
        ),
        SizedBox(
          height: 25,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1.0,
                color: Colors.blue,
              ),
            ),
            child: MaterialButton(
              
              padding: EdgeInsets.all(15.0),
              minWidth: double.infinity ,
              height: 50.0,
              onPressed: ()
              {
           login(email,Pass);
                Get.toNamed('/mainScreen');
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),),
      ],
    ),
  );
}
login(email,Pass) async{

  final response = await http.post(
    Uri.parse('http://10.0.2.2:5000/api/auth/signin'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
     
    },
     body: jsonEncode({
      'email': email,
      'password': Pass,
     
    }),
  ); 
  //print(response.body);
  //SharedPreferences prefs = await SharedPreferences.getInstance();
  //var parse =jsonDecode(response.body);
  //print(parse["token"]);
  //await prefs.setString('token',parse["token"]);
  //String? token = prefs.getString("token");
  
  
}
checkToken() async{
 SharedPreferences prefs = await SharedPreferences.getInstance();
   String? token = prefs.getString("token");
   if(token!=null){
    return true;
   }
   }