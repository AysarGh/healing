import 'package:get/get.dart';
import 'package:healme/Screens/auths/RegisterSaller.dart';
import 'package:healme/Screens/auths/addpro.dart';
import 'package:healme/Screens/auths/edit_profile.dart';
import '../Screens/auths/Search.dart';
import '../Screens/auths/SignUp.dart';
import '../Screens/auths/home_Screen.dart';
import '../Screens/auths/loading.dart';
import '../Screens/auths/pharmacy_admin.dart';
import '../Screens/auths/profile.dart';
import '../Screens/auths/settings.dart';
import '../Screens/auths/viewproduct.dart';
import '../Screens/main_screen.dart';
import '../Screens/welcome_screen.dart';
import '../utils/auths/cart_items.dart';


class Routes {
  static final routes =[
    
    GetPage(
      name: '/addpro',
      page:()=> AddProduct(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/editpro',
      page:()=> EditProfile(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/loading',
      page:()=> loadingPage(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/mainScreen',
      page:()=> MainMenu(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/pharmcyAdmin',
      page:()=> pharmacyAdmin(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/cartItems',
      page:()=>AddToCart(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/welcomeScreen',
      page:()=>WelcomeScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/homeScreen',
      page:()=>HomeScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/singUpScreen',
      page:()=>SignUp(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/settings',
      page:()=>Settings(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/profile',
      page:()=>ProfileScreen(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/search',
      page: ()=>Search(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/viewProduct',
      page: ()=>ViewProduct(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/RegisterSaller',
      page:()=> RegisterSaller(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: '/pharamacy_admin',
      page:()=> pharmacyAdmin(),
      transition: Transition.zoom,
    ),
  ];
}