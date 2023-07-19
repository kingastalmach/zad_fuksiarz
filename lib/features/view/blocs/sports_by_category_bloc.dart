import 'package:flutter_application_1/domain/models/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import '../../../../../domain/repositories/sports_repository.dart';
import 'package:equatable/equatable.dart';
import 'category_widget_bloc.dart';

part 'sports_by_category_event.dart';
part 'sports_by_category_state.dart';

class SportsByCategoryBloc
    extends Bloc<SportsByCategoryEvent, SportsByCategoryState> {
  SportsByCategoryBloc({
    required this.sportsRepository,
  }) : super(const SportsByCategoryState()) {
    on<GetSportsByCategory>(_mapGetSportsByCategoryEventToState);
  }
  final SportsRepository sportsRepository;

  void _mapGetSportsByCategoryEventToState(
      GetSportsByCategory event, Emitter<SportsByCategoryState> emit) async {
    try {
      emit(state.copyWith(status: SportsByCategoryStatus.loading));

      final sportsByCategory =
          await sportsRepository.getSportsData(event.categoryId);
      emit(
        state.copyWith(
          status: SportsByCategoryStatus.success,
          sports: sportsByCategory,
          categoryName: event.categoryName,
        ),
      );
    } catch (error, stacktrace) {
      Logger().e(stacktrace);
      emit(state.copyWith(status: SportsByCategoryStatus.error));
    }
  }
}
