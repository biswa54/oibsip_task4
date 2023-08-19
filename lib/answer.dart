import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String values;

  Answer(this.selectHandler, this.values);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: () => selectHandler(),
        child: Text(values,
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 188, 14, 151)),
        ),
      ),
    );
  }
}
