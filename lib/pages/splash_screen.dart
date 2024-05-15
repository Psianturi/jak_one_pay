import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/common.dart';
import 'guest_screen/guest_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const GuestScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                kGradientColor2,
                kGradientColor1,
              ],
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/jak_one_center.png',
                  width: 282,
                ),
              ),

              Center(
                child: SvgPicture.asset(
                  'assets/images/splash_screen_bg.svg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),

              Positioned(
                  left: 16,
                  right: 16,
                  bottom: 10,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/ojk_logo.png',
                            height: 25,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/images/lps_logo.png',
                            height: 25,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Powered by Bank DKI",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "2023",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
