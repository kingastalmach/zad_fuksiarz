import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/repositories/sports_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import '../../../../../domain/models/genre.dart';
import '../../../../../domain/models/sports_model.dart';

part 'category_widget_event.dart';
part 'category_widget_state.dart';

class CategoryWidgetBloc
    extends Bloc<SportsByCategoryEvent, CategoryWidgetState> {
  CategoryWidgetBloc({
    required this.sportsRepository,
  }) : super(const CategoryWidgetState(
          errorMessage: '',
        )) {
    on<GetCategories>(_mapGetCategoriesEventToState);
    on<SelectCategory>(_mapSelectCategoryWidgetEventToState);
  }
  final SportsRepository sportsRepository;

  void _mapGetCategoriesEventToState(
      GetCategories event, Emitter<CategoryWidgetState> emit) async {
    emit(state.copyWith(status: CategoryStatus.loading));
    try {
      final genres = await sportsRepository.getGenres();
      emit(
        state.copyWith(
          status: CategoryStatus.success,
          categories: genres,
        ),
      );
    } catch (error, stacktrace) {
      Logger().e(stacktrace);
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }

  void _mapSelectCategoryWidgetEventToState(
      SelectCategory event, Emitter<CategoryWidgetState> emit) async {
    emit(
      state.copyWith(
        status: CategoryStatus.selected,
        idSelected: event.idSelected,
      ),
    );
  }
}
