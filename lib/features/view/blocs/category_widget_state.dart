part of 'category_widget_bloc.dart';

enum CategoryStatus { initial, success, error, loading, selected }

extension CategoryStatusX on CategoryStatus {
  bool get isInitial => this == CategoryStatus.initial;
  bool get isSuccess => this == CategoryStatus.success;
  bool get isError => this == CategoryStatus.error;
  bool get isLoading => this == CategoryStatus.loading;
  bool get isSelected => this == CategoryStatus.selected;
}

class CategoryWidgetState extends Equatable {
  const CategoryWidgetState({
    this.status = CategoryStatus.initial,
    List<Genre>? categories,
    this.idSelected = 0,
    SportsModel? model,
    required String errorMessage,
  }) : categories = categories ?? const [];

  final List<Genre> categories;
  final CategoryStatus status;
  final int idSelected;

  @override
  List<Object?> get props => [status, categories, idSelected];

  CategoryWidgetState copyWith({
    List<Genre>? categories,
    CategoryStatus? status,
    int? idSelected,
  }) {
    return CategoryWidgetState(
      categories: categories ?? this.categories,
      status: status ?? this.status,
      idSelected: idSelected ?? this.idSelected,
      errorMessage: '',
    );
  }
}
