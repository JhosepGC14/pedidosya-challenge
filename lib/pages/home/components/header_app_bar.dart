import 'package:flutter/material.dart';

import '../../../shared/design/design.dart';

class HeaderAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HeaderAppBar({super.key, required this.openModalAddress});

  final Function() openModalAddress;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 75);

  @override
  State<HeaderAppBar> createState() => _HeaderAppBarState();
}

class _HeaderAppBarState extends State<HeaderAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(top: kTextTabBarHeight + 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Calle General Juan Antonio Peze 184',
                  style: AppStyles.heading2,
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppStyles.textColorParagraph,
                )
              ],
            ),
            GestureDetector(
              child: SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: AppStyles.textColorParagraph,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
