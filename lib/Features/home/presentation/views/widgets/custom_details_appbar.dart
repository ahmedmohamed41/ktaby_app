import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_router.dart';

class CustomDetailsAppbar extends StatelessWidget {
  const CustomDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 35,bottom: 5),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop(AppRouter.kHomeView);
            },
            icon: const Icon(Icons.close),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
