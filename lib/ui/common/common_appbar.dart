
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'DLOG 활용 가이드',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
          ],
        ),
      ),
      shape: const Border(
        bottom: BorderSide(
          color: Color(0xFFEEEEEE),
          width: 1,
        ),
      ),
    );
  }


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}