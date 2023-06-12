class SportsModel {
  const SportsModel({
    required this.categoryId,
  });

  final int categoryId;

  factory SportsModel.fromJson(Map<String, dynamic> json) {
    return SportsModel(
      categoryId: json['categoryId'] as int,
    );
  }
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