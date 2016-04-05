#!/bin/bash
clang++ -Xclang -load -Xclang ./libPointerStructureAnalysis.so test.cpp
