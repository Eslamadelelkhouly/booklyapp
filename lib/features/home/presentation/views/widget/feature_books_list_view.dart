import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/widget/custom_error_widget.dart';
import 'package:booklyapp/core/utils/widget/custom_loading_indicator.dart';
import 'package:booklyapp/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * 0.50,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomListViewItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else if (state is FeaturedBooksLoading) {
          return CustomLoadingIndicator(); // Show loading indicator
        } else {
          return CustomLoadingIndicator(); // Default to loading indicator
        }
      },
    );
  }
}
