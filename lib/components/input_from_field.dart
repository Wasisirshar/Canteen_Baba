import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String hintText;
  final Icon prefixIcon;

  const InputText(this.hintText, this.prefixIcon, {super.key});

  @override
  State<InputText> createState() => _InputText();
}

class _InputText extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
              hintText: widget.hintText,
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: widget.prefixIcon,
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
  const MyCheckbox({super.key});

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
