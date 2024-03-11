import 'package:flutter/material.dart';
import 'package:ktaby_app/constants.dart';
import 'package:ktaby_app/style.dart';

import '../books_detials_view.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context,const BooksDetailsView());
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 15),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/image25454.png',
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
                      style: Styles.textStyle30.copyWith(
                          fontFamily: 'Flu'
                      ),
                    ),
                    const Text(
                      'J.k.Rowling',
                      style:Styles.textStyle14,

                    ),
                     Expanded(
                      child: Row(
                        children: [
                          Text(
                            '19.99 €',
                            style: Styles.textStyle18.copyWith(
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          const Spacer(),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('4.8',),
                              SizedBox(
                                width: 2,
                              ),
                              Text('(2390)'),
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
