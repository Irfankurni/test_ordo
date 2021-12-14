import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo/models/product_model.dart';
import 'package:test_ordo/pages/checkout_page.dart';
import 'package:test_ordo/theme.dart';
import 'package:test_ordo/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/image_header.png',
    'assets/image_header.png',
    'assets/image_header.png'
  ];

  int currentIndex = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              height: 35,
              width: 205,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Color(0xFFF0F0F0),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_search.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: regularPoppins.copyWith(fontSize: 12),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Cari dengan mengetik barang',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/btn_setting.png',
                width: 35,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/btn_chart.png',
                width: 35,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/btn_alert.png',
                width: 35,
              ),
            ),
          ],
        ),
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

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: [
            header(),
            imageHeader(),
            GridView.count(
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.73,
              shrinkWrap: true,
              children: [
                ProductCard(
                  ProductModel(
                      id: 1,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_one.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 2,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_two.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 3,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_three.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 4,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_four.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 5,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_five.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 6,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_six.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 7,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_eight.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
                ProductCard(
                  ProductModel(
                      id: 1,
                      name: 'Loremp Ipsum',
                      imageUrl: 'assets/product_one.png',
                      priceBefore: '6000',
                      priceAfter: '4500'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.assignment,
              color: greenColor,
            ),
            icon: Icon(Icons.assignment, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.swap_horiz,
              color: greenColor,
            ),
            icon: Icon(Icons.swap_horiz, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: greenColor,
            ),
            icon: Icon(Icons.home, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.assessment,
              color: greenColor,
            ),
            icon: Icon(Icons.assessment, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: greenColor,
            ),
            icon: Icon(Icons.person, color: Colors.grey),
            label: '',
          ),
        ],
      ),
    );
  }
}
