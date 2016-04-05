// Copyright [2015] Umit Akgun

#include <cxxabi.h>
#include <string>
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

    void writeInst(Instruction& inst) {
      errs() << "---------------------------------------------\n";
      inst.dump();
      StringRef funcStr = inst.getParent()->getParent()->getName();
      std::string mangledName = funcStr.str();
      auto fName = abi::__cxa_demangle(mangledName.c_str(), NULL, NULL, NULL);
      if (fName != NULL) {
        errs() << "Function : " << fName << "\n";
        errs() << "MangledName :" << funcStr.str() << "\n";
      } else {
        errs() << funcStr.str() << "\n";
      }
      errs() << "---------------------------------------------\n";
    }

    bool runOnBasicBlock(BasicBlock &BB) override {
      for (Instruction& inst : BB) {
        if (LoadInst* loadInst = dyn_cast<LoadInst>(&inst)) {
          writeInst(inst);
        }
      }
      return false;  // we didn't change anything
    }
  };
}  // namespace

char PointerStructureAnalysis::ID = 0;
static RegisterPass<PointerStructureAnalysis> registerPSPass("pointerStructureAnalysis", "Pointer Structure Analyzer", false, false);

static void registerPointerStructureFunc(const PassManagerBuilder &, llvm::legacy::PassManagerBase &PM){
  PM.add(new PointerStructureAnalysis());
}
static RegisterStandardPasses registerPointerStructurePass(PassManagerBuilder::EP_EarlyAsPossible, registerPointerStructureFunc);
