// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      categoryId: json['category_id'] as int,
      categoryName: json['category_name'] as String?,
      level: json['level'] as int?,
      parentCategory: json['parent_category'] as int?,
      sportId: json['sport_id'] as int?,
      eventsCount: json['events_count'] as int?,
      sortOrder: json['sort_order'] as int?,
      treatAsSport: json['treat_as_sport'] as int?,
      parentName: json['parent_name'] as String?,
      sportName: json['sport_name'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'level': instance.level,
      'parent_category': instance.parentCategory,
      'sport_id': instance.sportId,
      'events_count': instance.eventsCount,
      'sort_order': instance.sortOrder,
      'treat_as_sport': instance.treatAsSport,
      'parent_name': instance.parentName,
      'sport_name': instance.sportName,
    };
