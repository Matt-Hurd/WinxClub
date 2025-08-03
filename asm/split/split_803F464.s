	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB4
	IMPORT CpuSet

	thumb_func_start sub_803F464
sub_803F464
	ldr r3, _0803F4C4
	push {r4, lr}
	ldr r3, [r3]
	sub sp, #8
	cmp r3, #0
	beq _0803F48C
	str r2, [sp, #4]
	movs r2, #5
	lsls r1, r1, #9
	lsrs r1, r1, #0xb
	lsls r2, r2, #0x18
	orrs r2, r1
	adds r1, r0, #0
	add r0, sp, #4
	bl CpuSet
_0803F484
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_0803F48C
	lsls r3, r0, #0x1e
	ldr r4, _0803F4C8
	bmi _0803F496
	lsls r3, r1, #0x1e
	bpl _0803F4AE
_0803F496
	add r3, sp, #0
	strh r2, [r3, #4]
	add r2, sp, #4
	str r2, [r4]
	str r0, [r4, #4]
	lsrs r0, r1, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0803F484
_0803F4AE
	str r2, [sp, #4]
	add r2, sp, #4
	str r2, [r4]
	str r0, [r4, #4]
	lsrs r0, r1, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0803F484
	ALIGN
_0803F4C4 DCDU gUnknown_03003EB4
_0803F4C8 DCDU REG_DMA3
	END