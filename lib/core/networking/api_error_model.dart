import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

/*
Ce code Dart définit une classe de modèle appelée ApiErrorModel, 
utilisée pour représenter une erreur renvoyée par une 
API (par exemple une erreur 404, 500, etc.), et 
il utilise la bibliothèque json_serializable pour automatiser 
la conversion entre JSON et objet Dart.
*/
@JsonSerializable()
class ApiErrorModel {
  final String message;
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
