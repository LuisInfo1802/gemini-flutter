import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gemini_app/presentation/screens/provider/Users/user_provider.dart';
import 'package:gemini_app/presentation/screens/provider/chat/basic_chat.dart';
import 'package:gemini_app/presentation/screens/provider/chat/is_gemini_writing.dart';


final messages = <types.Message>[
 // types.TextMessage(author: geminiUser, id: Uuid().v4(), text: 'Hola Pikachu'),

  // types.TextMessage(author: user, id: Uuid().v4(), text: 'Hola '),
];

class BasicPromptScreen extends ConsumerWidget {
  const BasicPromptScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final geminiUser = ref.watch(geminiUserProvider);
    final user = ref.watch(userProvider);
    final isGeminiWriting = ref.watch(isGeminiWritingProvider);
    final chatMessages = ref.watch(basicChatProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Prompt Basico")),
      body: Chat(
        messages: chatMessages,

        //On Send message
        onSendPressed: (types.PartialText partialText) {
          final basicChatNotifier = ref.read(basicChatProvider.notifier);
          basicChatNotifier.addMessage(partialText: partialText, user: user);
        },
        user: user,
        theme: DarkChatTheme(),
        showUserAvatars: true,
        showUserNames: true,
        typingIndicatorOptions: TypingIndicatorOptions(
          customTypingWidget: const Center(
            child: Text("Solana IA esta pensando..."),
          ),
        typingUsers: isGeminiWriting ? [geminiUser] : [],
        ),
      ),
    );
  }
}
