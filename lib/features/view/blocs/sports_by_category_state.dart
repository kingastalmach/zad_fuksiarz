part of 'sports_by_category_bloc.dart';

enum SportsByCategoryStatus { initial, success, error, loading }

extension SportsByCategoryStatusX on SportsByCategoryStatus {
  bool get isInitial => this == SportsByCategoryStatus.initial;
  bool get isSuccess => this == SportsByCategoryStatus.success;
  bool get isError => this == SportsByCategoryStatus.error;
  bool get isLoading => this == SportsByCategoryStatus.loading;
}

class SportsByCategoryState extends Equatable {
  const SportsByCategoryState({
    this.status = SportsByCategoryStatus.initial,
    List<Result>? sports,
    String? categoryName,
  })  : sports = sports ?? const [],
        categoryName = categoryName ?? '';

  final List<Result> sports;
  final SportsByCategoryStatus status;
  final String categoryName;

  @override
  List<Object?> get props => [status, sports, categoryName];

  SportsByCategoryState copyWith({
    List<Result>? sports,
    SportsByCategoryStatus? status,
    String? categoryName,
  }) {
    return SportsByCategoryState(
      sports: sports ?? this.sports,
      status: status ?? this.status,
      categoryName: categoryName ?? this.categoryName,
    );
  }
}
