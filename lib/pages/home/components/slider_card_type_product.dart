import 'package:flutter/material.dart';

import '../../../shared/design/design.dart';

class SliderCardTypeProduct extends StatefulWidget {
  const SliderCardTypeProduct({super.key});

  @override
  State<SliderCardTypeProduct> createState() => _SliderCardTypeProductState();
}

class _SliderCardTypeProductState extends State<SliderCardTypeProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          CardTypeProducts(title: 'Farmacias'),
          CardTypeProducts(title: 'Bebidas'),
          CardTypeProducts(title: 'Tiendas'),
          CardTypeProducts(title: 'Mascotas'),
        ],
      ),
    );
  }
}

class CardTypeProducts extends StatelessWidget {
  const CardTypeProducts({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
        right: 0,
      ),
      margin: const EdgeInsets.only(
        right: 20,
      ),
      decoration: BoxDecoration(
        color: AppStyles.bgWhiteAccentColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyles.bodyTextBoldBlack,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/beer.png',
                height: 80,
              ),
            ],
          )
        ],
      ),
    );
  }
}
