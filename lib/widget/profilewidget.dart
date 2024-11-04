import 'package:flutter/material.dart';

class Profilewidget extends StatefulWidget {
  final String text;
  const Profilewidget({super.key, required this.text});

  @override
  State<Profilewidget> createState() => _ProfilewidgetState();
}

class _ProfilewidgetState extends State<Profilewidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // Set the width to full width of the parent
          height: 60, // Set the height to 60
          decoration: BoxDecoration(
            border: Border.all(
              width: 2, 
              color: const Color.fromARGB(255, 228, 232, 241)
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(16), // Optional: Add padding inside the container
          alignment: Alignment.centerLeft, // Align the text to the left
          child: Text(
            widget.text, 
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
