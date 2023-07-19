part of 'sports_by_category_bloc.dart';

class GetSportsByCategory extends SportsByCategoryEvent {
  GetSportsByCategory({
    required this.idSelected,
    required this.categoryName,
  });
  final int idSelected;
  final String categoryName;

  @override
  List<Object?> get props => [idSelected, categoryName];

  get categoryId => null;
}
