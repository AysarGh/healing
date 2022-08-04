import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../Screens/auths/viewproduct.dart';
class CardItems extends StatelessWidget {
  const CardItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FutureBuilder(future: getProuduct(),
      builder: (context, snapshot){
        if(snapshot.data !=null){
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context,index){
return Card(
        child:Column(
          children: [
            Container(
              width: double.infinity,
              height: 190.0,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "50% off",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: (){
                                  print("object");
                                },
                                icon: Icon(
                                  Icons.add_circle,
                                  color: Colors.white,
                                )
                            ),
                            Text(
                              '\$ 50',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white
                            ),
                            onPressed: ()=>showModalBottomSheet( 
                              context: context,
                               builder: (context)=>sheetBuilder(),
                               shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          )),
                      isDismissible: true,
                      isScrollControlled: true,
                               ),
                            child: Text(
                              'Description',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset(
                      'assets/HealMeLogo1.png',
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      );
          },
          );
        }
      });
    
    
  }
  sheetBuilder() => Container(
    height: 600.0,
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage:ExactAssetImage('assets/wallpaper.jpg', scale: 1),
          radius: 75.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Paracetamol',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
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
              minWidth: 350.0 ,
              height: 50.0,
              onPressed: (){},
              child: Text(
                'Add to the cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),),
        SizedBox(
          height: 10.0,
        ),
        Divider(),
        SizedBox(
          height:7.5,
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            'Describition',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

              children: const[
                Text('Do not use more of this medication than is recommended. An overdose of paracetamol can cause serious harm. The maximum amount of paracetamol for adults is 1 gram (1000 mg) per dose and 4 grams (4000 mg) per day. Taking more paracetamol could cause damage to your liver. If you drink more than three alcoholic beverages per day, talk to your doctor before taking paracetamol and never use more than 2 grams (2000 mg) per day.'),

              ]),
        ),
      ],
    ),
  );
}
getProuduct() async{
final res = await http.get(
    Uri.parse('http://10.0.2.2:5000/api/product'));

if(res.statusCode == 200){
var jsonObj = json.decode(res.body);
return jsonObj['Product'];
}
}