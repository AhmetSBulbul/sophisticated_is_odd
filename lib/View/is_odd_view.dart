import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:is_odd_mobile/Controller/is_odd_controller.dart';
import 'package:is_odd_mobile/Widgets/is_odd_form.dart';
import 'package:is_odd_mobile/Widgets/is_odd_message_box.dart';

class IsOddView extends GetView<IsOddController> {
  const IsOddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: controller.obx(
          (state) => IsOddMessageBox(onReset: controller.reset, isOdd: state!),
          onError: (error) => Center(
            child: Text("Error: $error"),
          ),
          onEmpty: IsOddForm(
              onChangeVal: controller.onNumberChange,
              onSubmit: controller.isOdd),
        ),
      ),
    ));
  }
}
