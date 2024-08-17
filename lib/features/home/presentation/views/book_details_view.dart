import 'package:booklyapp/features/home/presentation/views/widget/book_deatial_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: const BookDeatialViewBody()),
    );
  }
}
