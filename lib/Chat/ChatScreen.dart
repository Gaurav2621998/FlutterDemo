import 'package:flutter/material.dart';
import 'package:flutterdemo/Chat/ChatMessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


  final TextEditingController textEditingController=new TextEditingController();
  List<ChatMessage> messageslist = <ChatMessage>[];

  void handelSubmit(String text)
  {
      textEditingController.clear();
      ChatMessage chatMessage=new ChatMessage(
        msg: text,
      );
      setState(() {
        messageslist.insert(0,chatMessage);
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ChatScreen"),
          backgroundColor: Colors.blue,
        ),
        body: new Column(
          children: <Widget>[
            new Flexible(
              child: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_,int index)=>messageslist[index],
                itemCount: messageslist.length,

              ),
            ),
            new Divider(height: 1.0,),
            new Container(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
             Container(
               height: 50.0,
               child: _textComposerWidget())
          ],
        ),
            )
          ],
        )
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