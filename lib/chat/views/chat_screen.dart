
import 'package:agora_video_call/chat/views/videocall_screen.dart';
import 'package:agora_video_call/widget/message_bubble.dart';
import 'package:agora_video_call/widget/message_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ChatScreen extends StatefulWidget {
  const  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: ()async {
            await [Permission.camera, Permission.microphone].request();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => VideoCallScreen()));
          }
    , icon:const Icon(Icons.video_call))


        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.only(bottom: 16),
                reverse: true,
                itemBuilder: (_,index) => _messages[index],
                separatorBuilder:(_,__ ) => const SizedBox(height: 15.0,),
                itemCount: _messages.length),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
 MessageBubble( profileimgUrl: "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
  message: "Können Sie die Agora-Videoanruf-App installieren?",
  date:"Jun 05 2:57 PM"),
  MessageBubble( //profileimgUrl: "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
      message: "can you install the agora video call app",
      date:"Jun 05 2:57 PM"),
  MessageBubble( profileimgUrl: "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
      message: "poți instala aplicația de apel video agora",
      date:"Jun 05 2:57 PM"),
  MessageBubble(// profileimgUrl: "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
      message: "¿Puedes instalar la aplicación de videollamadas de agora?",
      date:"Jun 05 2:57 PM"),
  MessageBubble( profileimgUrl: "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png",
      message: "puoi installare l'app di videochiamata agora",
      date:"Jun 05 2:57 PM"),
];
