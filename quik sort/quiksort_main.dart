import 'quiqsort_functions.dart';

void main() {
  QuickSortFunctions quickSortFunctions = QuickSortFunctions();
  List<int> list = [21, 5, 16, 1, 541, 31, 153, 3, 121, 3, 131];
  quickSortFunctions.quickSort(list, 0, list.length - 1);
  print(list);
}
