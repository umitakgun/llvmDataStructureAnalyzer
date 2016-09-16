// Copyright [2015] Umit Akgun

#include <cxxabi.h>
#include <string>
#include <utility>
#include "llvm/Pass.h"
#include "llvm/Analysis/CallGraphSCCPass.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

using namespace llvm;

namespace {
class CGAnalyzerPass : public CallGraphSCCPass {
  bool runOnSCC(CallGraphSCC &SCC) {
    errs() << "---------------- start SCC --------------------\n";
    for (auto it = SCC.begin(); it != SCC.end(); ++it) {
      const Function* f = (*it)->getFunction();
      if (f != NULL && !f->hasExternalLinkage()) {
        errs() << "function : " << f << " name : " << f->getName() << "\n";
      }
    }
    errs() << "---------------- end SCC ----------------------\n";
  }

  bool doFinalization(CallGraph &CG) {
    // for (auto it = CG.begin(); it != CG.end(); ++it) {
    //   // CallGraphNode* node = (*it).second;
    //   // Function *f = node->getFunction();
    //   const Function *f = (*it).first;
    //   CallGraphNode *node = (*it).second;
    //   if (f != NULL && !f->hasExternalLinkage()) {
    //     StringRef funcStr = f->getName();
    //     std::string mangledName = funcStr.str();
    //     auto fName = abi::__cxa_demangle(mangledName.c_str(), NULL, NULL, NULL);
    //     if (fName != NULL) {
    //       errs() << "Function: " << fName
    //              << " number of ref: " << node->getNumReferences() <<"\n";
    //       errs() << "MangledName :" << funcStr.str() << "\n";
    //       errs() << "siblings : \n";
    //       for (auto it = node->begin(); it != node->end(); ++it) {
    //         CallGraphNode *siblings = (*it).second;
    //         if (!siblings) {
    //           Function *siblingFunction = siblings->getFunction();
    //           if (!siblingFunction) {
    //             errs() << &siblingFunction << "\n";
    //           }
    //         }
    //       }
    //     } else {
    //       errs() << funcStr.str() << "\n";
    //     }

    //     // errs() << "Function instance address : " << f << "\n";
    //   }
    // }
  }

 public:
  static char ID;
  CGAnalyzerPass() : CallGraphSCCPass(ID) { }
};
}

char CGAnalyzerPass::ID = 0;
static RegisterPass<CGAnalyzerPass> registerCGPass("CGAnalyze", "Data Structure Analyzer", false, false);

// static void registerCGDataStructureFunc(const PassManagerBuilder &, llvm::legacy::PassManagerBase &PM) {
//   PM.add(new CGAnalyzerPass());
// }
// static RegisterStandardPasses registerCGDataStructurePass(PassManagerBuilder::EP_EarlyAsPossible, registerCGDataStructureFunc);
