import 'package:gemini_app/presentation/screens/provider/users/user_provider.dart' hide User;
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';

import 'package:gemini_app/presentation/screens/provider/chat/is_gemini_writing.dart';
part 'basic_chat.g.dart';


final uuid = Uuid();

@riverpod
class BasicChat extends _$BasicChat{
  @override
  List<Message> build (){
    return[

    ];
  }


  void addMessage({
    required PartialText partialText, 
    required User user, 
  }){
    //Todo: Agregar condicion cuando vengan imagenes

    _addTextMessage(partialText,user);
  }

  void _addTextMessage(PartialText partialText, User author){
      final message = TextMessage(author: author, id: uuid.v4(), text: partialText.text, createdAt: DateTime.now().millisecondsSinceEpoch);
      state = [message,...state];
      _geminiTextResponse(partialText.text);
  }


  void _geminiTextResponse(String prompt) async{
    final IsGeminiWriting = ref.read(isGeminiWritingProvider.notifier);
    final geminiuser = ref.read(geminiUserProvider);
    IsGeminiWriting.setIsWriting();
    await Future.delayed(Duration(seconds: 2));
    IsGeminiWriting.setIsNotWriting();



          final message = TextMessage(author: geminiuser, id: uuid.v4(), text: 'Hola desde Solana $prompt', createdAt: DateTime.now().millisecondsSinceEpoch);
      state = [message,...state];
  }
}