import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_menssage_bublee.dart';
import 'package:yes_no_app/presentation/widgets/chat/messagefilebox.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_mensage_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ94xWBPia9Gzj-pkiVKjtj70gqTXvCqMuhPg&s'),
          ),
        ),
        title: const Text('Beffa 💕'),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBublee()
                          : const MyMensageBubble();
                    })),

            ///Input for sent menssages
            const Messagefilebox()
          ],
        ),
      ),
    );
  }
}
