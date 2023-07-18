part of 'first_page_cubit.dart';

class FirstPageState {
  const FirstPageState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final SportsModel? model;
  final Status status;
  final String? errorMessage;
}

abstract class FirstPageSuccesWidget extends Equatable {
  const FirstPageSuccesWidget(
      {required status, required String errorMessage, SportsModel? model});

  @override
  List<Object> get props => [];
}

class FirstPageInitial extends FirstPageState {
  const FirstPageInitial({required super.status, required super.errorMessage});
}
