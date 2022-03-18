import 'dart:math';

class DifferenceOfSquares {
  // 리스트를 생성하는 함수
  List<int> makeSquare(int number) {
    List<int> square = [];

    for (int i = 1; i <= number; i++) square.add(i);

    return square;
  }

  // 리스트의 합의 제곱을 구하는 함수
  int squareOfSum(int number) {
    num squareSum;
    List<int> square = makeSquare(number);

    squareSum = square.fold(0, (previousValue, element) {
      return pow(element, 2);
    });

    return squareSum.toInt();
  }

  // 리스트의 제곱의 합을 구하는 함수
  int sumOfSquares(int number) {
    num sumSquare;
    List<int> square = makeSquare(number);
    sumSquare = pow(
        square.fold(0, (previousValue, element) {
          return previousValue + element;
        }),
        2);
    return sumSquare.toInt();
  }

  // 두 합의 차이를 구하는 함수
  int differenceOfSquares(int number) {
    int squareSum = squareOfSum(number);
    int sumSquare = sumOfSquares(number);
    return squareSum - sumSquare;
  }
}
