import 'package:agora_video_call/chat/views/chat_screen.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white
    ),
    builder: (_,child)=> _Unfocus(child: child!),
    home: const ChatScreen(),
    );
  }
}

class _Unfocus extends StatelessWidget {
  final Widget child;
  const _Unfocus({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}

