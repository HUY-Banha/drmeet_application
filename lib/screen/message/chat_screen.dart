import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  const ChatScreen({super.key, required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(widget.name),
      ),
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: [],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: MaterialButton(
                    onPressed: () {},
                    shape: const CircleBorder(),
                    child: const Icon(CupertinoIcons.forward),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintText: "Message",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
