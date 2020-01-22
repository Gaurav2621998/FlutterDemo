import 'package:flutter/material.dart';
import 'package:flutterdemo/Chat/ChatScreen.dart';

class ChatActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ChatScreen")
      ),
      body: ChatScreen(),
    );
  }
}