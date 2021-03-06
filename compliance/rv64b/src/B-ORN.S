#include "compliance_test.h"
#include "compliance_io.h"
#include "test_macros.h"

RV_COMPLIANCE_RV32M

RV_COMPLIANCE_CODE_BEGIN
    la a1,test_results
    li a5, 0xa7b2ca1a778bd1db
    li a6, 0x935b4969def3c035
    orn a4,a5,a6
    sd a4,0(a1)
    li a2, 0x55f04ca8ffaace79
    li s9, 0x1a785a2011e15d6b
    orn s8,a2,s9
    sd s8,8(a1)
    li t0, 0xb23279cf04bc5eac
    li s3, 0x2c4cb61533397f4e
    orn s0,t0,s3
    sd s0,16(a1)
    li s11, 0x6b5ed10440ee4840
    li a3, 0x4aecd4a818331b85
    orn s3,s11,a3
    sd s3,24(a1)
    li s7, 0x1607b7125a0d8ae2
    li a3, 0x05100ad8faafb8a6
    orn t6,s7,a3
    sd t6,32(a1)
    li t2, 0xd7ab5710cccb9502
    li s6, 0x7926d5b8de163e74
    orn s0,t2,s6
    sd s0,40(a1)
    RV_COMPLIANCE_HALT
RV_COMPLIANCE_CODE_END

.data
RV_COMPLIANCE_DATA_BEGIN
test_results:
.fill 6,8,-1
RV_COMPLIANCE_DATA_END
