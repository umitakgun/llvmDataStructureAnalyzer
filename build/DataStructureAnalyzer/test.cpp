// Copyright [2015] Umit

#include <iostream>

class Node{
 public:
  Node *next;

  Node() {
    this->next = NULL;
  }
  virtual ~Node() {
  }

  explicit Node(int initialValue) {
    this->value = initialValue;
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
  Node *head;
  LinkedList() {
  }

  virtual ~LinkedList() {
  }

  void insertNode(Node *newNode) {
    if (head == NULL) {
      head = newNode;
    } else {
      Node *tail;
      for (tail = head->next; tail->next != NULL; tail = tail->next) { }
      tail->next = newNode;
    }
  }

  void deleteNode(Node *deleteNode) {
    releaseNodes(deleteNode, false);
  }

  void releaseNodes(Node *head, bool breakPoint) {
    if (breakPoint) {
      return;
    }
    releaseNodes(head->next, head->next == NULL);
    deleteNode(head);
  }
};

int main(int argc, char *argv[]) {
  LinkedList* l = new LinkedList();
  l->insertNode(new Node(5));
  l->releaseNodes(l->head, l->head == NULL);
  return 0;
}
