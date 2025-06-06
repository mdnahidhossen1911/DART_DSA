class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  // Add at end
  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = newNode;
    }
  }

  // Insert at specific position (0-based index)
  void insertAt(int index, int data) {
    Node newNode = Node(data);

    if (index == 0) {
      newNode.next = head;
      head = newNode;
      return;
    }

    Node? current = head;
    int count = 0;

    while (current != null && count < index - 1) {
      current = current.next;
      count++;
    }

    if (current == null) {
      print("Index out of range");
    } else {
      newNode.next = current.next;
      current.next = newNode;
    }
  }

  // Delete at specific index
  void deleteAt(int index) {
    if (head == null) {
      print("List is empty");
      return;
    }

    if (index == 0) {
      head = head!.next;
      return;
    }

    Node? current = head;
    int count = 0;

    while (current != null && count < index - 1) {
      current = current.next;
      count++;
    }

    if (current == null || current.next == null) {
      print("Index out of range");
    } else {
      current.next = current.next!.next;
    }
  }

  // Display the list
  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  list.add(10);
  list.add(20);
  list.add(30);
  print("Initial List:");
  list.display();

  list.insertAt(1, 15);
  print("\nAfter inserting 15 at index 1:");
  list.display();

  list.deleteAt(2);
  print("\nAfter deleting at index 2:");
  list.display();
}
