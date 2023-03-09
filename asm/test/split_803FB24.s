    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E88

	thumb_func_start sub_803FB24
sub_803FB24 ;@ 0x0803FB24
	str r1, [r0]
	cmp r3, #0xff
	bne _0803FB30
	ldr r1, _0803FB50 ;@ =gUnknown_03003E88
	ldr r1, [r1]
	ldrb r3, [r1, #0x14]
_0803FB30
	ldrh r1, [r0, #0x10]
	lsls r3, r3, #0x1a
	lsrs r1, r1, #6
	lsls r1, r1, #6
	lsrs r3, r3, #0x1a
	orrs r1, r3
	strh r1, [r0, #0x10]
	strb r2, [r0, #4]
	ldr r2, _0803FB54 ;@ =0x0000FFFE
	movs r1, #0
	str r1, [r0, #8]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	ALIGN
_0803FB50 DCDU gUnknown_03003E88
_0803FB54 DCDU 0x0000FFFE
