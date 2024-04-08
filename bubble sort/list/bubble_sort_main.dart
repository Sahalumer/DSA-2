import 'bubble_sort_functions.dart';

void main() {
  BubbleSortFunctions bubbleSortFunctions = BubbleSortFunctions();
  List<int> baseList = [23, 51, 41, 61, 31, 22, 52, 1];
  print("Before the Basic Bubble sort $baseList");
  bubbleSortFunctions.basicBubbleSort(baseList);
  print("After the Basic Bubble sort $baseList");
  List<int> recurList = [25, 11, 44, 21, 35, 64, 81, 28];
  print("Before the recursive Bubble sort $recurList");
  bubbleSortFunctions.recursiveBubbleSort(recurList, recurList.length);
  print("After the recursive Bubble sort $recurList");
}
