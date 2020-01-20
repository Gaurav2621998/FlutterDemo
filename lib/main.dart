import 'package:flutter/material.dart';
import 'package:flutterdemo/LoginPage.dart';

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
            )
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
