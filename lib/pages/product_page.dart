import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/models/rating_model.dart';
import 'package:test_ordo/theme.dart';
import 'package:test_ordo/widgets/review_card.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<String> imgList = [
    'assets/image_product.png',
    'assets/image_product.png',
    'assets/image_product.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        elevation: 0,
        backgroundColor: bg2Color,
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/btn_back.png',
                  width: 30,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'PRODUK DETAIL',
                style: boldPoppins.copyWith(fontSize: 18, color: blue2Color),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: blue2Color,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: redColor,
            ),
          ),
        ],
      );
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 8,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? blueColor : blue2Color,
        ),
      );
    }

    Widget imageHeader() {
      int index = -1;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: imgList
                .map((item) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(
                        item,
                        height: 280,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(
          top: 20,
          left: 23,
          right: 15,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: redColor,
              spreadRadius: 10,
              blurRadius: 5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Judul
            Row(
              children: [
                Text(
                  'Tas Gucci',
                  style: boldPoppins.copyWith(
                    fontSize: 24,
                    color: greenColor,
                  ),
                ),
                Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: yellowColor,
                  ),
                  child: Center(
                    child: Text(
                      'Barang Bekas',
                      style: mediumPoppins.copyWith(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 25,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: blueColor,
                  ),
                  child: Center(
                    child: Text(
                      'Stok 100',
                      style: mediumPoppins.copyWith(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Harga
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp 6000',
                      style: mediumPoppins.copyWith(
                        fontSize: 20,
                        color: blue2Color,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      'Rp 4500',
                      style: boldPoppins.copyWith(
                        fontSize: 18,
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
                      style: semiboldPoppins.copyWith(
                        fontSize: 9,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            SizedBox(
              height: 15,
            ),

            //Vendor
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vendor',
                      style: semiboldPoppins.copyWith(
                        fontSize: 18,
                        color: greenColor,
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/icon_vendor.png'),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Eiger Store',
                          style: boldPoppins.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: blue2Color),
                    Text.rich(
                      TextSpan(
                        text: '5.0',
                        style: semiboldPoppins.copyWith(
                            fontSize: 16, color: blue2Color),
                        children: [
                          TextSpan(
                            text: ' | 200 Terjual',
                            style: semiboldPoppins.copyWith(
                                fontSize: 16, color: blue2Color),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),

            //Deskripsi
            Text(
              'Deskripsi',
              style: semiboldPoppins.copyWith(
                fontSize: 18,
                color: greenColor,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
              style: regularPoppins.copyWith(
                color: greenColor,
              ),
              textAlign: TextAlign.justify,
            ),

            //Review dan Penilaian
            Text(
              'Review dan Penilaian',
              style: semiboldPoppins.copyWith(
                fontSize: 18,
                color: greenColor,
              ),
            ),
            ReviewCard(
              RatingModel(
                  id: 1,
                  name: 'Maude Haull',
                  time: 14,
                  rating: 5.0,
                  imageUrl: 'assets/image_user.png',
                  ratingMessage:
                      'That\'s a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.'),
            ),
            ReviewCard(
              RatingModel(
                  id: 1,
                  name: 'Ester Howard',
                  time: 14,
                  rating: 5.0,
                  imageUrl: 'assets/image_user2.png',
                  ratingMessage:
                      'That\'s a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.'),
            ),
            SizedBox(height: 15),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg2Color,
      appBar: header(),
      body: ListView(
        children: [
          imageHeader(),
          content(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: '',
          ),
        ],
      ),
    );
  }
}
