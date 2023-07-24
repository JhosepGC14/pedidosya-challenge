import 'package:flutter/material.dart';

import '../design/design.dart';

class BottomNavigatorBarCustom extends StatefulWidget {
  const BottomNavigatorBarCustom(
      {super.key, required this.currentIndexPage, required this.onChangePage});

  final int currentIndexPage;
  final Function(int) onChangePage;

  @override
  State<BottomNavigatorBarCustom> createState() =>
      _BottomNavigatorBarCustomState();
}

class _BottomNavigatorBarCustomState extends State<BottomNavigatorBarCustom> {
  void onTapChangePage(int index) {
    widget.onChangePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      padding: const EdgeInsets.only(
        top: 17,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppStyles.boxShadowBottomNavigatorBar,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              onTapChangePage(0);
            },
            child: SizedBox(
              width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentIndexPage == 0
                        ? Icons.home
                        : Icons.home_outlined,
                    color: widget.currentIndexPage == 0
                        ? AppStyles.colorPlaceholderDark
                        : AppStyles.colorPlaceholder,
                    size: 24,
                  ),
                  Text(
                    'Inicio',
                    style: widget.currentIndexPage == 0
                        ? AppStyles.textBottonNavigationBarActive
                        : AppStyles.textBottonNavigationBar,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapChangePage(1);
            },
            child: SizedBox(
              width: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentIndexPage == 1
                        ? Icons.new_releases
                        : Icons.new_releases_outlined,
                    color: widget.currentIndexPage == 1
                        ? AppStyles.colorPlaceholderDark
                        : AppStyles.colorPlaceholder,
                    size: 24,
                  ),
                  Text(
                    'Promociones',
                    style: widget.currentIndexPage == 1
                        ? AppStyles.textBottonNavigationBarActive
                        : AppStyles.textBottonNavigationBar,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              onTapChangePage(2);
            },
            child: SizedBox(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentIndexPage == 2
                        ? Icons.receipt
                        : Icons.receipt_outlined,
                    color: widget.currentIndexPage == 2
                        ? AppStyles.colorPlaceholderDark
                        : AppStyles.colorPlaceholder,
                    size: 24,
                  ),
                  Text(
                    'Pedidos',
                    style: widget.currentIndexPage == 2
                        ? AppStyles.textBottonNavigationBarActive
                        : AppStyles.textBottonNavigationBar,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapChangePage(3);
            },
            child: SizedBox(
              width: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.currentIndexPage == 3
                        ? Icons.person_2
                        : Icons.person_2_outlined,
                    color: widget.currentIndexPage == 3
                        ? AppStyles.colorPlaceholderDark
                        : AppStyles.colorPlaceholder,
                    size: 24,
                  ),
                  Text(
                    'Mi perfil',
                    style: widget.currentIndexPage == 3
                        ? AppStyles.textBottonNavigationBarActive
                        : AppStyles.textBottonNavigationBar,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
