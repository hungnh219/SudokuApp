// import 'dart:async';

// int calculateSum(List<int>? list) {
//   int ans = 0;

//   if (list == null) {
//     print('hehe');
//     return 0;
//   }

//   for (int i = 0; i < list.length; i++) {
//     ans += list[i];
//   }

//   return ans;  
// }

// main() {
//   List<int>? list = [1, 2, 3, 4, 5];


//   print(calculateSum(list).toString());
//   print(calculateSum(null).toString());
// }

import 'dart:io';

double calculateAverage(List<double> numbers) {
  double sum = 0;

  for (double number in numbers) {
    sum += number;
  }

  return sum / numbers.length;
}

void main() {
  List<double> numbers = [];

  while (true) {
    stdout.write('Enter a number (0 to stop): ');
    double input = double.parse(stdin.readLineSync()!);

    if (input == 0) {
      break;
    }

    numbers.add(input);
  }

  double average = calculateAverage(numbers);
  print('The average is: $average');
}