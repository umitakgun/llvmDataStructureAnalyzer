// Copyright [2015] Umit Akgun

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
  struct DataStructureAnalyzerPass : public FunctionPass {
    static char ID;
    DataStructureAnalyzerPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      errs().write_escaped(F.getName()) << '\n';
      F.dump();
      return false;
    }
  };
}  // namespace

char DataStructureAnalyzerPass::ID = 0;
static RegisterPass<DataStructureAnalyzerPass> X("dataStructureAnalyze", "Data Structure Analyzer", false, false);
