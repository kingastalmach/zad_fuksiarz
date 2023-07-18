import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/category_widget_bloc.dart';
import 'category_succes_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryWidgetBloc, CategoryWidgetState>(
      buildWhen: (previous, current) => current.status.isSuccess,
      builder: (context, state) {
        return const CategorySuccessWidget();
      },
    );
  }
}
