import 'package:flutter/material.dart';

class IsOddMessageBox extends StatelessWidget {
  const IsOddMessageBox({required this.onReset, required this.isOdd, Key? key})
      : super(key: key);
  final VoidCallback onReset;
  final bool isOdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(isOdd ? "Congrats! 🎉" : "Oopss!"),
        Text("Number is ${isOdd ? "odd!" : "even :("}"),
        ElevatedButton(onPressed: onReset, child: const Text("Try Again!"))
      ],
    );
  }
}
