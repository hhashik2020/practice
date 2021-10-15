import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  const Answer(void Function() selectHandler, {Key? key, this.selectHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green, onPrimary: Colors.white),
          onPressed: selectHandler,
          child: const Text("Menu One")),
    );
  }
}
