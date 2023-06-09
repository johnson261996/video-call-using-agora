
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageTextField extends StatelessWidget {
  const MessageTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          autofocus: false,
          textAlignVertical: TextAlignVertical.center,
          textCapitalization: TextCapitalization.sentences,
          textInputAction: TextInputAction.send,
          style: TextStyle(fontSize: 15.0, color: Colors.black),
          decoration: InputDecoration(
            hintText: 'Your message',
            filled: true,
            contentPadding: const EdgeInsets.only(
                left: 14.0, bottom: 6.0, top: 8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
      );
  }
}
