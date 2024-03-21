import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/search/Presentation/manger/search_cubit/search_cubit.dart';
import 'package:ktaby_app/Features/search/Presentation/views/widgets/custom_conditional_builder.dart';
import 'package:ktaby_app/Features/search/Presentation/views/widgets/custom_text_from_filed.dart';

import '../../../home/data/repos/home_repo_impl.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => SearchCubit(HomeRepoImpl()),
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = SearchCubit.get(context).searchList;
          return Padding(
            padding: const EdgeInsets.only(right: 7,left: 7,top: 50, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  labelText: 'search',
                  inputType: TextInputType.text,
                  prefixIcon: const Icon(Icons.menu_book_rounded),
                  onSubmitted: (value) {
                    SearchCubit.get(context).fetchSearchBooks(search: value!);
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Search Result',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomConditionalBuilder(list: list),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
