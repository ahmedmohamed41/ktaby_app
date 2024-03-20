import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_button_details.dart';
import 'package:ktaby_app/core/utils/app_router.dart';
import 'package:ktaby_app/core/utils/style.dart';

class CustomBooksDetailsItem extends StatelessWidget {
  const CustomBooksDetailsItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 210,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                image: NetworkImage(
                  '${bookModel.volumeInfo!.imageLinks!.smallThumbnail}',
                  // 'assets/images/image25454.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            '${bookModel.volumeInfo!.title}',
            style: Styles.textStyle50.copyWith(fontFamily: 'Flu', fontSize: 25),
            textAlign: TextAlign.center,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              bookModel.volumeInfo!.authors![0],
              style: Styles.textStyle30.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  '${bookModel.volumeInfo!.averageRating}',
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '(${bookModel.volumeInfo!.ratingsCount})',
                  style:const TextStyle(fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButtonDetails(
                text: '19.99 €',
                colorText: Colors.black,
                backgroundColor: Colors.white,
                topLeft: 15,
                bottomLeft: 15,
                topRight: 0,
                bottomRight: 0,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                },
              ),
              CustomButtonDetails(
                text: 'Free Preview',
                colorText: Colors.white,
                backgroundColor: Colors.red,
                topLeft: 0,
                bottomLeft: 0,
                topRight: 15,
                bottomRight: 15,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
