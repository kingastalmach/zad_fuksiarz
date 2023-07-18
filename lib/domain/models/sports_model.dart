import 'package:json_annotation/json_annotation.dart';

part 'sports_model.g.dart';

@JsonSerializable()
class SportsModel {
  const SportsModel({
    required this.categoryId,
    required this.categoryName,
  });

  @JsonKey(name: 'categoryId')
  final int categoryId;

  @JsonKey(name: 'categoryName')
  final String categoryName;

  factory SportsModel.fromJson(Map<String, dynamic> json) =>
      _$SportsModelFromJson(json);
  Map<String, dynamic> toJson() => _$SportsModelToJson(this);
}

// "categoryId": 2,
//       "remoteId": 0,
//       "categoryName": "Koszykówka",
//       "level": 1,
//       "parentCategory": 0,
//       "sportId": 2,
//       "eventsCount": 63,
//       "sortOrder": 40,
//       "treatAsSport": 2,
//       "categoryFlag": "null",
//       "parentName": "Sports",
//       "sportName": "Koszykówka"