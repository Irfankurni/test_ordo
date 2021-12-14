import 'package:flutter/material.dart';
import 'package:test_ordo/models/product_model.dart';
import 'package:test_ordo/pages/product_page.dart';
import 'package:test_ordo/theme.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 7),
        padding: EdgeInsets.all(15),
        height: 210,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  product.imageUrl,
                  width: 210,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color(0xFFDFAE1D),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(36),
                          topRight: Radius.circular(36),
                          topLeft: Radius.circular(22),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.white,
                        ),
                        Text.rich(
                          TextSpan(
                            text: '5.0',
                            style: semiboldPoppins.copyWith(
                                fontSize: 6, color: Colors.white),
                            children: [
                              TextSpan(
                                text: ' | 200 Terjual',
                                style: mediumPoppins.copyWith(
                                    fontSize: 6, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Rp ${product.priceBefore}',
                      style: mediumInter.copyWith(
                        color: blue2Color,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      'Rp ${product.priceAfter}',
                      style: extraboldInter.copyWith(
                        fontSize: 12,
                        color: blueColor,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: blueColor,
                  ),
                  child: Center(
                    child: Text(
                      'Diskon 10%',
                      style: boldPoppins.copyWith(
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              product.name,
              style: semiboldPoppins.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
