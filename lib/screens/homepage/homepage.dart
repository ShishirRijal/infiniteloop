import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'components/components/adonations.dart';
import 'components/draiser.dart';
import 'components/videoplayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            //! App Bar
            Container(
              height: 50,
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 100,
                    padding: const EdgeInsets.all(0),
                    color: Colors.transparent,
                    width: 50,
                    child: Image.asset(
                      "images/logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sahayogi Haath",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      ),
                      // border
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // //!  Know more and login
            // SizedBox(
            //   height: 40,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Spacer(),
            //       const Text(
            //         "How does it work?",
            //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            //       ),
            //       TextButton(
            //         onPressed: () {},
            //         child: Text("Sign in"),
            //       ),
            //     ],
            //   ),
            // ),

            Container(
              height: size.height * 0.4,
              // width: size.width * 0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/boy.png'),
                ),
              ),
            ),
            SizedBox(height: 10),
            const Divider(),
            SizedBox(height: 10),
            Text(
              "Why Sahayogi Haath?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, _) => const SizedBox(width: 10),
                itemBuilder: (context, index) => Container(
                  height: 150,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/inspiration.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            const Divider(),
            // ! Video Player
            // SizedBox(height: 10),
            // Container(
            // height: size.height * 0.3,
            // width: size.width * 0.8,
            // child: VideoPlayer(),
            // ),
            // SizedBox(height: 10),
            // const Divider(),

            // YoutubePlayer(
            //   controller: _controller,
            //   showVideoProgressIndicator: true,
            //   progressIndicatorColor: Colors.amber,
            //   progressColors: ProgressBarColors(
            //     playedColor: Colors.amber,
            //     handleColor: Colors.amberAccent,
            //   ),
            //   onReady: () {
            //     _controller.addListener(() {});
            //   },
            // ),
            // ! Video player ends

            // !Donation Raiser
            SizedBox(height: 10),
            Text(
              "Top Donation Raisers",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            DonationRaiser(),

            SizedBox(height: 10),
            Text(
              "Need to raise donations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton(onPressed: () {}, child: Text("Start Donating")),
            SizedBox(height: 15),
            Text(
              "Don't know how to raise fund?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Click here",
                style: TextStyle(
                  color: Color(0xff2791F2),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            const Divider(),
            // ! Available Donations
            SizedBox(height: 10),
            Text(
              "Available Donations",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            DonationAvailable(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    )));
  }
}
