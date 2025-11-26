

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'user_provider.g.dart';

@riverpod
types.User geminiUser( Ref ref){
  final geminiUser = types.User(
  id: 'geimini-id',
  firstName: 'Solana IA',
  imageUrl:
      'https://d2q79iu7y748jz.cloudfront.net/s/_squarelogo/256x256/852b81328a0392ced6a4ea2d6605abee',
);

return geminiUser;
}




@riverpod
types.User User(Ref ref){
  final user = types.User(
  id: 'user-id-abc',
  firstName: 'Luis Angel',
  lastName: 'Sanchez',
  imageUrl:
      'https://i.pinimg.com/originals/ef/cd/09/efcd09ee321f51424c99890c73557c8c.jpg',
);

return user;

}