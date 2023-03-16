import 'package:flutter/material.dart';
class finalScreen extends StatefulWidget {
  const finalScreen({Key? key}) : super(key: key);

  @override
  State<finalScreen> createState() => _finalScreenState();
}

class _finalScreenState extends State<finalScreen> {
  @override
  Widget build(BuildContext context) {
    int count = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Center(
        child: Text("$count"),
      ),
    );
  }
}
