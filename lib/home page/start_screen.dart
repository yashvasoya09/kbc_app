import 'package:flutter/material.dart';

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/start_image.jpg"),
                fit: BoxFit.fill,
                opacity: 10,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'homeScreen');
              },
              child: Text(
                "Play",
                style: TextStyle(color: Colors.amberAccent,
                fontSize: 40 ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// Align(alignment: Alignment.center),
