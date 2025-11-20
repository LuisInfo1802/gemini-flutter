import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart'; as types;
class BasicPromptScreen extends StatelessWidget {
  const BasicPromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Prompt Basico")),
      body: Chat(messages: [], onSendPressed: (types.PartialText partialText){}, user: user)
    );
  }
}
