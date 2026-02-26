	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000D5A
	IMPORT sub_8001232
	IMPORT sub_8001338
	IMPORT sub_8001432
	IMPORT sub_80016D8
	IMPORT sub_800C0EC
	IMPORT sub_800C1CA
	IMPORT sub_800C4F0
	IMPORT sub_800CD28

	non_word_aligned_thumb_func_start sub_8000532

sub_8000532
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r7, _08000658
	lsls r0, r0, #0x15
	bpl %16
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_8001432
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bics r0, r1
	str r0, [r4]
16
	ldr r0, [r4]
	ldr r5, _08000654
	lsls r0, r0, #0x1f
	bpl %18
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_8001232
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %17
	ldr r0, [r5]
	cmp r0, #0
	beq %17
	ldr r1, [r4, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0xb
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	beq %17
	adds r1, r4, #0
	bl sub_800CD28
17
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
18
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	bpl %19
	adds r1, r4, #0
	ldr r0, [r7]
	bl sub_8001338
19
	ldr r0, [r4]
	lsls r0, r0, #0x13
	bpl %20
	ldr r0, [r5]
	cmp r0, #0
	beq %20
	adds r1, r4, #0
	bl sub_800C1CA
20
	ldr r1, [r4, #0x14]
	ldr r0, [r1, #4]
	lsls r0, r0, #0x1f
	bpl %26
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq %21
	ldr r6, [r4, #0x48]
	b %22
21
	ldr r6, [r4, #0x10]
22
	cmp r6, #0
	beq %24
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %23
	ldr r0, [r5]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r6]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
23
	adds r1, r0, #0
	ldr r1, [r1, #0xc]
	ldr r0, [r5]
	lsls r2, r1, #0x1c
	ldr r1, [r4, #0x14]
	lsrs r2, r2, #0x1c
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	bl sub_800C0EC
	b %25
24
	ldr r0, [r5]
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	movs r2, #1
	bl sub_800C0EC
25
	ldr r0, [r4, #0x14]
	movs r2, #0x1f
	ldr r1, [r0]
	lsls r2, r2, #8
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
26
	ldrh r0, [r4, #0x26]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1e
	beq %27
	ldrh r1, [r4, #0x28]
	ldr r0, [r5]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1b
	bl sub_800C4F0
	ldrh r0, [r4, #0x26]
	movs r1, #3
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r4, #0x26]
27
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq %28
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq %28
	ldr r0, [r7]
	bl sub_80016D8
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
28
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08000654 DCDU gUnknown_03003EA0
_08000658 DCDU gUnknown_03003EB8

	END
