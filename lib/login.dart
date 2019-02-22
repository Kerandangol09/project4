import 'package:flutter/material.dart';
import './home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String background = "assets/a.jpg";
  String email = "";
  String password = "";
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(background), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email Address",
                    prefixIcon: Icon(Icons.alternate_email),
                    fillColor: Colors.white70,
                    filled: true,
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.vpn_key),
                      fillColor: Colors.white70,
                      filled: true),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  
                  child: 
                  Builder(
                    builder :( BuildContext context)=> RaisedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        if (email != "admin" || password != "12345") {
                          
                          _showSnackbar(context);
                          
                        } else {
                        
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext contex) => Home()));
                                  
                        }
                    
                      }),
                  )
                ),
              ],
            ),
          )),
    );
  }
}



_showSnackbar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("Your email or password is incorrect"),
    action: SnackBarAction(
      label: "undo!",
      onPressed: () {},
      textColor: Colors.pink,
    ),
  ));
}
