import 'package:flutter/material.dart';

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
      height: 127.8,
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/promotion_image.png',
                width: double.infinity,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/promotion_image.png',
                width: double.infinity,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/promotion_image.png',
                width: double.infinity,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/promotion_image.png',
                width: double.infinity,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/promotion_image.png',
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
