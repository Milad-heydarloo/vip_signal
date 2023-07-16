import 'package:flutter/material.dart';
import 'package:vip_signal/login_page.dart';
import 'package:vip_signal/machin_larnimng.dart';

class blog_pages extends StatelessWidget {
  const blog_pages({super.key});

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
        Text('اخبار سیگنال بورسی')
      ]),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.amber),
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: _app_bar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(
                      'images/c.png',
                    ),
                  ),
                ),
              ),
            ),
            Text(
              '14 آبان Cosmus سیگنال خرید',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(' سیگنال 12000 فروش',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10,
                ),
                Text(' سیگنال 12000 خرید',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
