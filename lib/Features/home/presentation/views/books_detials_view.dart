import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/presentation/manger/book_detatils_cubit/book_details_cubit.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/books_details_view_body.dart';

class BooksDetailsView extends StatefulWidget {
  const BooksDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BooksDetailsView> createState() => _BooksDetailsViewState();
}

class _BooksDetailsViewState extends State<BooksDetailsView> {
  @override
  void initState() {
    BlocProvider.of<BooksDetailsCubit>(context).fetchBooksDetails(
        category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BooksDetailsViewBody( bookModel:widget.bookModel,),
    );
  }
}
