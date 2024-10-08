import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/presentation/manager/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widget/book_deatial_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookmodel});

  final BookModel bookmodel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.bookmodel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDeatialViewBody(
          bookModel: widget.bookmodel,
        ),
      ),
    );
  }
}
