import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myaccount/themes.dart';
import 'package:myaccount/utils/user_preferences.dart';

AppBar buildAppBar(BuildContext context) {

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.blueGrey,
    elevation: 0,
        );
}