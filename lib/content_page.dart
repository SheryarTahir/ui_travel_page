import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 500,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://c1.wallpaperflare.com/preview/72/58/378/dublin-landscape-river-ireland.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 70,
                    left: 20,
                    right: 20,
                    child: Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  right: 24,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-psd/studio-portrait-young-teenage-girl_23-2150162484.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1724112000&semt=ais_hybrid'),
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Madrid City Tour for Designers',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                    Text(
                      'city madrid espanol designers ul UK travel',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade800,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    rowIcontText('20', Icons.favorite_outline_outlined),
                    rowIcontText('34', Icons.upload_outlined),
                    rowIcontText('82', Icons.messenger_outline_sharp),
                    rowIcontText('295', Icons.face_2_outlined),
                  ],
                ),
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
            ),
            Positioned(
                child: Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                  'daThe quiet hum of the city at dawn brings a sense of peace, as if the world is taking a moment to catch its breath. Birds chirp softly while the first light of day casts long shadows on the pavement. In the midst of this tranquility, a lone figure walks briskly, their thoughts a jumble of dreams and plans. The street is lined with trees, their leaves rustling gently in the early morning breeze, creating a symphony of nature’s own making.ta'),
            ))
          ],
        ),
      ),
    );
  }

  Widget rowIcontText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade700),
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(icon),
      ],
    );
  }
}
