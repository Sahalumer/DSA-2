import 'insertion-functions.dart';

void main() {
  InsertionSort insertionSort = InsertionSort();
  List<int> list = [21, 51, 6, 3, 12, 34, 31, 61, 12];
  print("Before sorting base insertion $list");
  insertionSort.baseInserion(list);
  print("After sorting base Insertion $list");
}
