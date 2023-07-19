part of 'second_page_cubit.dart';

class SecondPageState {
  const SecondPageState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final SportsModel? model;
  final Status status;
  final String? errorMessage;
}

abstract class SecondPageSuccesWidget extends Equatable {
  const SecondPageSuccesWidget(
      {required status, required String errorMessage, SportsModel? model});

  @override
  List<Object> get props => [];
}

class SecondPageInitial extends SecondPageState {
  const SecondPageInitial({required super.status, required super.errorMessage});
}
