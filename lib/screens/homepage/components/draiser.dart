import 'package:flutter/material.dart';

class DonationRaiser extends StatelessWidget {
  const DonationRaiser({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            RaiserCard("images/cancer.jpg", "Cancer Patient", "Palpa",
                "He is suffering from cancer and belongs to very financial background........."),
            SizedBox(width: 10),
            RaiserCard("images/cancer.jpg", "Cancer Patient", "Palpa",
                "He is suffering from cancer and belongs to very financial background........."),
            SizedBox(width: 10),
            RaiserCard("images/cancer.jpg", "Cancer Patient", "Palpa",
                "He is suffering from cancer and belongs to very financial background........."),
            SizedBox(width: 10),
            RaiserCard("images/cancer.jpg", "Cancer Patient", "Palpa",
                "He is suffering from cancer and belongs to very financial background........."),
            SizedBox(width: 10),
            RaiserCard("images/cancer.jpg", "Cancer Patient", "Palpa",
                "He is suffering from cancer and belongs to very financial background........."),
            SizedBox(width: 10),
            RaiserCard("images/cancer.jpg", "Cancer Patient", "Palpa",
                "He is suffering from cancer and belongs to very financial background........."),
          ],
        ),
      ),
    );
  }
}

Widget RaiserCard(String imageUrl, String title, String Address, String Story) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 212, 210, 210),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: SizedBox(
        height: 230,
        width: 150,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                height: 95,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.fill),
                ),
              ),
              SizedBox(height: 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 2),
                  Text(
                    Address,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    Story,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    height: 4,
                    width: 150,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Rs 19k raised of 20k",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
