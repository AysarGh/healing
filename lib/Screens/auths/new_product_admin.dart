import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NewProduct extends StatefulWidget {
  @override
  _NewProduct createState() => _NewProduct();
}

class _NewProduct extends State<NewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.blueGrey,
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.blueGrey,
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          'Add product',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView(

          children:[
            Slidable(
              endActionPane:ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context){}),
                      icon: Icons.delete,
                      backgroundColor: Colors.red,
                      flex: 1 ,
                    )
                  ]
              ),
              startActionPane: ActionPane(
                  motion: ScrollMotion(),

                  children: [
                    SlidableAction(
                      onPressed: ((context){
                        //edit
                      }),
                      icon: Icons.edit,
                      backgroundColor: Colors.blue,
                      flex: 1 ,
                    ),
                    SlidableAction(
                      onPressed: (context)=> BottomSheet(context),
                      icon: Icons.menu,
                      backgroundColor: Colors.green,
                      flex: 1 ,
                    )
                  ]
              ),
              child: Container(
                color: Colors.grey[300],
                child: ListTile(
                  title: Text('Acamol'),
                  subtitle: Text('15.0 NIS'),
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/wallpaper.jpg', scale: 1),
                    radius: 50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Slidable(
              endActionPane:ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context){
                        //edit
                      }),
                      icon: Icons.delete,
                      backgroundColor: Colors.red,
                      flex: 1 ,
                    )
                  ]
              ),
              startActionPane: ActionPane(
                  motion: ScrollMotion(),

                  children: [
                    SlidableAction(
                      onPressed: ((context){
                        //edit
                      }),
                      icon: Icons.edit,
                      backgroundColor: Colors.blue,
                      flex: 1 ,
                    ),
                    SlidableAction(
                      onPressed: (context)=> BottomSheet(context),
                      icon: Icons.menu,
                      backgroundColor: Colors.green,
                      flex: 1 ,
                    )
                  ]
              ),
              child: Container(
                color: Colors.grey[300],
                child: ListTile(
                  title: Text('Pandage'),
                  subtitle: Text('4.0 NIS'),
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/wallpaper.jpg', scale: 1),
                    radius: 50.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Slidable(
              endActionPane:ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: ((context){
                        //edit
                      }),
                      icon: Icons.delete,
                      backgroundColor: Colors.red,
                      flex: 1 ,
                    )
                  ]
              ),
              startActionPane: ActionPane(
                  motion: ScrollMotion(),

                  children: [
                    SlidableAction(
                      onPressed: ((context){
                        //edit
                      }),
                      icon: Icons.edit,
                      backgroundColor: Colors.blue,
                      flex: 1 ,
                    ),
                    SlidableAction(
                      onPressed: (context)=> BottomSheet(context),
                      icon: Icons.menu,
                      backgroundColor: Colors.green,
                      flex: 1 ,
                    )
                  ]
              ),
              child: Container(
                color: Colors.grey[300],
                child: ListTile(
                  style:ListTileStyle.list,
                  title: Text('Declofine'),
                  subtitle: Text('60.0 NIS'),
                  leading: CircleAvatar(
                    backgroundImage:
                    ExactAssetImage('assets/wallpaper.jpg', scale: 1),
                    radius: 50.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> BottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context:context,
        builder: (context)=> sheetBuilder(),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            )),
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.white.withOpacity(0.8)
    );
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
