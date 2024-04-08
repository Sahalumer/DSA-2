class Node {
  int data;
  Node? next;
  Node(this.data);
}

class BubbleSortLinkedList {
  Node? head;

  insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  bubbleSort() {
    if (head == null || head!.next == null) {
      return;
    }

    bool swapped;
    Node? temp;
    Node? end = null;
    do {
      swapped = false;
      Node? current = head;

      while (current!.next != end) {
        if (current.data > current.next!.data) {
          if (current == head) {
            head = current.next;
          } else {
            Node? prev = head;
            while (prev!.next != current) {
              prev = prev.next;
            }
            prev.next = current.next;
          }
          temp = current.next!.next;
          current.next!.next = current;
          current.next = temp;
          swapped = true;
        } else {
          current = current.next;
        }
      }
      end = current;
    } while (swapped);
  }

  display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
