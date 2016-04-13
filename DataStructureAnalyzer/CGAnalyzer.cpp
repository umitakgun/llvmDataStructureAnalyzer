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
class CGAnalyzerPass : public ModulePass {
  bool runOnModule(Module &module) {
    CallGraph &cg = getAnalysis<CallGraphWrapperPass>().getCallGraph();
    errs() << "------------------ Call Graph Analysis "
              "-----------------------------\n";
    for (auto it : cg) {
      const Function *f = it.first;
      CallGraphNode *node = it.second;

      if (!f || !f->hasInternalLinkage()) {
        continue;
      } else {
        StringRef internalFunctionName = f->getName();
        errs() << internalFunctionName
               << "'s #reference : " << node->getNumReferences() << "\n";
        // errs() << f->getName() << "->\n";
        // for (auto it = node->begin(); it != node->end(); ++it) {
          // CallGraphNode* childNode = (*it).second;
          // Function* childFunction = childNode->getFunction();
          // if (childFunction != NULL && childFunction->hasInternalLinkage()) {
          //   errs() << childNode->getFunction()->getName() << "\n";
          // }
        // }
      }
    }
    errs() << "\n";
    return false;
  }

  void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<CallGraphWrapperPass>();
  }

 public:
  static char ID;
  CGAnalyzerPass() : ModulePass(ID) { }
};
}

char CGAnalyzerPass::ID = 0;
static RegisterPass<CGAnalyzerPass> registerCGPass("CGAnalyze", "Data Structure Analyzer", false, false);

// static void registerCGDataStructureFunc(const PassManagerBuilder &, llvm::legacy::PassManagerBase &PM) {
//   PM.add(new CGAnalyzerPass());
// }
// static RegisterStandardPasses registerCGDataStructurePass(PassManagerBuilder::EP_EarlyAsPossible, registerCGDataStructureFunc);
