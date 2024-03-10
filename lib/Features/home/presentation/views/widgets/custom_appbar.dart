
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,left: 15,top: 10),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 150,
            child: Image.asset(
              'assets/images/logo2.png',
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
