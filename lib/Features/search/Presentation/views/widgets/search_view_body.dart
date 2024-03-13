import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/search/Presentation/views/widgets/custom_text_from_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          labelText: 'search',
          inputType: TextInputType.text,
          prefixIcon: Icon(Icons.menu_book_rounded),
        ),
      ],
    );
  }
}
