// Copyright [2015] Umit Akgun

#include <cxxabi.h>
#include <string>
#include <vector>
#include "llvm/Pass.h"
#include "llvm/Analysis/CallGraphSCCPass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/ADT/SCCIterator.h"

using namespace llvm;

namespace {
  class DataStructureAnalyzerPass : public FunctionPass {
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

    void createCallInstNode(const Function &F, CallInst* callInst) {
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

    bool runOnFunction(Function &F) override {
      // errs().write_escaped(F.getName()) << '\n';
      // errs() << "Function Body\n";
      // F.dump();

      for (BasicBlock &BB : F) {
        // errs().write_escaped("Basic Block") << '\n';
        // BB.dump();
        for (Instruction &inst : BB) {
          if (GetElementPtrInst *gepInst = dyn_cast<GetElementPtrInst>(&inst)) {
            writeInst(inst);
          } else if (CallInst *callInst = dyn_cast<CallInst>(&inst)) {
            createCallInstNode(F, callInst);
          } else if (LoadInst *loadInst = dyn_cast<LoadInst>(&inst)) {
            writeInst(inst);
          }
        }
      }

      for (scc_iterator<Function *> begin_it = scc_begin(&F),
                                    end_it = scc_end(&F);
           begin_it != end_it; ++begin_it) {
        std::vector<BasicBlock *> scc_list = *begin_it;
        for (BasicBlock *BB : scc_list) {
          BB->printAsOperand(errs(), false);
          errs() << " -> ";
        }
        errs() << "\n";
      }

      return false;  // we didn't change anything
    }
   public:
    static char ID;
    DataStructureAnalyzerPass() : FunctionPass(ID) {}
  };
}  // namespace

char DataStructureAnalyzerPass::ID = 0;
static RegisterPass<DataStructureAnalyzerPass> registerDSPass("dataStructureAnalyze", "Data Structure Analyzer", false, false);

static void registerDataStructureFunc(const PassManagerBuilder &, llvm::legacy::PassManagerBase &PM) {
  PM.add(new DataStructureAnalyzerPass());
  //  PM.add(new CGAnalyzerPass());
}
static RegisterStandardPasses registerDataStructurePass(PassManagerBuilder::EP_EarlyAsPossible, registerDataStructureFunc);
