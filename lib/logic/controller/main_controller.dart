import 'package:get/get.dart';
import 'package:healme/Screens/auths/cart_screen.dart';
import 'package:healme/Screens/auths/location_screen.dart';
import 'package:healme/Screens/auths/massege_screen.dart';

import '../../Screens/auths/deliviry_scren.dart';
import '../../Screens/auths/home_Screen.dart';

class MainCotroller extends GetxController{
  RxInt currentIndex = 0.obs;
  final tabs = [
    HomeScreen(),
    CartScreen(),
    MassegeScreen(),
    DelivirySceen(),
    LocationScreen(),
  ].obs;
  gotoHomeScreen(){
    currentIndex(0);
  }
  gotoMainScreen(){
    currentIndex(1);
  }
}
