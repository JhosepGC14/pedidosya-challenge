import 'package:flutter/material.dart';
import 'package:flutter_challenge_pedidosya/shared/design/design.dart';

class PageViewCardsPromotions extends StatefulWidget {
  const PageViewCardsPromotions({super.key});

  @override
  State<PageViewCardsPromotions> createState() =>
      _PageViewCardsPromotionsState();
}

class _PageViewCardsPromotionsState extends State<PageViewCardsPromotions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: PageView(
        controller: PageController(
          viewportFraction: 0.90,
          initialPage: 0,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF2557F5),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: AppStyles.secondaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: AppStyles.bgYellowColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ],
      ),
    );
  }
}
