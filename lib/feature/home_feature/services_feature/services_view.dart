import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/home_feature/services_feature/widget/product_list_view.dart';
import 'package:kafiil_test/feature/home_feature/widget/home_app_bar.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeAppBar(titleName: 'Services'),
        ProductListView(),
        HomeAppBar(titleName: 'Popular Services'),
        ProductListView(),
      ],
    );
  }
}
