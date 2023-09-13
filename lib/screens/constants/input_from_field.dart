import 'package:flutter/material.dart';

class TextFromField extends StatefulWidget {
  const TextFromField({super.key});

  @override
  State<TextFromField> createState() => _TextFromFieldState();
}

class _TextFromFieldState extends State<TextFromField> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email Address',
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(
                  Icons.person,
                  color: Color(0xff1890FF),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email Address',
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(
                  Icons.person,
                  color: Color(0xff1890FF),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// \\__this class is for Checkbox in login screen __///


class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        value: isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            isChecked = newValue!;
          });
        },
      ),
    );
  }
}
