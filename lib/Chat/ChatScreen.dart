import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  final TextEditingController textEditingController=new TextEditingController();

  void handelSubmit(String text)
  {
      textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ChatScreen"),
          backgroundColor: Colors.blue,
        ),
        body: _textComposerWidget(),
    );
  }

  Widget _textComposerWidget(){
      return new IconTheme(
          data: new IconThemeData(
            color: Colors.blue
          ),
          child: new Scaffold(
            body: new Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: new Row(
                children: <Widget>[
                  Flexible(
                      child: new TextField(
                          decoration: new InputDecoration.collapsed(
                          hintText: "Send a message"
                        ),
                      controller:textEditingController ,
                     
                      ),
                  ),
                  new IconButton(
               
                    icon: Icon(Icons.send),
                    onPressed:()=> handelSubmit(textEditingController.text),
                  )
                ],
              ),
            ),
          )
      );

  }
}