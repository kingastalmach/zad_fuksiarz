import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../error_widget/error_widget.dart';
import 'bloc/sports_by_category_bloc.dart';
import 'sports_by_category_succes_widget.dart';

class SportsByCategoryWidget extends StatelessWidget {
  const SportsByCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportsByCategoryBloc, SportsByCategoryState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? SportsByCategorySuccessWidget(
                categoryName: state.categoryName,
                sports: state.sports,
              )
            : state.status.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.status.isError
                    ? const ErrorSportWidget()
                    : const SizedBox();
      },
    );
  }
}
