    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003478

	thumb_func_start sub_803FEF8
sub_803FEF8 ;@ 0x0803FEF8
	cmp r0, #0
	beq _0803FF14
	lsls r3, r0, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r2, r3
	lsrs r0, r0, #5
	lsls r0, r0, #2
	cmp r1, #0
	ldr r3, _0803FF20 ;@ =gUnknown_03003478
	beq _0803FF16
	ldr r1, [r3, r0]
	orrs r1, r2
	str r1, [r3, r0]
_0803FF14
	bx lr
_0803FF16
	ldr r1, [r3, r0]
	bics r1, r2
	str r1, [r3, r0]
	bx lr
	ALIGN
_0803FF20 DCDU gUnknown_03003478
	END