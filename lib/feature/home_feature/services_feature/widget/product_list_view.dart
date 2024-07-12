import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/home_feature/services_feature/widget/product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.075,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) => const ProductItem(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    ));
  }
}
