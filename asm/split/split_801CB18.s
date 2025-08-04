	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003E98
	IMPORT sub_8001C22
	IMPORT sub_800202A
	IMPORT sub_801F640
	IMPORT __call_via_r1

	thumb_func_start sub_801CB18
sub_801CB18
	adds r3, r0, #0
	adds r3, #0xff
	adds r3, #0x81
	push {r4, r5, r6, r7}
	ldr r0, [r3, #0x30]
	lsls r4, r1, #1
	ldrh r5, [r0, r4]
	adds r4, r1, r2
	adds r6, r4, #0
	subs r4, #1
	cmp r4, r1
	bls %2
1
	ldr r0, [r3, #0x30]
	lsls r2, r1, #1
	adds r7, r0, r2
	ldrh r7, [r7, #2]
	adds r1, #1
	cmp r4, r1
	strh r7, [r0, r2]
	bhi %1
2
	ldr r0, [r3, #0x30]
	lsls r1, r6, #1
	adds r0, r0, r1
	subs r0, #0x20
	strh r5, [r0, #0x1e]
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_801CB4E
sub_801CB4E
	push {r3, r4, r5, lr}
	ldr r5, _0801CCE0
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_8001C22
	ldr r0, [r5]
	bl sub_800202A
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x17
	bpl %4
	ldr r0, _0801CCE4
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xf
	bics r0, r1
	bne %4
	adds r3, r4, #0
	adds r3, #0xff
	adds r3, #0x81
	ldr r0, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0xf9
	ldrh r4, [r0, r1]
	movs r0, #0xfc
3
	ldr r1, [r3, #0x30]
	lsls r2, r0, #1
	adds r5, r1, r2
	ldrh r5, [r5, #2]
	adds r0, #1
	cmp r0, #0xff
	strh r5, [r1, r2]
	blo %3
	movs r1, #1
	ldr r0, [r3, #0x30]
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r0, #0x20
	strh r4, [r0, #0x1e]
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CBAA
sub_801CBAA
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r7, r1, #0
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %6
5
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	adds r1, r7, #0
	bl sub_801F640
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi %5
6
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CBDE
sub_801CBDE
	push {r4, r5, r6, r7}
	movs r3, #5
	lsls r3, r3, #8
	adds r5, r0, r3
	ldr r3, [r5, #0x1c]
	movs r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq %10
	ldr r3, _0801CCE8
	movs r7, #2
	ldr r4, [r3]
7
	lsls r3, r2, #2
	adds r3, r3, r0
	ldr r3, [r3, #0x20]
	ldr r3, [r3, #0x7c]
	lsls r3, r3, #8
	lsrs r3, r3, #0x18
	cmp r1, #0
	beq %8
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r3, r3, r6
	ldrh r6, [r3, #0x18]
	orrs r6, r7
	strh r6, [r3, #0x18]
	b %9
8
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r6, r3, r6
	ldrh r3, [r6, #0x18]
	bics r3, r7
	strh r3, [r6, #0x18]
9
	ldr r3, [r5, #0x1c]
	adds r2, #1
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi %7
10
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_801CC3C
sub_801CC3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %12
11
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi %11
12
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CC72
sub_801CC72
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %14
13
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi %13
14
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	thumb_func_start sub_801CCA8
sub_801CCA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r6, r5, r0
	ldr r0, [r6, #0x1c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq %16
15
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x20]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r6, #0x1c]
	adds r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r4
	bhi %15
16
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	ALIGN
_0801CCE0 DCDU gUnknown_03003450
_0801CCE4 DCDU gUnknown_03003E98
_0801CCE8 DCDU gUnknown_03003454
	END
