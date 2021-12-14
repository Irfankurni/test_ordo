import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';

class ProductCheckout extends StatefulWidget {
  const ProductCheckout({Key? key}) : super(key: key);

  @override
  _ProductCheckoutState createState() => _ProductCheckoutState();
}

class _ProductCheckoutState extends State<ProductCheckout> {
  bool viewVisible = true;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget secondarystackBehindDismiss() {
      return Container(
        color: blue2Color,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.delete, color: Colors.white),
              Text('Move to trash', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      );
    }

    return Dismissible(
      background: secondarystackBehindDismiss(),
      key: ObjectKey(1),
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          print('Remove item');
        }
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/image_product.png',
                  width: 90,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tas Gucci',
                      style: semiboldPoppins.copyWith(fontSize: 18),
                    ),
                    Text(
                      'Rp 75.000',
                      style: semiboldPoppins.copyWith(color: blue2Color),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      width: 65,
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: blueColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              '-',
                              style: semiboldPoppins.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            '2',
                            style: semiboldPoppins.copyWith(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              '+',
                              style: semiboldPoppins.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    viewVisible
                        ? GestureDetector(
                            onTap: () {
                              hideWidget();
                            },
                            child: Container(
                              height: 25,
                              width: 120,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: blueColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.delete_sweep,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Hapus Catatan',
                                    style: semiboldPoppins.copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              showWidget();
                            },
                            child: Container(
                              height: 25,
                              width: 90,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: blueColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.create,
                                      size: 12, color: Colors.white),
                                  Text(
                                    'Catatan',
                                    style: semiboldPoppins.copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ],
                )
              ],
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Catatan Item',
                    style: semiboldPoppins.copyWith(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFFCDCDCD),
                      ),
                    ),
                    child: TextFormField(
                      style: regularPoppins.copyWith(fontSize: 12),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Ketik Disini...',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
