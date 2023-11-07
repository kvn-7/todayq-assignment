import 'package:todayq_assignment/utils/jsons/translations_json.dart';

/// Extension for the translation.
/// [translate] is the translated string.
extension Translation on String {
  String get translate {
    final translations = TranslationJson.translations;

    return translations[this]?['en'] ?? this;
  }
}
