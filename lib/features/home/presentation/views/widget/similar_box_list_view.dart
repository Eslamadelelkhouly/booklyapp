import 'package:booklyapp/core/utils/widget/custom_error_widget.dart';
import 'package:booklyapp/core/utils/widget/custom_loading_indicator.dart';
import 'package:booklyapp/features/home/presentation/manager/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomListViewItem(
                    imageUrl:
                        'https://m.media-amazon.com/images/M/MV5BNDg5OGQ0MDgtZGM0ZS00NzgzLTllOGQtNjQ0YzU2M2RkMjQyXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_FMjpg_UX980_.jpg',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
    ;
  }
}
