int score(String? str) {
  int cnt = 0;

  List<String> value1 = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"];
  List<String> value2 = ["D", "G"];
  List<String> value3 = ["B", "C", "M", "P"];
  List<String> value4 = ["F", "H", "V", "W", "Y"];
  List<String> value5 = ["K"];
  List<String> value8 = ["J", "X"];
  List<String> value10 = ["Q", "Z"];

  if (str == null) {
    return 0;
  } else {
    for (int i = 0; i < str.length; i++) {
      if (value1.contains(str.toUpperCase().split('')[i])) {
        cnt += 1;
      } else if (value2.contains(str.toUpperCase().split('')[i])) {
        cnt += 2;
      } else if (value3.contains(str.toUpperCase().split('')[i])) {
        cnt += 3;
      } else if (value4.contains(str.toUpperCase().split('')[i])) {
        cnt += 4;
      } else if (value5.contains(str.toUpperCase().split('')[i])) {
        cnt += 5;
      } else if (value8.contains(str.toUpperCase().split('')[i])) {
        cnt += 8;
      } else if (value10.contains(str.toUpperCase().split('')[i])) {
        cnt += 10;
      }
    }
  }
  return cnt;
}
