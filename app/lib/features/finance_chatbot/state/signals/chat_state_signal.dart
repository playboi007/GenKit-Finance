import 'package:signals/signals.dart';

final chatMessages = listSignal<String>(<String>[]);

final chatInputDraft = signal<String>('');
