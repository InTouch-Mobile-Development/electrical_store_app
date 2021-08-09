import 'package:flutter/material.dart';

import '../../style.dart';
AppBar DetailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: kBackgroundColor,
    leading: IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: Icon(Icons.arrow_back, color: kPrimaryColor),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      "رجوع",
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}