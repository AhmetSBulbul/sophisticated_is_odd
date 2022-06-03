import 'package:get/get.dart';

class IsOddService extends GetConnect {
  Future<Response> getIsOdd(String number) =>
      get('https://is-odd.herokuapp.com/is-odd?number=$number');
}
