#!/bin/bash
#clang++ -Xclang -load -Xclang ./libDataStructureAnalyzerPass.so  test.cpp >& output
opt -load ./libDataStructureAnalyzerPass.so -dataStructureAnalyze -CGAnalyze < test.bc >& output
