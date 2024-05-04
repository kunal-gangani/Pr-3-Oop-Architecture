import 'dart:io';

int sumList(List<int> numbers) {
  int sum = 0;
  numbers.forEach((element) { 
    sum += element;
  });
  return sum;
}
void main() {
  stdout.write("Enter Length of List : ");
  int length = int.parse(stdin.readLineSync() ?? "0");
  List<int> numbers = List.generate(length, (index) {
    stdout.write("Enter Element : ");
    return int.parse(stdin.readLineSync() ?? "0");
  });
  int result = sumList(numbers);
  print('Sum of numbers: $result'); 
}