import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/components/bottom_navigator_bar.dart';
import 'home/home.dart';
import 'orders/order.dart';
import 'profile/profile.dart';
import 'promotions/promotions.dart';

class ViewsApp extends StatefulWidget {
  const ViewsApp({super.key});

  @override
  State<ViewsApp> createState() => _ViewsAppState();
}

class _ViewsAppState extends State<ViewsApp> {
  int currentIndexPage = 0;

  List<Widget> listPages = [
    const HomePage(),
    const PromotionsPage(),
    const OrdersPage(),
    const ProfilePage(),
  ];

  void onChangePage(int indexPageSelected) {
    setState(() {
      currentIndexPage = indexPageSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));
    
    return Scaffold(
      bottomNavigationBar: BottomNavigatorBarCustom(
        currentIndexPage: currentIndexPage,
        onChangePage: onChangePage,
      ),
      body: listPages[currentIndexPage],
    );
  }
}
