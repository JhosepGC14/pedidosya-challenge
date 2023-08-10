import 'package:flutter/material.dart';
import 'package:flutter_challenge_pedidosya/shared/design/design.dart';

class ListProductsDiscovery extends StatefulWidget {
  const ListProductsDiscovery({super.key});

  @override
  State<ListProductsDiscovery> createState() => _ListProductsDiscoveryState();
}

class _ListProductsDiscoveryState extends State<ListProductsDiscovery> {
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
          height: 190,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            children: const [
              SizedBox(width: 20),
              CardProductDescovery(),
              CardProductDescovery(),
              CardProductDescovery(),
              CardProductDescovery(),
              CardProductDescovery(),
            ],
          ),
        )
      ],
    );
  }
}

class CardProductDescovery extends StatelessWidget {
  const CardProductDescovery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      margin: const EdgeInsets.only(right: 20),
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
              'assets/images/tacachito.png',
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppStyles.colorLineInput,
          ),
          const Expanded(
            child: Row(
              children: [Text('Texto de la description')],
            ),
          ),
        ],
      ),
    );
  }
}
