import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/finance_chatbot/presentation/pages/finance_chatbot_page.dart';

abstract final class AppRouter {
  AppRouter._();

  static const String home = '/';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        name: 'home',
        builder: (BuildContext context, GoRouterState state) {
          return const FinanceChatbotPage();
        },
      ),
    ],
  );
}
