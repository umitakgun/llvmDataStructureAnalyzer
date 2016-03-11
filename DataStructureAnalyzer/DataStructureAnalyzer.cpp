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
  struct DataStructureAnalyzerPass : public FunctionPass {
    static char ID;
    DataStructureAnalyzerPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      // errs().write_escaped(F.getName()) << '\n';
      // errs() << "Function Body\n";
      // F.dump();

      for (BasicBlock&  BB : F) {
        // errs().write_escaped("Basic Block") << '\n';
        // BB.dump();
        for (Instruction& inst : BB) {
          // errs() << "Instruction\n";
          if (CallInst* callInst = dyn_cast<CallInst>(&inst)) {
            errs() << "---------------------------------------------\n";
            errs().write_escaped("I find a function call") << "\n";
            auto callerName = F.getName().str();
            auto calledName = callInst->getCalledFunction()->getName().str();

            auto callName = abi::__cxa_demangle(callerName.c_str(), NULL, NULL, NULL);
            if ( NULL != callName ) {
              errs() << "Caller function " << callName << "\n";
            } else {
              errs() << "Caller function " << callerName << "\n";
            }
            callName = abi::__cxa_demangle(calledName.c_str(), NULL, NULL, NULL);
            if ( NULL != callName ) {
              errs() << "Caller function " << callName << "\n";
            } else {
              errs() << "Caller function " << calledName << "\n";
            }

            errs() << "---------------------------------------------\n";
          }
        }
      }

      return false;  // we didn't change anything
    }
  };
}  // namespace

char DataStructureAnalyzerPass::ID = 0;
static RegisterPass<DataStructureAnalyzerPass> registerDSPass("dataStructureAnalyze", "Data Structure Analyzer", false, false);

static void registerDataStructureFunc(const PassManagerBuilder &, llvm::legacy::PassManagerBase &PM) {
  PM.add(new DataStructureAnalyzerPass());
}
static RegisterStandardPasses registerDataStructurePass(PassManagerBuilder::EP_EarlyAsPossible, registerDataStructureFunc);
