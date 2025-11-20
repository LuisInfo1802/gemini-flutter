import 'package:gemini_app/presentation/screens/basic-prompt/BasicPromptScreen.dart';
import 'package:gemini_app/presentation/screens/home/homeScreen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Homescreen()),
    GoRoute(
      path: '/basic-prompt',
      builder: (context, state) => const BasicPromptScreen(),
    ),
  ],
);
