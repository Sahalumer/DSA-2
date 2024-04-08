import 'bubble-sort-linkedlist.dart';

void main() {
  BubbleSortLinkedList bubbleSortLinkedList = BubbleSortLinkedList();
  bubbleSortLinkedList.insert(42);
  bubbleSortLinkedList.insert(21);
  bubbleSortLinkedList.insert(12);
  bubbleSortLinkedList.insert(23);
  bubbleSortLinkedList.bubbleSort();
  bubbleSortLinkedList.display();
}
