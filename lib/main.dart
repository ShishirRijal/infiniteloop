import 'package:flutter/material.dart';
import 'package:infiniteloop/screens/homepage/homepage.dart';

void main() {
  runApp(const DonationApp());
}

class DonationApp extends StatelessWidget {
  const DonationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff2791F2),
        // fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
