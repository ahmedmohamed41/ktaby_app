import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/books_details_view_body.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BooksDetailsViewBody(),
    );
  }
}
