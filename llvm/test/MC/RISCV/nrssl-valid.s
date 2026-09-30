# The NRSSL instructions: custom-1 opcode, funct3 = format, funct7 = operation.
# The expected encodings are computed from that layout, not taken from llvm-mc.
# RUN: llvm-mc %s -triple=riscv64 -mattr=+f -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+f < %s \
# RUN:     | llvm-objdump --mattr=+f -M no-aliases -d -r - \
# RUN:     | FileCheck -check-prefix=CHECK-ASM-AND-OBJ %s

# CHECK-ASM-AND-OBJ: nrs.morris.fadd fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x00]
nrs.morris.fadd fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fsub fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x02]
nrs.morris.fsub fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fmul fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x04]
nrs.morris.fmul fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fdiv fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x06]
nrs.morris.fdiv fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fsqrt fa0, fa1
# CHECK-ASM: encoding: [0x2b,0x85,0x05,0x08]
nrs.morris.fsqrt fa0, fa1
# CHECK-ASM-AND-OBJ: nrs.morris.feq a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x0a]
nrs.morris.feq a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.flt a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x0c]
nrs.morris.flt a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fle a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x0e]
nrs.morris.fle a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fmin fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x10]
nrs.morris.fmin fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fmax fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x12]
nrs.morris.fmax fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fsgnj fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x14]
nrs.morris.fsgnj fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fsgnjn fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x16]
nrs.morris.fsgnjn fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fsgnjx fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x85,0xc5,0x18]
nrs.morris.fsgnjx fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morris.fcvt.w a0, fa1
# CHECK-ASM: encoding: [0x2b,0x85,0x05,0x1a]
nrs.morris.fcvt.w a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morris.fcvt.wu a0, fa1
# CHECK-ASM: encoding: [0x2b,0x85,0x15,0x1a]
nrs.morris.fcvt.wu a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morris.fcvt.s.w fa0, a1
# CHECK-ASM: encoding: [0x2b,0x85,0x05,0x1c]
nrs.morris.fcvt.s.w fa0, a1
# CHECK-ASM-AND-OBJ: nrs.morris.fcvt.s.wu fa0, a1
# CHECK-ASM: encoding: [0x2b,0x85,0x15,0x1c]
nrs.morris.fcvt.s.wu fa0, a1

# CHECK-ASM-AND-OBJ: nrs.morrisheb.fadd fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x00]
nrs.morrisheb.fadd fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fsub fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x02]
nrs.morrisheb.fsub fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fmul fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x04]
nrs.morrisheb.fmul fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fdiv fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x06]
nrs.morrisheb.fdiv fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fsqrt fa0, fa1
# CHECK-ASM: encoding: [0x2b,0x95,0x05,0x08]
nrs.morrisheb.fsqrt fa0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisheb.feq a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x0a]
nrs.morrisheb.feq a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.flt a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x0c]
nrs.morrisheb.flt a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fle a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x0e]
nrs.morrisheb.fle a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fmin fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x10]
nrs.morrisheb.fmin fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fmax fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x12]
nrs.morrisheb.fmax fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fsgnj fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x14]
nrs.morrisheb.fsgnj fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fsgnjn fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x16]
nrs.morrisheb.fsgnjn fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fsgnjx fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0x95,0xc5,0x18]
nrs.morrisheb.fsgnjx fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fcvt.w a0, fa1
# CHECK-ASM: encoding: [0x2b,0x95,0x05,0x1a]
nrs.morrisheb.fcvt.w a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fcvt.wu a0, fa1
# CHECK-ASM: encoding: [0x2b,0x95,0x15,0x1a]
nrs.morrisheb.fcvt.wu a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fcvt.s.w fa0, a1
# CHECK-ASM: encoding: [0x2b,0x95,0x05,0x1c]
nrs.morrisheb.fcvt.s.w fa0, a1
# CHECK-ASM-AND-OBJ: nrs.morrisheb.fcvt.s.wu fa0, a1
# CHECK-ASM: encoding: [0x2b,0x95,0x15,0x1c]
nrs.morrisheb.fcvt.s.wu fa0, a1

# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fadd fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x00]
nrs.morrisbiasheb.fadd fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fsub fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x02]
nrs.morrisbiasheb.fsub fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fmul fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x04]
nrs.morrisbiasheb.fmul fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fdiv fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x06]
nrs.morrisbiasheb.fdiv fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fsqrt fa0, fa1
# CHECK-ASM: encoding: [0x2b,0xa5,0x05,0x08]
nrs.morrisbiasheb.fsqrt fa0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.feq a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x0a]
nrs.morrisbiasheb.feq a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.flt a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x0c]
nrs.morrisbiasheb.flt a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fle a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x0e]
nrs.morrisbiasheb.fle a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fmin fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x10]
nrs.morrisbiasheb.fmin fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fmax fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x12]
nrs.morrisbiasheb.fmax fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fsgnj fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x14]
nrs.morrisbiasheb.fsgnj fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fsgnjn fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x16]
nrs.morrisbiasheb.fsgnjn fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fsgnjx fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xa5,0xc5,0x18]
nrs.morrisbiasheb.fsgnjx fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fcvt.w a0, fa1
# CHECK-ASM: encoding: [0x2b,0xa5,0x05,0x1a]
nrs.morrisbiasheb.fcvt.w a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fcvt.wu a0, fa1
# CHECK-ASM: encoding: [0x2b,0xa5,0x15,0x1a]
nrs.morrisbiasheb.fcvt.wu a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fcvt.s.w fa0, a1
# CHECK-ASM: encoding: [0x2b,0xa5,0x05,0x1c]
nrs.morrisbiasheb.fcvt.s.w fa0, a1
# CHECK-ASM-AND-OBJ: nrs.morrisbiasheb.fcvt.s.wu fa0, a1
# CHECK-ASM: encoding: [0x2b,0xa5,0x15,0x1c]
nrs.morrisbiasheb.fcvt.s.wu fa0, a1

# CHECK-ASM-AND-OBJ: nrs.posit1.fadd fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x00]
nrs.posit1.fadd fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fsub fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x02]
nrs.posit1.fsub fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fmul fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x04]
nrs.posit1.fmul fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fdiv fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x06]
nrs.posit1.fdiv fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fsqrt fa0, fa1
# CHECK-ASM: encoding: [0x2b,0xb5,0x05,0x08]
nrs.posit1.fsqrt fa0, fa1
# CHECK-ASM-AND-OBJ: nrs.posit1.feq a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x0a]
nrs.posit1.feq a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.flt a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x0c]
nrs.posit1.flt a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fle a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x0e]
nrs.posit1.fle a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fmin fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x10]
nrs.posit1.fmin fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fmax fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x12]
nrs.posit1.fmax fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fsgnj fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x14]
nrs.posit1.fsgnj fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fsgnjn fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x16]
nrs.posit1.fsgnjn fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fsgnjx fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xb5,0xc5,0x18]
nrs.posit1.fsgnjx fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit1.fcvt.w a0, fa1
# CHECK-ASM: encoding: [0x2b,0xb5,0x05,0x1a]
nrs.posit1.fcvt.w a0, fa1
# CHECK-ASM-AND-OBJ: nrs.posit1.fcvt.wu a0, fa1
# CHECK-ASM: encoding: [0x2b,0xb5,0x15,0x1a]
nrs.posit1.fcvt.wu a0, fa1
# CHECK-ASM-AND-OBJ: nrs.posit1.fcvt.s.w fa0, a1
# CHECK-ASM: encoding: [0x2b,0xb5,0x05,0x1c]
nrs.posit1.fcvt.s.w fa0, a1
# CHECK-ASM-AND-OBJ: nrs.posit1.fcvt.s.wu fa0, a1
# CHECK-ASM: encoding: [0x2b,0xb5,0x15,0x1c]
nrs.posit1.fcvt.s.wu fa0, a1

