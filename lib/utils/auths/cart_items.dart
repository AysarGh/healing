import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healme/logic/controller/main_controller.dart';

import '../../routes/routes.dart';
class AddToCart extends StatefulWidget {
  AddToCart({Key? key}) : super(key: key);
  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    //If we don't have an items in the cart
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Icon(
              Icons.shopping_cart,
              size:200.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "There is no products in your cart,",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "To add items to your cart , ",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                GetX<MainCotroller>(
                  init: MainCotroller(),
                  builder:(controller)=>controller.currentIndex.value ==90 ? Text('Hello'): GestureDetector(
                    onTap: ()
                    {
                      controller.gotoHomeScreen();
                    },
                    child: Text(
                      'Press here',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );



    //If we have an items in the cart
    // return Container(
    //   child: Expanded(
    //     child: ListView.builder(
    //       scrollDirection: Axis.vertical,
    //       shrinkWrap: true,
    //       itemBuilder: (context, index) => Column(
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(
    //               right: 10.0
    //             ),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Container(
    //                   padding: EdgeInsets.only(left: 5.0,top: 5.0),
    //                   width: 350.0,
    //                   height: 110.0,
    //                   decoration: BoxDecoration(
    //                       color: Colors.blueGrey,
    //                       borderRadius: BorderRadius.circular(10.0)
    //                   ),
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             'Title',
    //                             style: TextStyle(
    //                                 fontSize: 25.0,
    //                                 color: Colors.white
    //                             ),
    //                           ),
    //                           Spacer(),
    //                           Row(
    //                             children: [
    //                               Text(
    //                                 "\$ 50",
    //                                 style: TextStyle(
    //                                     color: Colors.white,
    //                                     fontSize: 25.0,
    //                                     fontWeight: FontWeight.bold
    //                                 ),
    //                               ),
    //                               Text(
    //                                 " + ",
    //                                 style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 20.0,
    //                                 ),
    //                               ),
    //                               Text(
    //                                 "\$10",
    //                                 style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 25.0,
    //                                   fontWeight: FontWeight.bold
    //                                 ),
    //                               ),
    //                               SizedBox(
    //                                 width: 3.0,
    //                               ),
    //                               Text(
    //                                 'Deliviry',
    //                                 style: TextStyle(
    //                                   color: Colors.white,
    //                                   fontSize: 20.0,
    //                                   fontWeight: FontWeight.bold
    //
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                       Container(
    //                         width: 100.0,
    //                         height: 90.0,
    //                         margin: EdgeInsets.only(right: 15.0),
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10.0),
    //                           color: Colors.white,
    //                           image: DecorationImage(
    //                             image: AssetImage(
    //                               "assets/images/slideOne.png",
    //                             ),
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20.0,
    //           ),
    //         ],
    //       ),
    //       itemCount: 2,
    //     ),
    //   ),
    // );
  }
}
