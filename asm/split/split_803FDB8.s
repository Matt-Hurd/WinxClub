	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT CpuSet
	IMPORT GetEWRAMStart
	IMPORT gUnknown_03003EB4
	IMPORT sub_803DA9C

	thumb_func_start sub_803FDB8

sub_803FDB8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r6, sp, #0x28
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	ldm r6!, {r5, r6}
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bne %6
	bl GetEWRAMStart
	movs r7, #1
	lsls r7, r7, #9
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r7, #0
	bl sub_803DA9C
	str r0, [r4, #0x10]
	ldr r3, [r4, #0x14]
	movs r1, #0
	mov ip, r1
	adds r1, r0, #0
	adds r2, r3, #0
	cmp r3, r0
	bhs %2
	adds r7, r2, r7
	cmp r7, r1
	bls %2
	adds r2, r7, #0
	movs r7, #1
	lsls r7, r7, #9
	adds r1, r1, r7
	movs r7, #5
	lsls r7, r7, #0x15
	mov ip, r7
2
	ldr r7, _0803FE74
	ldr r7, [r7]
	cmp r7, #0
	beq %3
	adds r1, r0, #0
	adds r0, r3, #0
	ldr r2, _0803FE78
	bl CpuSet
	b %6
3
	lsls r3, r1, #0x1e
	ldr r0, _0803FE7C
	bmi %4
	lsls r3, r2, #0x1e
	bpl %5
4
	str r2, [r0]
	str r1, [r0, #4]
	movs r1, #0xff
	adds r1, #1
	mov r2, ip
	orrs r1, r2
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %6
5
	str r2, [r0]
	str r1, [r0, #4]
	movs r1, #0x80
	mov r2, ip
	orrs r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
6
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [sp, #8]
	lsls r2, r2, #3
	strh r0, [r1, r2]
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	strh r0, [r1, #2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	strh r5, [r0, #4]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	strh r6, [r0, #6]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_0803FE74 DCDU gUnknown_03003EB4
_0803FE78 DCDU REG_SOUNDCNT
_0803FE7C DCDU REG_DMA3

	END
