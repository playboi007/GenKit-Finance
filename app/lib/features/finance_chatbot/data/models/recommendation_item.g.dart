// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_item.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class RecommendationItem {
  factory RecommendationItem.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  RecommendationItem._(this._json);

  RecommendationItem({
    required String title,
    required String rationale,
    String? followUpPrompt,
  }) {
    _json = {
      'title': title,
      'rationale': rationale,
      'followUpPrompt': ?followUpPrompt,
    };
  }

  late final Map<String, dynamic> _json;

  static const SchemanticType<RecommendationItem> $schema =
      _RecommendationItemTypeFactory();

  String get title {
    return _json['title'] as String;
  }

  set title(String value) {
    _json['title'] = value;
  }

  String get rationale {
    return _json['rationale'] as String;
  }

  set rationale(String value) {
    _json['rationale'] = value;
  }

  String? get followUpPrompt {
    return _json['followUpPrompt'] as String?;
  }

  set followUpPrompt(String? value) {
    if (value == null) {
      _json.remove('followUpPrompt');
    } else {
      _json['followUpPrompt'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _RecommendationItemTypeFactory
    extends SchemanticType<RecommendationItem> {
  const _RecommendationItemTypeFactory();

  @override
  RecommendationItem parse(Object? json) {
    return RecommendationItem._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'RecommendationItem',
    definition: $Schema
        .object(
          properties: {
            'title': $Schema.string(),
            'rationale': $Schema.string(),
            'followUpPrompt': $Schema.string(),
          },
          required: ['title', 'rationale'],
        )
        .value,
    dependencies: [],
  );
}
