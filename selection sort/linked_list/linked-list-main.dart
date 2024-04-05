import 'selection-sort-linkedlist.dart';

void main() {
  SelectionSortLinkedList selectionSortLinkedList = SelectionSortLinkedList();
  selectionSortLinkedList.insert(24);
  selectionSortLinkedList.insert(12);
  selectionSortLinkedList.insert(31);
  selectionSortLinkedList.insert(17);
  selectionSortLinkedList.insert(15);
  selectionSortLinkedList.selectionSort();
  selectionSortLinkedList.display();
}
