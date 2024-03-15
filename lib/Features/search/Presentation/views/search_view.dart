import 'package:flutter/material.dart';
import 'package:ktaby_app/Features/search/Presentation/views/widgets/search_result_list_view.dart';
import 'package:ktaby_app/Features/search/Presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchViewBody(),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Search Result',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SearchResultListView(),
            ),
          ],
        ),
      ),
    );
  }
}
