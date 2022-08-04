
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


final selectCitiesControler = TextEditingController();

class EditProfile extends StatefulWidget {
  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  var productNameController = TextEditingController();
  var priceController = TextEditingController();
  var quantityController = TextEditingController();
  var sideEffectController = TextEditingController();
  var descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.blueGrey,
          icon: Icon(
            Icons.clear,
            size: 30.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Edit profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [


          IconButton(
            padding: EdgeInsets.only(right: 20),
            onPressed: () {
              print("1231231");
            },
            icon: Icon(
              Icons.check,
              color: Colors.blueGrey,
              size: 30.0,
            ),
          ),

        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10),
                            )
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/UserIcon.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueGrey,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: productNameController,
                  decoration: InputDecoration(
                    enabled: true,
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: 'Full Name',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: priceController,
                  decoration: InputDecoration(
                    enabled: true,
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: 'Email Address',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: quantityController,
                  decoration: InputDecoration(
                    prefixText: '+970 | ',
                    enabled: true,
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: 'Phone Number',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: '',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: sideEffectController,
                  decoration: InputDecoration(
                    enabled: true,
                    contentPadding: EdgeInsets.only(bottom: 3),
                    labelText: 'Birth Date',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'DD/MM/YYYY',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String lableText, String holderhind, bool number) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: TextFormField(
        decoration: InputDecoration(
          prefixText: number ? '+970 | ' : null,
          enabled: true,
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: lableText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: holderhind,
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
