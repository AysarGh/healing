import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healme/Screens/auths/side_nav_bar.dart';
import 'package:healme/logic/controller/main_controller.dart';


class MainMenu extends StatelessWidget {
  MainMenu({Key? key}) : super(key: key);

  final controller = Get.put(MainCotroller());

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            backgroundColor: Colors.blueGrey,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.blueGrey,
                ),
                label: "",
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.blueGrey,
                ),
                label: "",
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.chat,
                  color: Colors.blueGrey,
                ),
                label: "",
                icon: Icon(
                  Icons.chat,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.delivery_dining,
                  color: Colors.blueGrey,
                ),
                label: "",
                icon: Icon(
                  Icons.delivery_dining,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.location_on_rounded,
                  color: Colors.blueGrey,
                ),
                label: "",
                icon: Icon(
                  Icons.location_on_rounded,
                  color: Colors.grey,
                ),
              ),
            ],
            onTap: (index){
              controller.currentIndex.value = index;
            },
          ),
          drawer: NavBar(),
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            // leading: IconButton(
            //   icon: Icon(
            //       Icons.menu
            //   ),
            //   onPressed: ()
            //   {
            //     Get.toNamed('/settings');
            //   },
            // ),
            title: Text(
              'HealMe',
            ),
            actions: [
              IconButton(
                onPressed:()
                {
                  Get.toNamed('/search');
                },
                icon: Icon(
                    Icons.search
                ),)
            ],
          ),
          body:  IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs.value,
          )
      );
    }
    );
  }
}
