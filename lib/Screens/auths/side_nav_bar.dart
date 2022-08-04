import 'package:flutter/material.dart';
import '../../utils/auths/cart_items.dart';
import 'Search.dart';
import 'profile.dart';
import 'settings.dart';
import 'terms.dart';
class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('h'),
                accountEmail:Text('h'),
                currentAccountPicture:CircleAvatar(
                    child:ClipOval(
                      child: Image.asset(
                        'assets/UserIcon.png',
                        height: 90,
                        width: 90,
                        fit:BoxFit.cover,),
                    )
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_outline_outlined,),
                title: Text('Profile'),
                onTap: () => selectedItems(context,0),
              ),
              ListTile(
                leading: Icon(Icons.search,),
                title: Text('Search'),
                onTap: () => selectedItems(context,1),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.shopping_cart,),
                title: Text('Cart'),
                onTap: () => selectedItems(context,2),
              ),

              ListTile(
                leading: Icon(Icons.branding_watermark_sharp,),
                title: Text('Terms'),
                onTap: () => selectedItems(context,3),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings,),
                title: Text('Settings'),
                onTap: () => selectedItems(context,4),
              ),
              ListTile(
                leading: Icon(Icons.logout,),
                title: Text('Log Out'),
                onTap: () => selectedItems(context,5),
              ),
            ],
          ),
        ),
    );
  }
  selectedItems(BuildContext context, int index) {
    Navigator.of(context).pop;
    switch(index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>ProfileScreen()),);
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>Search()),);
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>AddToCart()),);
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>Terms()),);
        break;

      case 4:
        Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>Settings()),);
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(builder:
            (context)=>Settings()),);
        break;
    }
  }
}