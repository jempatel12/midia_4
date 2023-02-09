import 'package:flutter/material.dart';
import 'package:midia_5/screens/home.dart';
import 'package:midia_5/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  bool isLogin = prefs.getBool('login') ?? false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: (isLogin) ? "login_page" : "/",
    routes: {
      "/": (context) => const HomePage(),
      "login_page": (context) => const LoginPage(),
    },
  ));
}