import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/models/genre.dart';
import '../../blocs/category_widget_bloc.dart';
import '../../blocs/sports_by_category_bloc.dart';
import 'category_item.dart';

class CategorySuccessWidget extends StatelessWidget {
  const CategorySuccessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryWidgetBloc, CategoryWidgetState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CategoryItem(
                key: ValueKey('${state.categories[index].categoryName}$index'),
                category: state.categories[index],
                callback: (Genre categorySelected) {
                  context.read<SportsByCategoryBloc>().add(
                        SelectCategory(
                          idSelected: categorySelected.categoryId,
                          categoryName: categorySelected.categoryName ?? '',
                        ),
                      );
                  context.read<CategoryWidgetBloc>().add(
                        SelectCategory(
                          idSelected: categorySelected.categoryId,
                          categoryName: '',
                        ),
                      );
                },
              );
            },
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const SizedBox(
              width: 16.0,
            ),
            itemCount: state.categories.length,
          ),
        );
      },
    );
  }
}
