import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'image/beach.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 40, width: 50),
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            color: Colors.teal,
            child: Center(
              child: Text(
                'I am a admirer of nature and I love to travel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.green : Colors.red,
            ),
            onPressed: () {},
            child: Text('Elevated Button'),
          ),
          OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
          TextButton(onPressed: () {}, child: Text('Text Button')),

          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint("Gesture Detector Clicked");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: const Color.fromARGB(255, 227, 74, 63),
                ),
                Text('Row Widgets Text 1'),
                Icon(
                  Icons.local_fire_department,
                  color: const Color.fromARGB(255, 227, 74, 63),
                ),
                Text('Row Widgets Text 2'),
              ],
            ),
          ),

          Switch(
            value: isSwitch,
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            },
          ),
        ],
      ),
    );
  }
}
