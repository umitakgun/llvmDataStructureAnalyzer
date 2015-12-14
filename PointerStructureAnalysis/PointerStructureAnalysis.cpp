// Copyright [2015] Umit Akgun

#include <cxxabi.h>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

using namespace llvm;

namespace {
  struct PointerStructureAnalysis : public BasicBlockPass {
    static char ID;
    PointerStructureAnalysis() : BasicBlockPass(ID) {}

    bool runOnBasicBlock(BasicBlock &BB) override {
      for (Instruction& inst : BB) {
        if (GetElementPtrInst* gepInst = dyn_cast<GetElementPtrInst>(&inst)) {
            errs() << "---------------------------------------------\n";
            gepInst->getType()->dump();
            auto funcStr = gepInst->getParent()->getParent()->getName();
            errs() << "Function : " << abi::__cxa_demangle(funcStr.str().c_str(),
                                                           NULL,NULL,NULL) << "\n";
            errs() << "---------------------------------------------\n";
        }
      }
      return false;  // we didn't change anything
    }
  };
}  // namespace

char PointerStructureAnalysis::ID = 0;
static RegisterPass<PointerStructureAnalysis> X("pointerStructureAnalysis", "Pointer Structure Analyzer", false, false);
