class Node {
  int data;
  Node? next;
  Node(this.data);
}

class HashTable {
  List<Node?>? table;
  int size;
  HashTable(this.size) {
    table = List.generate(size, (index) => null);
  }

  add(int data) {
    int index = data.hashCode % size;
    Node newNode = Node(data);
    if (table?[index] == null) {
      table?[index] = newNode;
    } else {
      newNode.next = table?[index];
      table?[index] = newNode;
    }
  }

  countDuplicate() {
    if (table == null) {
      print(0);
    }
    int count = 0;
    Set<int> track = {};
    for (int i = 0; i < size; i++) {
      Node? current = table?[i];
      while (current != null) {
        if (track.contains(current.data)) {
          count++;
        } else {
          track.add(current.data);
        }
        current = current.next;
      }
    }
    print("Duplicates elements in this list is $count");
  }

  deleteDuplicate() {
    if (table == null) {
      return;
    }
    for (int i = 0; i < size; i++) {
      Node? prev;
      Node? current = table?[i];
      Set<int> track = {};
      while (current != null) {
        if (track.contains(current.data)) {
          prev?.next = current.next;
        } else {
          track.add(current.data);
          prev = current;
        }
        current = current.next;
      }
    }
  }

  display() {
    if (table == null) {
      print("is Empty");
    } else {
      for (int i = 0; i < size; i++) {
        Node? current = table?[i];
        while (current != null) {
          print(current.data);
          current = current.next;
        }
      }
    }
  }
}

void main() {
  HashTable hashTable = HashTable(5);
  hashTable.add(5);
  hashTable.add(8);
  hashTable.add(4);
  hashTable.add(8);
  hashTable.add(6);
  hashTable.add(5);
  hashTable.deleteDuplicate();
  hashTable.display();
}
