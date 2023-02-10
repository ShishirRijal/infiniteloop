import 'package:flutter/material.dart';

import 'components/components/adonations.dart';
import 'components/draiser.dart';
import 'components/videoplayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 100,
                  width: 100,
                  child: Image.asset("images/logo.png"),
                ),
                SizedBox(width: 80),
                GestureDetector(
                  onTap: () {},
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sahayogi Haath",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "How does it work?",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Sign in"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.5,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/boy.png'),
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Why Sahayogi Haath?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/inspiration.png'),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/inspiration.png'),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/inspiration.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
              height: size.height * 0.3,
              width: size.width * 0.8,
              child: VideoPlayer()),
          SizedBox(height: 30),
          Text(
            "Top Donation Raisers",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 25),
          DonationRaiser(),
          SizedBox(height: 25),
          Text(
            "Need to raise donations",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Color(0xff2791F2),
              height: 25,
              width: 60,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Start raising",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Don't know how to raise fund?",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Click here",
              style: TextStyle(
                color: Color(0xff2791F2),
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Available Donations",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 25),
          DonationAvailable(),
        ],
      ),
    )));
  }
}
