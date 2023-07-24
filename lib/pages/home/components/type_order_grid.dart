import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../shared/design/design.dart';

class TypeOrderGrid extends StatefulWidget {
  const TypeOrderGrid({super.key});

  @override
  State<TypeOrderGrid> createState() => _TypeOrderGridState();
}

class _TypeOrderGridState extends State<TypeOrderGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              padding: const EdgeInsets.only(
                top: 35,
              ),
              decoration: BoxDecoration(
                color: AppStyles.bgYellowColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Restaurantes',
                      style: AppStyles.bodyTextBoldBlack,
                    ),
                  ),
                  Image.asset(
                    'assets/images/pollo.png',
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ItemGridTypeOrder(
              title: 'PedidosYa\nMarket',
              stylesTextTitle: AppStyles.bodyTextBoldWhite,
              bgItemTypeOrder: AppStyles.primaryColor,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ItemGridTypeOrder(
              title: 'Supermercados',
              stylesTextTitle: AppStyles.bodyTextBoldBlack,
              bgItemTypeOrder: AppStyles.bgBlueAccentColor,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ItemGridTypeOrder(
              title: 'Envíos',
              stylesTextTitle: AppStyles.bodyTextBoldBlack,
              bgItemTypeOrder: AppStyles.bgGrayLighterColor,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: ItemGridTypeOrder(
              title: 'Retiro en local',
              stylesTextTitle: AppStyles.bodyTextBoldBlack,
              bgItemTypeOrder: AppStyles.bgGrayLightColor,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemGridTypeOrder extends StatelessWidget {
  ItemGridTypeOrder({
    super.key,
    required this.title,
    required this.stylesTextTitle,
    required this.bgItemTypeOrder,
  });

  final String title;
  TextStyle stylesTextTitle = AppStyles.bodyTextBoldWhite;
  Color? bgItemTypeOrder = AppStyles.primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        color: bgItemTypeOrder,
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: stylesTextTitle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/supermarket.png',
                width: 90,
              ),
            ],
          )
        ],
      ),
    );
  }
}
