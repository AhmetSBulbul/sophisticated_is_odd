import 'package:flutter/material.dart';

class IsOddForm extends StatelessWidget {
  const IsOddForm({required this.onChangeVal, required this.onSubmit, Key? key})
      : super(key: key);
  final Function(String) onChangeVal;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          // keyboardType: TextInputType.number,
          onChanged: (val) {
            onChangeVal(val);
          },
        ),
        ElevatedButton(onPressed: onSubmit, child: const Text("Check!"))
      ],
    );
  }
}
