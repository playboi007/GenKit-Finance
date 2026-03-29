import 'package:signals/signals.dart';

enum UploadPhase { idle, uploading, parsed, error }

final uploadPhase = signal<UploadPhase>(UploadPhase.idle);

final uploadErrorMessage = signal<String?>(null);
