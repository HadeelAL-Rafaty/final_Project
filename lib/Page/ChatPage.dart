import 'package:final_project/CustomUI/CustomCard.dart';
import 'package:flutter/material.dart';

import '../Model/ChatModel.dart';
import '../Screen/SelectContact.dart';

class ChatPage extends StatefulWidget {
  ChatPage({this.chatmodels, this.sourchat}) : super();
  final List<ChatModel>? chatmodels;
  final ChatModel? sourchat;

  @override
  State<StatefulWidget> createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.chatmodels!.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: widget.chatmodels![index],
          sourchat: widget.sourchat!,
        ),
      ),
    );
  }
}
