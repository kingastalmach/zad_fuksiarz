import 'package:json_annotation/json_annotation.dart';

part 'genre.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Genre {
  Genre({
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

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
  Map<String, dynamic> toJson() => _$GenreToJson(this);
}