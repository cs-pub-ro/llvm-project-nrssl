# The NRSSL instructions only exist with their format in the mnemonic: a plain
# fadd used to assemble to whichever format came first.
# RUN: not llvm-mc -triple=riscv64 -mattr=+f < %s 2>&1 | FileCheck %s

fadd fa0, fa1, fa2 # CHECK: :[[@LINE]]:1: error: unrecognized instruction mnemonic
nrs.posit3.fadd fa0, fa1, fa2 # CHECK: :[[@LINE]]:1: error: unrecognized instruction mnemonic
nrs.posit1.fadd a0, fa1, fa2 # CHECK: :[[@LINE]]:17: error: invalid operand for instruction
