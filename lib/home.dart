import "package:flutter/material.dart";
import './list.dart';
import './login.dart';
import './fav.dart';


void main() {
  runApp(new MaterialApp(
   
    
    home: new Home(),
    theme: ThemeData(
      primarySwatch: Colors.green
    ),

    ));
}
class Home extends StatefulWidget {
  @override
 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Container> listphotos = new List();
  var character=[
    { "name":"No Caption", 'date':"2019", "image":"assets/c.jpg"},
    { "name":"@ Caption","date":"2019", "image":"assets/d.jpg"},
   
  ];
   _alllist()async {
     for (var i=0; i<character.length; i++ ){
       final newcharacter = character[i];
       final String image = newcharacter["image"];
      listphotos.add(
        new Container(child: new Card( child:
          new Column(
            children: <Widget>[
              new Image.asset(image, fit: BoxFit.cover,),
              new Text(newcharacter['name'], style: new TextStyle(fontSize: 18.0),)
            ],
          )
        )
        )

      );
     }

   }

  @override
  void initState(){
    _alllist();
    super.initState();
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Photos", style: new TextStyle(color:Colors.white)),
      ),
      body: new GridView.count(
        crossAxisCount: 1,
        children: listphotos
      ),
      drawer: Drawer(
        elevation: 2.0,
        child: _buildDrawer(context),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        foregroundColor: Colors.red,
        backgroundColor: Colors.black38,
        onPressed:(){
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (BuildContext context)=>FavPage()
          ));
        },
      ),
    );
  }
}
Widget _buildDrawer(BuildContext  context)
{
  return ListView(children: <Widget>[
DrawerHeader(
  
  decoration: BoxDecoration(
    color: Colors.lightGreen,

  ),
  child: ListView(
    
    children: <Widget>[
      new Text("Welcome"),
     
        new Text(
       "kas143@gmail.com"),

        
      
        
        
    ],
  )
  

),

ListTile(
  leading: Icon(Icons.home),
  title: Text("Home"),
  onTap: (){},
),
ListTile(
  leading: Icon(Icons.list),
  title: Text("List"),
  onTap: (){
   
    Navigator.pushReplacement(
      context, MaterialPageRoute(
      builder: (BuildContext context)=>ListPage()
      
    ));
  },
),
ListTile(
  leading: IconButton(
    color: Colors.lightGreen,
    iconSize: 40.0,
    icon: Icon(Icons.backspace),
    onPressed: (){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (BuildContext context)=>LoginPage()
      ));
    },
  ),
),
 
 


  ],);
}