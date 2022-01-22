import 'package:flutter/material.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  List<bool> _isSelected = List.generate(5, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Center(
        child: ToggleButtons(
          children: [
            Text("MS"),
            Text("S"),
            Text("M"),
            Text("L"),
            Text("ML"),
          ],
          color: Colors.grey,
          selectedColor: Colors.white,
          fillColor: Colors.black,
          selectedBorderColor: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          onPressed: (int index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < _isSelected.length;
                  buttonIndex++) {
                if (buttonIndex == index) {
                  _isSelected[buttonIndex] = !_isSelected[buttonIndex];
                } else {
                  _isSelected[buttonIndex] = false;
                }
              }
            });
          },
          isSelected: _isSelected,
        ),
      ),
    );
  }
}
