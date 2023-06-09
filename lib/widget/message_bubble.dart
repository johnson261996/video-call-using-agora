
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String? profileimgUrl;
  final String? message;
  final String? date;

  const MessageBubble(
  {Key? key,
  this.profileimgUrl,
  this.message,
  this.date}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final isreceiver = profileimgUrl != null;
    print("isreceiver:${isreceiver.toString()}");
    return Row(
      mainAxisAlignment: isreceiver ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children:[
        Flexible(
          child: Column(
            crossAxisAlignment: isreceiver ? CrossAxisAlignment.start:CrossAxisAlignment.end,
            children: [
            if(isreceiver)
               Padding(
                 padding:EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(profileimgUrl!),
                    backgroundColor: Colors.grey[100],
              ),),

              Container(
                padding: EdgeInsets.all(12.0),
                constraints: BoxConstraints(maxWidth: 275.0),
                decoration: BoxDecoration(
                  color: isreceiver ? Colors.green : Colors.blue
                ),
                child: Text(message!,style: TextStyle(color: Colors.white),),
              ),
              Text(date!,style: TextStyle(fontSize: 12.0),)
            ],
          ),
        ),
        if(!isreceiver)
          SizedBox(width: 10.0,)
      ]

    );
  }
}
