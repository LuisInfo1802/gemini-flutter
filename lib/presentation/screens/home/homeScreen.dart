import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Google Gemini")),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.person_outline),
            ),
            title: const Text("Prompt Basico de Gemini"),
            subtitle: const Text("Usando un modelo Flash"),
            onTap: () => context.push('/basic-prompt'),
          ),
        ],
      ),
    );
  }
}
