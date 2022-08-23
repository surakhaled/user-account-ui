import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:myaccount/model/user.dart';
import 'package:myaccount/utils/user_preferences.dart';
import 'package:myaccount/widget/appbar_widget.dart';
import 'package:myaccount/widget/button_widget.dart';
import 'package:myaccount/widget/profile_widget.dart';
import 'package:myaccount/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: Center(
          //padding: EdgeInsets.symmetric(horizontal: 32),
          //physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () async {},
              ),
              Text(
                "My Account",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (name) {},
                ),
              ),
              //SizedBox(height: 24),
              Container(
                margin: EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
              ),
            ],
          )
          //SizedBox(height: 24),
        ),
      );
}
