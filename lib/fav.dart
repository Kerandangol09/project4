import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(
    fontSize: 16.0,
    color: Colors.white

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favourite"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding:EdgeInsets.all(16.0),
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.pink,
            child: Center(child: Text("this is favourite page"),),
          ),
          SizedBox(height: 10.0,),
          Container(
            height:400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/b.jpg"),
                fit: BoxFit.cover
              )
            ),

          )
        ],
      ),
      
    );
  }
}