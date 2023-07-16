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
        child: Center(
          child: Column(children: [
            Rating(),
            LikeButton(),
          ]),
        ),
      ),
    );
  }
}
