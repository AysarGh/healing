import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
class DelivirySceen extends StatelessWidget {
  DelivirySceen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (DelivirySceen() == null) {
      return Container(
        color: Colors.white,
        child:Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child:  Column(
              children: [
                Icon(
                  Icons.delivery_dining,
                  size: 200.0,
                  color: Colors.black,
                ),
                Text(
                  'Your Delivery screen is empty , ',
                  style: TextStyle(
                    fontSize:20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'please take your order ',
                      style: TextStyle(
                        fontSize:20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                        Icons.tag_faces
                    ),
                    Text(
                      '.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'To take your order ,',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(
                      onPressed: ()
                      {
                      },
                      child: Text(
                        'press here',
                        style: TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }else {
      return Text('Welcome');
    }
  }
}
