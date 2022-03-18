import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int? number) {
    int armNum = 0;

    number.toString().split('').fold(armNum, (previousValue, element) {
      return pow(int.parse(element), number.toString().length);
    });

    // number.toString().split('').forEach((element) {
    //   armNum += pow(int.parse(element), number.toString().length);
    // });

    // for (int i = 0; i < number.toString().length; i++)
    //   armNum += pow(
    //       int.parse(number.toString().split('')[i]), number.toString().length);

    return armNum == number ? true : false;
  }
}
