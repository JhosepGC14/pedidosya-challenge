import 'package:flutter/material.dart';
import 'package:flutter_challenge_pedidosya/shared/design/design.dart';

class ListSectionTryAgain extends StatefulWidget {
  const ListSectionTryAgain({super.key});

  @override
  State<ListSectionTryAgain> createState() => _ListSectionTryAgainState();
}

class _ListSectionTryAgainState extends State<ListSectionTryAgain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Vuelve a disfrutarlos',
            style: AppStyles.heading1,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 140,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            children: const [
              SizedBox(width: 20),
              CardProductAgain(),
              CardProductAgain(),
              CardProductAgain(),
              CardProductAgain(),
              CardProductAgain(),
            ],
          ),
        )
      ],
    );
  }
}

class CardProductAgain extends StatelessWidget {
  const CardProductAgain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: 1,
          color: AppStyles.colorLineInput!,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: Image.asset(
              'assets/images/lena_y_carbon.png',
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppStyles.colorLineInput,
          ),
          Expanded(
            child: Center(
              child: Text(
                'Envio S/ 3.40',
                style: AppStyles.textCardTryAgain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
