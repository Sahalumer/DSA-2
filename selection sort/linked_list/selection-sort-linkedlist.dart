class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SelectionSortLinkedList {
  Node? head;
  insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
  }

  selectionSort() {
    Node? current = head;
    while (current != null) {
      Node? min = current;
      Node? innerCurrent = current.next;
      while (innerCurrent != null) {
        if (min!.data > innerCurrent.data) {
          min = innerCurrent;
        }
        innerCurrent = innerCurrent.next;
      }
      int temp = current.data;
      current.data = min!.data;
      min.data = temp;
      current = current.next;
    }
  }

  display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
