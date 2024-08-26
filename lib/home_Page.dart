import 'package:coffee_shop/values/my_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/img.png'),
            Text(
              textAlign: TextAlign.center,
              'Coffee so good, \n your taste buds \n will love it.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w600,
                fontFamily: 'Sora-SemiBold',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              'The best grain, the finest roast, the\n powerful flavor.',
              style: TextStyle(
                color: MyColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontFamily: 'Sora-Thin',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              // padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/logo.png',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Continue with Google',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto-Medium',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
