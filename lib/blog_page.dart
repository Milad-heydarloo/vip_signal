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

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Rating(),
            LikeButton(),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return run_app_two();
                  },
                ));
              },
              child: Text(
                'next',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
