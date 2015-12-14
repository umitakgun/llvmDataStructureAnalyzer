// Copyright [2015] Umit Akgun

#include <stdio.h>

void test2(int *b) {
  *b = 3;
}

void test(int *a) {
  *a = 2;
  test2(a);
}

int main(int argc, char *argv[]) {
  int a = 0;
  int b = 1;

  test(&a);
  
  if (a >= 0) {
    b++;
  } else {
    a++;
  }

  return 0;
}
