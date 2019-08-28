#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li s5, 0xf0774453522a1063
    li a2, 0xb370bd7dd2d6b642
    rolw a5,s5,a2
    sd a5,0(a1)
    li a7, 0xedd116c18a671b8c
    li s5, 0x6f94f8db5b4289cf
    rolw a3,a7,s5
    sd a3,8(a1)
    li t5, 0x8130cd0d02eb0801
    li a5, 0x36ecfc1781920806
    rolw s11,t5,a5
    sd s11,16(a1)
    li s10, 0x1f9f61e943737b61
    li s5, 0xb320deb657861f11
    rolw a5,s10,s5
    sd a5,24(a1)
    li a0, 0x915695b3f20d8a82
    li t1, 0xbda8a08e1ceb0c11
    rolw a6,a0,t1
    sd a6,32(a1)
    li a0, 0x925c6cb79543c51a
    li t4, 0xe79ad1779a48a02c
    rolw t5,a0,t4
    sd t5,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END