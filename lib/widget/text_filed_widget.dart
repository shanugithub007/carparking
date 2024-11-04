// widget/text_filed_widget.dart
import 'dart:async';import 'dart:async';

import 'package:flutter/material.dart';

class TextFiledWidget extends StatefulWidget {
  final String labelText;
  final Widget? suffix;
  final bool obscureText;
  final Color backgroundColor;
  final Color? textcolor;
  final List<String>? dropdownItems;
  final String? dropdownValue;
  final TextEditingController? controller;

  const TextFiledWidget({
    required this.obscureText,
    required this.labelText,
    this.controller,
    this.textcolor,
    this.suffix,
    this.backgroundColor = Colors.white,
    this.dropdownItems, 
    this.dropdownValue,
    super.key,
  });

  @override
  State<TextFiledWidget> createState() => _TextFiledWidgetState();
}

class _TextFiledWidgetState extends State<TextFiledWidget> {
  String? selectedValue ;

  @override
  void initState() {
    super.initState();
    //selectedValue = widget.dropdownValue ?? widget.dropdownItems?.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: widget.dropdownItems == null
          ? TextFormField(
            controller: widget.controller,
              decoration: InputDecoration( 
                labelText: widget.labelText,
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: widget.textcolor ?? Colors.black,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                filled: true,
                fillColor: widget.backgroundColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 0.1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                  ),
                ),
                suffixIcon: widget.suffix,
              ),
              obscureText: widget.obscureText,
            )
          : InputDecorator(
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.backgroundColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 0.1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                  ),
                ),
              ),
              //isEmpty: selectedValue == null,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text(widget.labelText), // Hint text displayed when no value is selected
                  value: selectedValue,
                  isExpanded: true,
                  icon: widget.suffix,
                  items: widget.dropdownItems!.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                ),
              ),
            ),
    );
  }
}
