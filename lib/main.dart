import 'package:app_example/ui/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_example/constants.dart';
//import 'package:app_example/ui/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Futter Demo',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: kPrimaryColor,
                shape: StadiumBorder(),
                maximumSize: Size(double.infinity, 56),
                minimumSize: Size(double.infinity, 56)),
          ),
          inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: kPrimaryLightColor,
              iconColor: kPrimaryColor,
              prefixIconColor: kPrimaryColor,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ))),
      home: LoginScreen(),
    );
  }
}
