import 'package:flutter/material.dart';
import 'package:ktaby_app/core/style.dart';

class CustomBooksDetailsItem extends StatelessWidget {
  const CustomBooksDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 210,
          width: 150,
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
        const SizedBox(height: 25),
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          'Harry Potter',
          style: Styles.textStyle50.copyWith(fontFamily: 'Flu'),
        ),
        Text(
          'J.k.Rowling',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                '4.8',
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                '(2390)',
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                    '19.99 €',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                ),
              ),
            ),
            Container(
              width: 150,
              height: 40,
              decoration:  BoxDecoration(
                color: Colors.red[300],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                    'Free Preview',
                    style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
