import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/bottom_nav_bar.dart';
import 'package:flutter_grocery_app/utils/colors.dart';

class GroceryOnBoarding extends StatelessWidget {
  const GroceryOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipPath(
            clipper: ClipPathOnBoard(),
            child: Container(
              color: AppColors.onboardbackground,
              height: size.height * 0.55,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Image.asset(
                  'assets/onboarding_profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.4,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Buy Groceries\nEasily with us',
                  style: TextStyle(
                      fontSize: 40, height: 1.3, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Listen podcast and open your \nworld with this applications',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBar()),
                          (route) => false);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: AppColors.gradientColor),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPathOnBoard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - 70,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
