// class WordCount {
//   Map<String, int> countWords(String str) {
//     List<String> strList = str.split(' ');
//     // List<String> strList = str.split(RegExp('(,:/!&@%^& )'));
//     Map<String, int> mapStr = {};
//     int strLength = strList.length;
//     int cnt = 0;
//     for (int i = 0; i < strLength; i++) {
//       for (int j = 0; j < i + 1; j++) {
//         if (strList[i].compareTo(strList[j]) == 0) {
//           cnt++;
//         }
//       }
//       mapStr.addAll({strList[i]: cnt});
//       cnt = 0;
//     }
//     return mapStr;
//   }
// }

// class WordCount {
// Map<String, int> countWords(String sentence) {
//   var exp = new RegExp(r"(\w+('\w+)?)");

//   return exp
//       .allMatches(sentence)
//       .map((m) => m.group(0)!.toLowerCase())
//       .fold(new Map<String, int>(), (Map<String, int> counts, String word) {
//     if (counts.containsKey(word)) {
//       counts[word] = counts[word]! + 1;
//     } else {
//       counts[word] = 1;
//     }

//     return counts;
//   });
// }
// }

// class WordCount {
//   Map<String, int> countWords(String phrase) {
//     Map<String, int> allWords = {};

//     RegExp(r"(\w+'*\w+|\w+)").allMatches(phrase.toLowerCase()).forEach(
//         (match) => allWords[match.group(0)!] =
//             allWords.containsKey(match.group(0))
//                 ? allWords[match.group(0)]! + 1
//                 : 1);

//     return allWords;
//   }
// }

class WordCount {
  Map<String, int> countWords(String s) {
    Map<String, int> wordCounts = new Map();

    s = s.toLowerCase();

    RegExp regExp = RegExp(r"[1-9]+|[a-z]+'[a-z]+|[a-z]+");

    Iterable<String> matches = regExp.allMatches(s).map((m) => m[0]!);

    matches.forEach((word) {
      wordCounts.update(word, (value) => value + 1, ifAbsent: () => 1);
    });

    return wordCounts;
  }
}

void main() {
  WordCount wordCount = WordCount();
  print(wordCount.countWords('car: carpet as java: javascript!!&@\$%^&'));
}
