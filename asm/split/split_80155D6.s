	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6
	IMPORT sub_801CBDE

	non_word_aligned_thumb_func_start sub_80155D6

sub_80155D6
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	movs r7, #0
7
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #8]
	cmp r0, #0
	beq %8
	ldr r0, _080158BC
	adds r1, r6, #0
	adds r1, #8
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #8]
8
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %7
	movs r5, #0
9
	lsls r0, r5, #2
	adds r6, r0, r4
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq %10
	ldr r0, _080158BC
	adds r1, r6, #0
	adds r1, #0x28
	ldr r0, [r0]
	bl sub_8000DE6
	str r7, [r6, #0x28]
10
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #2
	blo %9
	ldr r6, _080158BC
	movs r5, #0
11
	lsls r0, r5, #2
	adds r7, r0, r4
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq %12
	adds r1, r7, #0
	adds r1, #0x30
	ldr r0, [r6]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r7, #0x30]
12
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #3
	blo %11
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %13
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r6]
	bl sub_8000DE6
13
	movs r5, #0
14
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #4
	blo %14
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #5
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r1, _080158C0
	movs r0, #4
	ldr r1, [r1]
	ands r1, r0
	bne %15
	ldr r0, _080158C4
	movs r1, #0
	ldr r0, [r0]
	bl sub_801CBDE
15
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_080158BC DCDU gUnknown_03003EB8
_080158C0 DCDU gUnknown_03003478
_080158C4 DCDU gUnknown_03003458

	END
