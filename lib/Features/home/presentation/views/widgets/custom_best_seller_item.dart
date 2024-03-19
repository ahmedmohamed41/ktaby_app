import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ktaby_app/Features/home/data/models/book_model/book_model.dart';
import 'package:ktaby_app/core/utils/app_router.dart';
import 'package:ktaby_app/core/utils/style.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key, required this.books});

  final bool boolStar = false;
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBooksDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 15),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: NetworkImage(
                      '${books.volumeInfo!.imageLinks!.smallThumbnail}'
                      //'assets/images/image25454.png',
                      ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 225,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Harry Potter \nand The Goblet on Fire',
                      style: Styles.textStyle30.copyWith(fontFamily: 'Flu'),
                    ),
                    const Text(
                      'J.k.Rowling',
                      style: Styles.textStyle14,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text('19.99 €',
                              style: Styles.textStyle18.copyWith(
                                fontWeight: FontWeight.bold,
                              )),
                          const Spacer(),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  //   boolStar = !boolStar;
                                },
                                icon: boolStar == true
                                    ? const Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 163, 145, 89),
                                      )
                                    : const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Text(
                                '4.8',
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                '(2390)',
                                style: TextStyle(fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
