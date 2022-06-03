import 'dart:convert';

import 'package:get/get.dart';
import 'package:is_odd_mobile/Services/is_odd_service.dart';

class IsOddController extends GetxController with StateMixin<bool> {
  final IsOddService _service;
  IsOddController(IsOddService service) : _service = service;
  String? numberValue;
  @override
  void onInit() {
    super.onInit();
    reset();
  }

  void isOdd() async {
    if (numberValue != null) {
      change(null, status: RxStatus.loading());
      try {
        final Response response = await _service.getIsOdd(numberValue!);
        if (response.statusCode == 200) {
          // final Map<String, dynamic> result = jsonDecode(response.body);

          final bool val = response.body['result'];
          change(val, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.error("Status code error"));
        }
      } catch (e) {
        change(null, status: RxStatus.error(e.toString()));
      }
    }
  }

  void reset() {
    change(null, status: RxStatus.empty());
  }

  void onNumberChange(String value) {
    numberValue = value;
  }
}
