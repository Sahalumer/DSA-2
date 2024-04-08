import 'margesort_function.dart';

void main() {
  MergeSort mergeSort = MergeSort();
  List<int> list = [12, 32, 45, 62, 15, 84, 61, 23, 51, 27, 94, 32];
  print('Before the sorting  $list');
  mergeSort.recursiveMerge(list, 0, list.length - 1);
  print("After the sorting $list");
}
