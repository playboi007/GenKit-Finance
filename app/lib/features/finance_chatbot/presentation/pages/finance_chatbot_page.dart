import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

/// Shell page for CSV upload, analysis kit, and chat (placeholders until Stitch UI).
class FinanceChatbotPage extends StatelessWidget {
  const FinanceChatbotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.appName)),
      body: const Center(
        child: Text('Finance chatbot — wire upload and analysis here.'),
      ),
    );
  }
}
