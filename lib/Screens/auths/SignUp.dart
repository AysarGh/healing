import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatelessWidget{
  var priceController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var addresController =  TextEditingController();
  var quantityController = TextEditingController();
  String? email;
String? Pass;
String? name;
String? addres;
String? phone;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [ Text("Sign",style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),),
                    Text("Up",style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                  onChanged: (value){
            name = value;
          },
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: addresController,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on),
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                  onChanged: (value){
            addres = value;
          },
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: priceController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                  onChanged: (value){
            email = value;
          },
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: quantityController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                   onChanged: (value){
            phone = value;
          },
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,

                decoration: InputDecoration(
                  labelText: 'Password',

                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
                  onChanged: (value){
            Pass = value;
          },
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(

                keyboardType: TextInputType.visiblePassword,
                obscureText: true,

                decoration: InputDecoration(
                  labelText: 'Confirm Password',

                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: (){
                   signup(email,Pass,name,addres,phone);
                   //Navigator.pushNamed(context, routeName);
                },
                child: Text('Sign Up'),
                style : TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: TextStyle(
                        fontSize:20.0
                    ),
                    backgroundColor: Colors.blue,
                    minimumSize:Size(100,60)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
signup(email,Pass,name,addres,phone) async{

  final response = await http.post(
    Uri.parse('http://10.0.2.2:5000/api/auth/signup'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
     body: jsonEncode({
      'email': email,
      'password': Pass,
      'name':name,
      'address':addres,
     'phoneNumber':phone,
     "isPharmacy": false
    }),
  ); 
  print(response.body);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var parse =jsonDecode(response.body);
 print(parse["token"]);
  await prefs.setString('token',parse["token"]);
  String? token = prefs.getString("token");
  
  
  
  
}
 