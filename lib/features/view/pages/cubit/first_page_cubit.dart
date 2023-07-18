import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/domain/models/sports_model.dart';
import 'package:flutter_application_1/domain/repositories/sports_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app/core/enums.dart';

part 'first_page_state.dart';

class FirstPageCubit extends Cubit<FirstPageState> {
  final SportsRepository _sportsRepository;

  FirstPageCubit(this._sportsRepository)
      : super(const FirstPageInitial(
          status: Status.error,
          errorMessage: 'BRAK WYNIKÓW',
        ));

  Future<void> getSportsModel({
    required int categoryId,
  }) async {
    emit(const FirstPageState(
        status: Status.loading, errorMessage: 'BŁĄD ŁADOWANIA'));
    try {
      final sportsModel =
          await _sportsRepository.getSportsModel(categoryId: categoryId);
      emit(
        FirstPageState(
          model: sportsModel,
          status: Status.success,
          errorMessage: '',
        ),
      );
    } catch (error) {
      emit(
        FirstPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
