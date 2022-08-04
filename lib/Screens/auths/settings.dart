import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit_password.dart';
import 'edit_profile.dart';
import 'terms.dart';

class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.blueGrey,
          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 20.0,
          top: 25.0,
          right: 20.0,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.person_outline_outlined,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 15.0,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              buildAccountOpitionRow(
                  context, 'Change password', ChangePassword()),
              buildAccountOpitionRow(context, 'Edit profile', EditProfile()),
              buildAccountOpitionRow(context, 'Terms of use', Terms()),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 15.0,
                thickness: 2,
              ),
              SizedBox(
                height: 10.0,
              ),
              buildNotificationRow('Notification'),
              buildNotificationRow('Account activity'),
            ],
          ),
        ),
      ),
    );
  }

  Row buildNotificationRow(
      String title,
      ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Transform.scale(
          scale: 0.6,
          child: CupertinoSwitch(
            value: true,
            onChanged: (bool val) {},
          ),
        ),
      ],
    );
  }

  Widget buildAccountOpitionRow(
      BuildContext context, String title, Widget Page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Page));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[500],
            ),
          ],
        ),
      ),
    );
  }
}
