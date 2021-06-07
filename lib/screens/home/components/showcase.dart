import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/global.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import 'item_card.dart';

class Showcase extends StatefulWidget {
  @override
  _Showcase createState() => _Showcase();
}

class _Showcase extends State<Showcase> {
// class Showcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Global.selectedCategoryIndex);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => buildDetail(context, index)),
    );
  }

  Widget buildDetail(BuildContext context, int index) {
    return ItemCard(
      product: products[index],
      press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: products[index],
            ),
          )),
    );
  }
}