# CHECK-ASM-AND-OBJ: nrs.posit2.fadd fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x00]
nrs.posit2.fadd fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fsub fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x02]
nrs.posit2.fsub fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fmul fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x04]
nrs.posit2.fmul fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fdiv fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x06]
nrs.posit2.fdiv fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fsqrt fa0, fa1
# CHECK-ASM: encoding: [0x2b,0xc5,0x05,0x08]
nrs.posit2.fsqrt fa0, fa1
# CHECK-ASM-AND-OBJ: nrs.posit2.feq a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x0a]
nrs.posit2.feq a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.flt a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x0c]
nrs.posit2.flt a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fle a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x0e]
nrs.posit2.fle a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fmin fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x10]
nrs.posit2.fmin fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fmax fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x12]
nrs.posit2.fmax fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fsgnj fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x14]
nrs.posit2.fsgnj fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fsgnjn fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x16]
nrs.posit2.fsgnjn fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fsgnjx fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xc5,0xc5,0x18]
nrs.posit2.fsgnjx fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.posit2.fcvt.w a0, fa1
# CHECK-ASM: encoding: [0x2b,0xc5,0x05,0x1a]
nrs.posit2.fcvt.w a0, fa1
# CHECK-ASM-AND-OBJ: nrs.posit2.fcvt.wu a0, fa1
# CHECK-ASM: encoding: [0x2b,0xc5,0x15,0x1a]
nrs.posit2.fcvt.wu a0, fa1
# CHECK-ASM-AND-OBJ: nrs.posit2.fcvt.s.w fa0, a1
# CHECK-ASM: encoding: [0x2b,0xc5,0x05,0x1c]
nrs.posit2.fcvt.s.w fa0, a1
# CHECK-ASM-AND-OBJ: nrs.posit2.fcvt.s.wu fa0, a1
# CHECK-ASM: encoding: [0x2b,0xc5,0x15,0x1c]
nrs.posit2.fcvt.s.wu fa0, a1

# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fadd fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x00]
nrs.morrisunaryheb.fadd fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fsub fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x02]
nrs.morrisunaryheb.fsub fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fmul fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x04]
nrs.morrisunaryheb.fmul fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fdiv fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x06]
nrs.morrisunaryheb.fdiv fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fsqrt fa0, fa1
# CHECK-ASM: encoding: [0x2b,0xd5,0x05,0x08]
nrs.morrisunaryheb.fsqrt fa0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.feq a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x0a]
nrs.morrisunaryheb.feq a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.flt a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x0c]
nrs.morrisunaryheb.flt a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fle a0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x0e]
nrs.morrisunaryheb.fle a0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fmin fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x10]
nrs.morrisunaryheb.fmin fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fmax fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x12]
nrs.morrisunaryheb.fmax fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fsgnj fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x14]
nrs.morrisunaryheb.fsgnj fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fsgnjn fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x16]
nrs.morrisunaryheb.fsgnjn fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fsgnjx fa0, fa1, fa2
# CHECK-ASM: encoding: [0x2b,0xd5,0xc5,0x18]
nrs.morrisunaryheb.fsgnjx fa0, fa1, fa2
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fcvt.w a0, fa1
# CHECK-ASM: encoding: [0x2b,0xd5,0x05,0x1a]
nrs.morrisunaryheb.fcvt.w a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fcvt.wu a0, fa1
# CHECK-ASM: encoding: [0x2b,0xd5,0x15,0x1a]
nrs.morrisunaryheb.fcvt.wu a0, fa1
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fcvt.s.w fa0, a1
# CHECK-ASM: encoding: [0x2b,0xd5,0x05,0x1c]
nrs.morrisunaryheb.fcvt.s.w fa0, a1
# CHECK-ASM-AND-OBJ: nrs.morrisunaryheb.fcvt.s.wu fa0, a1
# CHECK-ASM: encoding: [0x2b,0xd5,0x15,0x1c]
nrs.morrisunaryheb.fcvt.s.wu fa0, a1
