class Node {
  String name;
  int age;
  Node? next;
  Node(this.name, this.age);
}

class HashTablee {
  List<Node?>? table;
  int size;
  HashTablee(this.size) {
    table = List.generate(size, (index) => null);
  }
  add(String name, int age) {
    int index = name.hashCode % size;
    Node newNode = Node(name, age);
    if (table?[index] == null) {
      table?[index] = newNode;
    } else {
      newNode.next = table?[index];
      table?[index] = newNode;
    }
  }

  get(String ke) {
    int index = ke.hashCode % size;
    if (table?[index] == null) {
      print("Not found");
    } else {
      Node? currentNode = table?[index];
      while (currentNode != null) {
        if (currentNode.name == ke) {
          print(
              "value found @ index $index the age of ${currentNode.name} is ${currentNode.age}");
        } else {
          print("Heyy not Found");
        }
        currentNode = currentNode.next;
      }
    }
  }

  getAll() {
    if (table == null) {
      print("No Data in Here");
    } else {
      for (int i = 0; i < size; i++) {
        Node? current = table?[i];
        while (current != null) {
          print(
              "at index $i : name ${current.name} , age ${current.age} the hasj value of the name ${current.name.hashCode}");
          current = current.next;
        }
      }
    }
  }
}

void main() {
  HashTablee hash = HashTablee(5);
  hash.add("sahal", 19);
  hash.add("Umer", 20);
  hash.get("sahal");
  hash.getAll();
}
