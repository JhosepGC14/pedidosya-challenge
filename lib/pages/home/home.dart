import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/design/design.dart';
import 'components/banner_order_plus.dart';
import 'components/box_search_locations.dart';
import 'components/header_app_bar.dart';
import 'components/list_products_discovery.dart';
import 'components/list_section_try_again.dart';
import 'components/page_view_cards_promotions.dart';
import 'components/slider_card_type_product.dart';
import 'components/type_order_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _onRefresh() async {
    // Delay the execution for 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // After the delay, you can continue with the rest of your refresh logic
    // For example, you could fetch new data from a server, update the UI, etc.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderAppBar(
        openModalAddress: () {},
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: _onRefresh,
              refreshIndicatorExtent: 80.0,
              refreshTriggerPullDistance: 150.00,
              builder: (BuildContext context,
                  RefreshIndicatorMode refreshState,
                  double pulledExtent,
                  double refreshTriggerPullDistance,
                  double refreshIndicatorExtent) {
                // Calculate the percentage of how much the user has pulled to reveal the loader partially.
                double percentage =
                    (pulledExtent / refreshTriggerPullDistance).clamp(0.0, 1.0);

                switch (refreshState) {
                  case RefreshIndicatorMode.drag:
                    return Center(
                      child: CupertinoActivityIndicator.partiallyRevealed(
                        progress: percentage,
                        color: AppStyles.primaryColor,
                        radius: 15.00,
                      ),
                    );
                  default:
                    return Center(
                      child: CupertinoActivityIndicator(
                        animating: true,
                        color: AppStyles.primaryColor,
                        radius: 15.00,
                      ),
                    );
                }
              },
            ),
            SliverToBoxAdapter(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: const [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      BoxSearchLocations(),
                      SizedBox(
                        height: 20,
                      ),
                      BannerOrderPlus(),
                      SizedBox(
                        height: 20,
                      ),
                      TypeOrderGrid(),
                      SizedBox(
                        height: 15,
                      ),
                      SliderCardTypeProduct(),
                      SizedBox(
                        height: 20,
                      ),
                      PageViewCardsPromotions(),
                      SizedBox(
                        height: 20,
                      ),
                      ListSectionTryAgain(),
                      SizedBox(
                        height: 30,
                      ),
                      ListProductsDiscovery(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
