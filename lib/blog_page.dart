import 'package:flutter/material.dart';

import 'package:vip_signal/machin_larnimng.dart';

class blog_pages extends StatelessWidget {
  blog_pages({super.key});

  @override
  Widget build(BuildContext context) {
    return run_app_class();
  }
}

class run_app_class extends StatelessWidget {
  const run_app_class({super.key});
  PreferredSizeWidget _app_bar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(children: [
        Text('VIP ', style: TextStyle(color: Colors.amber)),
        Text('اخبار سیگنال بورسی', style: TextStyle(color: Colors.amber))
      ]),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.amber),
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final List<Widget> showe = [
      _get_list_date(
        sel: ' سیگنال 120500 فروش',
        buy: ' سیگنال 142000 خرید',
        image: 'images/a.png',
        title: '14 آبان Alchemy Pay سیگنال خرید',
      ),
      _get_list_date(
        sel: ' سیگنال 693000 فروش',
        buy: ' سیگنال 784000 خرید',
        image: 'images/c.png',
        title: '14 آبان Cosmos سیگنال خرید',
      ),
      _get_list_date(
        sel: ' سیگنال 582000 فروش',
        buy: ' سیگنال 544000 خرید',
        image: 'images/r.png',
        title: '14 آبان Ripple سیگنال خرید',
      ),
    ];
    return Scaffold(
      appBar: _app_bar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            //be in 3 noghte migan Speread Oparator ke az list bala mikhonet
            ...showe,
            //  Dataa(), Dataa(),
            _get_logout(context),
          ]),
        ),
      ),
    );
  }
}

Widget _get_list_date(
    {required String buy,
    required String sel,
    required String image,
    required String title}) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  '$image',
                ),
              ),
            ),
          ),
        ),
        Rating(),
        Text(
          '$title',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$sel',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
            Icon(Icons.sell_outlined, color: Colors.red),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.price_check, color: Colors.green),
            Text('$buy',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 200,
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
      ],
    ),
  );
}

Widget _get_logout(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      bottom: 10,
    ),
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
          minimumSize: Size(200.0, 40.0),
          side: BorderSide(width: 4, color: Colors.amber)),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        'خروج از حساب',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'vazir',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
