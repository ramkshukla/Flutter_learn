import 'package:flutter/material.dart';

class BuzzScreen extends StatefulWidget {
  const BuzzScreen({super.key});

  @override
  State<BuzzScreen> createState() => _BuzzScreenState();
}

class _BuzzScreenState extends State<BuzzScreen> {
  final List<String> names = <String>[
    "Trending",
    "Movies",
    "Events",
    "Sports",
    "Streaming",
    "Video"
  ];

  final List<String> moviesName = <String>[
    "Prime Movies",
    "Netflix Movies",
    "Peppa Pig Live",
    "Prateek Kuhad",
  ];

  final List<String> moviewImages = <String>[
    "assets/images/chhapak.jpg",
    "assets/images/dilwale.jpg",
    "assets/images/Maqbool.jpeg",
    "assets/images/astro_moon.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 127, 64, 140),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "BUZZ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Discover what's trending on entertainment",
              style: TextStyle(
                  color: Color.fromARGB(255, 212, 187, 187), fontSize: 17),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return _rowStoriesItem(context, index);
                },
              ),
            ),
            const Divider(),
            Container(
              color: Colors.white,
              height: 40,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _rowCategory(context, index);
                },
              ),
            ),
            const Divider(),
            Container(
              height: 400,
              color: Colors.white,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Image.asset(
                        moviewImages[index],
                        width: 200,
                        height: 200,
                      ),
                      Column(
                        children: const [
                          Text(
                            "Should You Watch movie ?",
                            style: TextStyle(fontSize: 15),
                          ),
                          Divider()
                        ],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _rowStoriesItem(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            width: 70.0,
            height: 70.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Image.asset(
                  moviewImages[index],
                  width: 100,
                  height: 300,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5.0, height: 5.0),
          Text(moviesName[index]),
        ],
      ),
    );
  }

  Widget _rowCategory(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Chip(
        label: Text(names[index]),
        backgroundColor: const Color.fromARGB(255, 214, 186, 186),
      ),
    );
  }
}
