import 'package:flutter/material.dart';
import 'package:flutter_challenge_pedidosya/shared/design/design.dart';

class BannerOrderPlus extends StatefulWidget {
  const BannerOrderPlus({super.key});

  @override
  State<BannerOrderPlus> createState() => _BannerOrderPlusState();
}

class _BannerOrderPlusState extends State<BannerOrderPlus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 13,
        bottom: 13,
        right: 14,
        left: 14,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                color: AppStyles.primaryColor!,
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLUS CON VISA ES GRATIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Envíos gratis ilimitados y mucho más',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  )
                ],
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    );
  }
}
