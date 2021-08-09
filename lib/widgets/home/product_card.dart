import 'package:flutter/material.dart';
import 'package:electrical_store_app/style.dart';
import 'package:electrical_store_app/models/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, this.itemIndex, this.product, this.press})
      : super(key: key);
  final int itemIndex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(8, 15),
                        blurRadius: 25,
                        color: Colors.black12)
                  ]),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 166.0,
                  width: 200.0,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
                top: 30.0, //top: 15.0,
                right: 0.0,
                // bottom: 15.0,
                child: SizedBox(
                  height: 136,
                  // the size of image is 200, then: ScreenWidth - 200
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          product.subTitle,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 1.5,
                              vertical: 5.0), // 30 px, 5 px
                          decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(22.0)),
                          child: Text('السعر: ${product.price}\$'),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
