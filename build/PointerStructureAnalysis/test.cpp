// Copyright [2015] Umit

#include <iostream>

class Node{
 public:
  Node() {
  }
  virtual ~Node() {
  }

  explicit Node(int initialValue) {
    this->setValue(initialValue);
  }

  void setValue(int newValue) {
    this->value = newValue;
  }

  int getValue() {
    return this->value;
  }
 private:
  int value;
};


class LinkedList{
 public:
  LinkedList() {
  }

  virtual ~LinkedList() {
  }

  void insertNode(Node *newNode) {
    head = newNode;
  }

  void deleteNode(Node *deleteNode) {
  }

  void print() {
    std::cout << head->getValue() << "\n";
  }
 private:
  Node* head;
};

int main(int argc, char *argv[]) {
  LinkedList* l = new LinkedList();
  l->insertNode(new Node(5));
  
  return 0;
}
