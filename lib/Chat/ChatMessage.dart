import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {

  String username="Gaurav";
  String msg;
  ChatMessage({this.msg});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(username[0]),
            ),
          ),

          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(username, style: Theme.of(context).textTheme.subhead,),

              new Container(
                margin: const EdgeInsets.only(top:5.0),
                child: Text(msg),
              )

            ],
          )
        ],
      ),
      
    );
  }
}