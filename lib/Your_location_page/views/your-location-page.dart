import 'package:flutter/material.dart';

class YourLocation extends StatefulWidget {
  const YourLocation({super.key});

  @override
  State<YourLocation> createState() => _YourLocationState();
}

class _YourLocationState extends State<YourLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,right: 12,left: 12),
        child: Column(
          children: [
            Text(
              "What is Your Location ?",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
                "It works by including a Location Request in a text, which is a link that sends with your message to the contact.y0\-",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
