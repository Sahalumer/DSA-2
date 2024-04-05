import 'bubble_sort_functions.dart';

void main() {
  BubbleSortFunctions bubbleSortFunctions = BubbleSortFunctions();
  List<int> baseList = [23, 51, 41, 61, 31, 22, 52, 1];
  print("Before the Basic Bubble sort $baseList");
  bubbleSortFunctions.basicBubbleSort(baseList);
  print("After the Basic Bubble sort $baseList");
}
