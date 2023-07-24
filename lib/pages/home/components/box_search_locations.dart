import 'package:flutter/material.dart';

import '../../../shared/design/design.dart';

class BoxSearchLocations extends StatefulWidget {
  const BoxSearchLocations({super.key});

  @override
  State<BoxSearchLocations> createState() => _BoxSearchLocationsState();
}

class _BoxSearchLocationsState extends State<BoxSearchLocations> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        padding: const EdgeInsets.only(
          left: 15,
          top: 7,
          bottom: 7,
          right: 7,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          border: Border.all(
            width: 1,
            color: AppStyles.colorLineInput!,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Buscar locales',
              style: TextStyle(
                color: AppStyles.colorPlaceholder,
              ),
            ),
            Container(
              width: 33,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
