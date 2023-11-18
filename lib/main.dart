import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto', // Set default font family for the entire app
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images and Fonts',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // First Horizontal ListView with Network Images
            SizedBox(
              height: 320.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://placedog.net/640/480?random=$index',
                      width: 360.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            // Spacing between horizontal ListViews
            const SizedBox(height: 8.0),

            // ListTile with default font
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              color: Colors.lightBlue[100],
              child: const ListTile(
                title: Text(
                  'Default Font',
                  style: TextStyle(fontSize: 28.0),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.storm),
                ),
              ),
            ),
            // Spacing between ListTiles
            const SizedBox(height: 16.0),
            // All three saved fonts
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              color: Colors.lightBlue[100],
              child: const ListTile(
                title: Text(
                  'Tajawal 300',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w300,
                    fontSize: 28.0,
                  ),
                ),
                leading: Icon(Icons.science),
              ),
            ),

            const SizedBox(height: 16.0),

            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              color: Colors.lightBlue[100],
              child: const ListTile(
                title: Text(
                  'Tajawal 400',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w400,
                    fontSize: 28.0,
                  ),
                ),
                leading: Icon(Icons.temple_hindu),
              ),
            ),

            const SizedBox(height: 16.0),

            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              color: Colors.lightBlue[100],
              child: const ListTile(
                title: Text(
                  'Tajawal 700',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700,
                    fontSize: 28.0,
                  ),
                ),
                leading: Icon(Icons.tram),
              ),
            ),

            const SizedBox(height: 8.0),
            // Second Horizontal ListView with Asset Images
            SizedBox(
              height: 320.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final assetImagePaths = [
                    'images/433-800x600.jpg',
                    'images/219-800x600.jpg',
                    'images/564-800x600.jpg',
                  ];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      assetImagePaths[index],
                      width: 360.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            // Spacing between horizontal ListViews
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
