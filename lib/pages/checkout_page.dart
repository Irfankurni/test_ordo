import 'package:flutter/material.dart';
import 'package:test_ordo/theme.dart';
import 'package:test_ordo/widgets/product_checkout.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
                'CHECKOUT',
                style: boldPoppins.copyWith(fontSize: 18, color: blue2Color),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          ProductCheckout(),
          ProductCheckout(),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Catatan Pesanan',
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
                  height: 80,
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
        ],
      );
    }

    Widget detailPembayaran() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detail Pembayaran',
            style: semiboldPoppins.copyWith(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas Gucci',
                    style: semiboldPoppins.copyWith(fontSize: 18),
                  ),
                  Text(
                    '(QTY. 1)',
                    style: regularPoppins.copyWith(fontSize: 18),
                  ),
                ],
              ),
              Text(
                'Rp 75.000',
                style: regularPoppins.copyWith(fontSize: 18),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas Eiger',
                    style: semiboldPoppins.copyWith(fontSize: 18),
                  ),
                  Text(
                    '(QTY. 2)',
                    style: regularPoppins.copyWith(fontSize: 18),
                  ),
                ],
              ),
              Text(
                'Rp 75.000',
                style: regularPoppins.copyWith(fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ongkos Kirim',
                style: regularPoppins.copyWith(fontSize: 18),
              ),
              Text(
                'Rp 10.000',
                style: regularPoppins.copyWith(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: boldPoppins.copyWith(fontSize: 18),
              ),
              Text(
                'Rp 450.000',
                style: boldPoppins.copyWith(fontSize: 18),
              ),
            ],
          ),
        ],
      );
    }

    Widget waktuButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Waktu Pengiriman',
                style: semiboldPoppins.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
      );
    }

    Widget alamatButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alamat Pengiriman',
                style: semiboldPoppins.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
      );
    }

    Widget alertBox() {
      return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
              style: mediumPoppins.copyWith(
                fontSize: 16,
                color: greenColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget bayarButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Bayar Sekarang',
            style: boldPoppins.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg2Color,
      appBar: header(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        children: [
          content(),
          detailPembayaran(),
          waktuButton(),
          alamatButton(),
          alertBox(),
          bayarButton(),
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
