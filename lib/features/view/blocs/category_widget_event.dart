part of 'category_widget_bloc.dart';

class SportsByCategoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetCategories extends SportsByCategoryEvent {}

class SelectCategory extends SportsByCategoryEvent {
  SelectCategory({
    required this.idSelected,
    required this.categoryName,
  });
  final int idSelected;
  final String categoryName;

  @override
  List<Object?> get props => [idSelected, categoryName];
}
