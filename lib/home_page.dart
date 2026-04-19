import 'package:flutter/material.dart';
import 'package:tutorial/learn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => LearnFlutterPage()));
        },
        child: Text('Learn Flutter'),
      ),
    );
  }
}
