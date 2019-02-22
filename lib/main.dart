import 'package:flutter/material.dart';
import './login.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
     debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(10.0),
        ),
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}