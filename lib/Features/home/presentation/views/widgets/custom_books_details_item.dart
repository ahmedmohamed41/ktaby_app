import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ktaby_app/Features/home/presentation/views/widgets/custom_button_details.dart';
import 'package:ktaby_app/core/utils/app_router.dart';
import 'package:ktaby_app/core/utils/style.dart';

class CustomBooksDetailsItem extends StatefulWidget {
  const CustomBooksDetailsItem({super.key});

  @override
  State<CustomBooksDetailsItem> createState() => _CustomBooksDetailsItemState();
}

class _CustomBooksDetailsItemState extends State<CustomBooksDetailsItem> {
  bool boolStar = false;

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
        Opacity(
          opacity: 0.7,
          child: Text(
            'J.k.Rowling',
            style: Styles.textStyle30.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    boolStar = !boolStar;
                  });
                },
                icon: boolStar == true
                    ? const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 163, 145, 89),
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
    );
  }
}
