	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003EB4
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_80081A8
	IMPORT sub_80103C8
	IMPORT sub_8010604
	IMPORT sub_803B15C
	IMPORT sub_803B184
	IMPORT sub_803B1AE
	IMPORT strlen
	IMPORT CpuSet
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT gUnknown_03000000
	IMPORT gUnknown_0300028C
	IMPORT gUnknown_03000284
	IMPORT gUnknown_03000058
	IMPORT gUnknown_03000190
	IMPORT gUnknown_03000090
	IMPORT gUnknown_030001E0
	IMPORT gUnknown_03000308
	IMPORT sub_803F3E8

	thumb_func_start sub_800E22C
sub_800E22C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800E4A8
	adds r4, r1, #0
	movs r3, #0
	movs r2, #0x48
	subs r1, r5, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r1, [r0, #4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x16
	strh r0, [r4]
	strh r1, [r4, #2]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800E254
sub_800E254
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	ldr r3, _0800E4AC
	adds r5, r2, #0
	add sp, r3
	add r6, sp, #0x54
	adds r0, r6, #0
	bl sub_803B15C
	add r7, sp, #0x38
	adds r0, r7, #0
	bl sub_80103C8
	movs r1, #3
	lsls r1, r1, #0xb
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r4, r0, #0
	str r0, [sp, #0x38]
	lsls r0, r5, #0x1e
	bpl %1
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0
	bl sub_803D984
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	movs r0, #1
	movs r2, #0
	movs r1, #0
	lsls r0, r0, #0xd
	bl sub_803D984
	str r0, [sp, #0x3c]
	b %2
1
	ldr r0, _0800E4B4
	str r0, [sp, #0x44]
	ldr r0, _0800E4B8
	str r0, [sp, #0x40]
	ldr r0, _0800E4BC
	str r0, [sp, #0x3c]
2
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_8010604
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r1, [r3]
	adds r0, r6, #0
	bl sub_803B1AE
	lsls r0, r5, #0x1e
	bpl %3
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x44]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x3c]
	bl sub_803D9A8
3
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803D9A8
	movs r1, #0
	adds r0, r6, #0
	bl sub_803B184
	ldr r3, _0800E4C0
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800E2F6
sub_800E2F6
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0800E4A8
	movs r7, #0
	adds r4, r1, #0
	subs r1, r6, #4
	adds r3, r7, #0
	movs r2, #0x50
	adds r5, r1, #0
	sub sp, #0x80
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0, #4]
	lsrs r1, r0, #0x1c
	bne %11
	add r0, sp, #0x24
	bl gUnknown_03000000
	add r0, sp, #0x24
	bl gUnknown_0300028C
	adds r2, r0, #0
	ldr r0, _0800E4A8
	adds r2, #0x48
	movs r3, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r7, r0, #0
	adds r5, r0, #4
	adds r0, r5, #4
	bl strlen
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r6, r0
	str r1, [sp, #0x20]
	ldr r2, [r7]
	adds r1, r5, r0
	lsls r2, r2, #4
	lsrs r2, r2, #2
	subs r7, r2, r0
	add r0, sp, #0x24
	bl gUnknown_03000284
	adds r5, r0, #0
	adds r1, r7, #0
	cmp r7, r0
	bhi %4
	adds r1, r5, #0
4
	adds r1, #3
	lsrs r0, r1, #2
	lsls r0, r0, #2
	adds r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1f
	bpl %5
	movs r3, #0
	movs r2, #0
	movs r0, #1
	ldr r1, [sp, #0x1c]
	bl sub_803D9C4
	adds r6, r0, #0
	b %8
5
	cmp r4, #0
	bne %7
	movs r1, #0
	add r0, sp, #0x24
	ldr r5, [sp, #0x1c]
	bl gUnknown_03000058
	adds r0, r5, #0
6
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
7
	adds r6, r4, #0
8
	ldr r0, [sp, #0x1c]
	adds r0, r6, r0
	subs r3, r0, r7
	ldr r0, _0800E4A8
	str r3, [sp, #0x18]
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	adds r2, r7, #0
	bl sub_800529A
	bl sub_80081A8
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1e
	bpl %9
	movs r2, #0
	movs r1, #0
	ldr r0, _0800E4B0
	bl sub_803D984
	adds r7, r0, #0
	b %10
9
	ldr r7, _0800E4B8
10
	ldr r0, _0800E4C4
	ldr r0, [r0]
	cmp r0, #0
	beq %12
	movs r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r1, r7, #0
	ldr r2, _0800E4C8
	bl CpuSet
	b %14
11
	b %18
12
	lsls r1, r7, #0x1e
	ldr r0, _0800E4CC
	bpl %13
	movs r1, #0
	add r3, sp, #0
	strh r1, [r3, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r7, [r0, #4]
	ldr r1, _0800E4D0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %14
13
	movs r1, #0
	str r1, [sp, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r7, [r0, #4]
	ldr r1, _0800E4D4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
14
	ldr r2, _0800E4B0
	adds r1, r7, #0
	add r0, sp, #0x24
	bl gUnknown_03000190
	mov r0, sp
	bl sub_8008008
	ldr r3, [sp, #0x18]
	movs r0, #0
	str r3, [sp]
	add r3, sp, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r1, #2
	strb r1, [r3, #0xc]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	mov r1, sp
	bl gUnknown_03000090
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r5, #0
	add r0, sp, #0x24
	bl gUnknown_030001E0
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1e
	bpl %15
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D9A8
15
	ldr r0, [sp, #0x88]
	lsls r0, r0, #0x1f
	bpl %16
	cmp r4, #0
	beq %16
	adds r2, r5, #0
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_803F3E8
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
16
	movs r1, #0
	add r0, sp, #0x24
	bl gUnknown_03000058
	adds r0, r5, #0
17
	b %6
18
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne %19
	adds r1, r4, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x88]
	bl sub_800E254
	movs r0, #0
	b %6
19
	cmp r0, #3
	bne %17
	adds r1, r4, #0
	adds r0, r6, #0
	bl gUnknown_03000308
	movs r0, #0
	b %6
	ALIGN
_0800E4A8 DCDU gUnknown_03003E84
_0800E4AC DCDU 0xFFFFE880
_0800E4B0 DCDU 0x0000146C
_0800E4B4 DCDU 0x06014C00
_0800E4B8 DCDU 0x0601606C
_0800E4BC DCDU 0x06012C00
_0800E4C0 DCDU 0x0000178C
_0800E4C4 DCDU gUnknown_03003EB4
_0800E4C8 DCDU 0x0500051B
_0800E4CC DCDU REG_DMA3
_0800E4D0 DCDU 0x81000A36
_0800E4D4 DCDU 0x8500051B
	END
