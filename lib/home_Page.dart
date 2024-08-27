import 'package:coffee_shop/dashboard/dashboard_page.dart';
import 'package:coffee_shop/services/auth_Service.dart';
import 'package:coffee_shop/values/my_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _authService = AuthService();

  Future<void> _handleSignIn() async {
    User? user = await _authService.signInWithGoogle();
    if (user != null) {
      // Navigate to the next page if sign-in was successful
      Navigator.pushReplacement(context,
          DashboardPage() as Route<Object?>); // Update the route as needed
    } else {
      // Handle the sign-in failure (e.g., show an error message)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign in failed. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/img.png'),
            const Text(
              'Coffee so good, \n your taste buds \n will love it.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w600,
                fontFamily: 'Sora-SemiBold',
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'The best grain, the finest roast, the\n powerful flavor.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontFamily: 'Sora-Thin',
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: _handleSignIn,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/logo.png',
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Continue with Google',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
