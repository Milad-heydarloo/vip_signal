import 'package:flutter/material.dart';
import 'package:vip_signal/blog_page.dart';

class run_app_two extends StatelessWidget {
  const run_app_two({super.key});

  void runpage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return page;
      },
    ));
  }

  PreferredSizeWidget _app_bar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white),
      title: Text(
        'برنامه بورسی اکانت',
        style: TextStyle(fontSize: 25, fontFamily: 'vazir'),
      ),
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: _app_bar(),
      backgroundColor: Colors.black,
      body: SafeArea(
        //  child: Rating(),
        //child: Image(image: AssetImage('images/welcome.png')),
        // child:LikeButton(),

        child: SingleChildScrollView(
          //vaghti goshi rotate mishe in singel child baes mishe mohtava scrol beshe
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'خوش آمدید',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
//https://fonts.google.com/icons?selected=Material+Icons:login:&icon.query=enter&icon.platform=flutter
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                ]),

                Image(
                  image: AssetImage('images/w.png'),
                ),
                //https://m2.material.io/components/buttons
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    minimumSize: Size(
                      200.0,
                      40.0,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    runpage(context, blog_pages());
                  },
                  child: Text(
                    'ثبت نام',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(
                      200.0,
                      40.0,
                    ),
                  ),
                  onPressed: () {
                    runpage(context, blog_pages());
                  },
                  child: Text(
                    'ورود',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        textDirection: TextDirection.rtl,
                        'فراموشی رمز عبور',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
