import 'package:flutter/material.dart';
import 'package:healme/utils/auths/card_items.dart';


class PharmacyProfile extends StatelessWidget {
  const PharmacyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: (){},
        ),
        title: Text(
          'Pahrmacy Profile',
          style: TextStyle(
            color : Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search_rounded,
              )
          )
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => CardItems(),
              itemCount: 10,
            ),
          ),
        ),
      )
    );
  }
}
