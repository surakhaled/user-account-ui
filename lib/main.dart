import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myaccount/page/edit_profile_page.dart';
import 'package:myaccount/themes.dart';
import 'package:myaccount/utils/user_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'My Account';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blue.shade300,
            dividerColor: Colors.black,
          ),

          title: title,
          home: EditProfilePage(),
      );
  }
}