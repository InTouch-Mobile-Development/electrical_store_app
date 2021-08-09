import 'package:electrical_store_app/models/products.dart';
import 'package:electrical_store_app/widgets/details/app_bar.dart';
import 'package:electrical_store_app/widgets/details/details_body.dart';
import 'package:flutter/material.dart';
import 'package:electrical_store_app/style.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
