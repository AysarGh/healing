import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterSaller extends StatelessWidget{
  var priceController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var addresController =  TextEditingController();
  var quantityController = TextEditingController();
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
              Text("Register as a Pharmacy",style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Name Of Pharmacy',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Name Of Manger Of Pharmacy',
                  border: OutlineInputBorder(),
                ),
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
                onPressed: (){},
                child: Text('Register'),
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