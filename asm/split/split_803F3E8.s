	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB4
	IMPORT CpuSet

	thumb_func_start sub_803F3E8
sub_803F3E8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r1, r3, #0
	adds r0, r4, #0
	movs r5, #0
	cmp r4, r3
	bhs %1
	adds r6, r4, r2
	cmp r6, r1
	bls %1
	adds r4, r6, #0
	adds r1, r1, r2
	movs r5, #5
	lsls r5, r5, #0x15
1
	ldr r6, _0803F45C
	ldr r6, [r6]
	cmp r6, #0
	beq %3
	lsls r1, r2, #9
	movs r2, #1
	lsls r2, r2, #0x1a
	lsrs r1, r1, #0xb
	orrs r2, r1
	adds r1, r3, #0
	bl CpuSet
2
	pop {r4, r5, r6}
	pop {r3}
	bx r3
3
	lsls r3, r1, #0x1e
	ldr r0, _0803F460
	bmi %4
	lsls r3, r4, #0x1e
	bmi %4
	lsls r3, r2, #0x1e
	bpl %5
4
	str r4, [r0]
	str r1, [r0, #4]
	lsrs r1, r2, #1
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %2
5
	str r4, [r0]
	str r1, [r0, #4]
	lsrs r1, r2, #2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %2
	ALIGN
_0803F45C DCDU gUnknown_03003EB4
_0803F460 DCDU REG_DMA3
	END
