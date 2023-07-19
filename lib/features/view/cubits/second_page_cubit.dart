import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../app/core/enums.dart';
import '../../../../domain/models/sports_model.dart';
import '../../../../domain/repositories/sports_repository.dart';

part 'second_page_state.dart';

class SecondPageCubit extends Cubit<SecondPageState> {
  final SportsRepository _sportsRepository;

  SecondPageCubit(this._sportsRepository)
      : super(const SecondPageInitial(
          status: Status.error,
          errorMessage: 'BRAK WYNIKÓW',
        ));

  Future<void> getSportsModel({
    required int categoryId,
  }) async {
    emit(const SecondPageState(
        status: Status.loading, errorMessage: 'BŁĄD ŁADOWANIA'));
    try {
      final sportsModel =
          await _sportsRepository.getSportsModel(categoryId: categoryId);
      emit(
        SecondPageState(
          model: sportsModel,
          status: Status.success,
          errorMessage: '',
        ),
      );
    } catch (error) {
      emit(
        SecondPageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
