; funct3 of the NRSSL instructions selects the format.
; The encodings are computed from the instruction layout (funct7 = 0 for add).
; RUN: llc -mtriple=riscv64 -mattr=+d -target-abi=lp64d -show-mc-encoding < %s | FileCheck %s

; CHECK-LABEL: add_morris:
; CHECK: nrs.morris.fadd fa0, fa0, fa1 # encoding: [0x2b,0x05,0xb5,0x00]
define float @add_morris(float %x, float %y) {
  %r = call float @llvm.riscv.nrssl.f32.morris.add(float %x, float %y)
  ret float %r
}

; CHECK-LABEL: add_morrisHeb:
; CHECK: nrs.morrisheb.fadd fa0, fa0, fa1 # encoding: [0x2b,0x15,0xb5,0x00]
define float @add_morrisHeb(float %x, float %y) {
  %r = call float @llvm.riscv.nrssl.f32.morrisHeb.add(float %x, float %y)
  ret float %r
}

; CHECK-LABEL: add_morrisBiasHeb:
; CHECK: nrs.morrisbiasheb.fadd fa0, fa0, fa1 # encoding: [0x2b,0x25,0xb5,0x00]
define float @add_morrisBiasHeb(float %x, float %y) {
  %r = call float @llvm.riscv.nrssl.f32.morrisBiasHeb.add(float %x, float %y)
  ret float %r
}

; CHECK-LABEL: add_posit1:
; CHECK: nrs.posit1.fadd fa0, fa0, fa1 # encoding: [0x2b,0x35,0xb5,0x00]
define float @add_posit1(float %x, float %y) {
  %r = call float @llvm.riscv.nrssl.f32.posit1.add(float %x, float %y)
  ret float %r
}

; CHECK-LABEL: add_posit2:
; CHECK: nrs.posit2.fadd fa0, fa0, fa1 # encoding: [0x2b,0x45,0xb5,0x00]
define float @add_posit2(float %x, float %y) {
  %r = call float @llvm.riscv.nrssl.f32.posit2.add(float %x, float %y)
  ret float %r
}

; CHECK-LABEL: add_morrisUnaryHeb:
; CHECK: nrs.morrisunaryheb.fadd fa0, fa0, fa1 # encoding: [0x2b,0x55,0xb5,0x00]
define float @add_morrisUnaryHeb(float %x, float %y) {
  %r = call float @llvm.riscv.nrssl.f32.morrisUnaryHeb.add(float %x, float %y)
  ret float %r
}

declare float @llvm.riscv.nrssl.f32.morris.add(float, float)
declare float @llvm.riscv.nrssl.f32.morrisHeb.add(float, float)
declare float @llvm.riscv.nrssl.f32.morrisBiasHeb.add(float, float)
declare float @llvm.riscv.nrssl.f32.posit1.add(float, float)
declare float @llvm.riscv.nrssl.f32.posit2.add(float, float)
declare float @llvm.riscv.nrssl.f32.morrisUnaryHeb.add(float, float)
