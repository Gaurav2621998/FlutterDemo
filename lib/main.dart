import 'package:flutter/material.dart';
import 'package:flutterdemo/Chat/ChatActivity.dart';
import 'package:flutterdemo/Crypto/CryptoHome.dart';
import 'package:flutterdemo/LoginPage.dart';
import 'package:flutterdemo/MusicPlayer/MusicHome.dart';

import 'Chat/ChatScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new LoginPage(),
      theme: new ThemeData(
        primaryColor: Colors.teal,
        brightness: Brightness.light,
        accentColor: Colors.blue
      ),
    );


  }
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String data="Welcome Spider";

  void changedata()
  {
      setState(() {
        if(data.startsWith("H"))
      {
        data="Welcome Spider";
      }
      else{
          data="Hello Gaurav";
      }
      });
  }


  Widget _body()
  {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(data,style: TextStyle(
              color: Colors.blue,
              fontSize: 22.0
            ),),
            new RaisedButton(
              child: Text("Click",style: TextStyle(
                color: Colors.white
              ),),
              onPressed: changedata,
              color: Colors.red,
            ),
             new RaisedButton(
              child: Text("Open ChatScreen",style: TextStyle(
                color: Colors.white
              ),),
              onPressed: ()=>{
                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChatScreen()),
                                )
              },
              color: Colors.red,
            ),
            new RaisedButton(
              child: Text("Open Cryptocurrency",style: TextStyle(
                color: Colors.white
              ),),
              onPressed: ()=>{
                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CryptoHome()),
                                )
              },
              color: Colors.red,
            ),
            new RaisedButton(
              child: Text("Open Music Player",style: TextStyle(
                color: Colors.white
              ),),
              onPressed: ()=>{
                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MusicHome()),
                                )
              },
              color: Colors.red,
            ),//for Music Player
            

          ],
        ),
      ),

    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Hello Appbar "),
      ),
     // body: new Center(child: Text("Heloo  Statefullwidget"),),
     body: _body(),
     floatingActionButton: new FloatingActionButton(
      child: new Icon(Icons.add),
      onPressed: changedata,
      ),

    );
  }
}
