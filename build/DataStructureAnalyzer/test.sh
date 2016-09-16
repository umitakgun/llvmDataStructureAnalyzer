#!/bin/bash
#clang++ -Xclang -load -Xclang ./libDataStructureAnalyzerPass.so  test.cpp >& output
$LLVM_DIR/bin/opt -load ./libDataStructureAnalyzerPass.so -dataStructureAnalyze < test.bc >& output
