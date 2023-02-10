import 'package:flutter/material.dart';

class DonationAvailable extends StatelessWidget {
  const DonationAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
            DonationCard("images/blanket.jpg", "10 Blankets",
                "Kathmandu, near Gaushala Area"),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

Widget DonationCard(String imageUrl, String title, String Address) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: const BoxDecoration(
        // drop shadow on right side
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 214, 212, 212),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Color.fromARGB(255, 242, 242, 242),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: SizedBox(
        height: 185,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 95,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(height: 4),
                  Text("Available at:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    Address,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
