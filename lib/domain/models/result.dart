import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Result {
  Result({
    required this.categoryId,
    this.categoryName,
    this.level,
    this.parentCategory,
    this.sportId,
    this.eventsCount,
    this.sortOrder,
    this.treatAsSport,
    this.parentName,
    this.sportName,
  });
  

  final int categoryId;
  final String? categoryName;
  final int? level;
  final int? parentCategory;
  final int? sportId;
  final int? eventsCount;
  final int? sortOrder;
  final int? treatAsSport;
  final String? parentName;
  final String? sportName;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
