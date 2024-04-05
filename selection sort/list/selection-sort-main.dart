import 'selection-sort-function.dart';

void main() {
  List<int> ogList = [5, 32, 94, 52, 12, 1, 33, 54];
  print('Before Sorting The List ${ogList}');
  SelectionSortFunction selectionSortFunction = SelectionSortFunction();
  selectionSortFunction.baseSelectionSort(ogList);
  print('After Sorting The List (base selection sort) ${ogList}');
  List<int> reculist = [8, 6, 45, 2, 3, 694, 1, 25, 1, 62, 7, 2, 6];
  print('Before Sorting The List (recursive selection sort): ${reculist}');
  selectionSortFunction.recursiveSelectionSort(reculist, 0);
  print(' Recursive Selection Sort ${reculist}');
  List<int> stalist = [1, 4, 6, 2, 5, 7, 8, 4, 4, 22, 45];
  print('Before Sorting The List (stable sort selection sort) ${stalist}');
  selectionSortFunction.stablSort(stalist);
  print(' stable Selection Sort ${stalist}');
}
