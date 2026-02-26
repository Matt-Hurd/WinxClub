	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT gUnknown_0300334A
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_0300345C
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_80268AC
	IMPORT sub_803357C
	IMPORT sub_803F654
	IMPORT sub_803F6B4
	IMPORT sub_803FC14
	IMPORT sub_80401E4

	non_word_aligned_thumb_func_start sub_8033EBA

sub_8033EBA
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %11
	movs r1, #0
	bl sub_80401E4
	b %12
11
	movs r1, #1
	bl sub_80401E4
12
	ldr r0, [r4, #0x40]
	movs r1, #0x9c
	ldr r1, [r1, r0]
	movs r7, #0
	cmp r1, #0xf
	beq %13
	cmp r1, #0x10
	bne %17
13
	ldr r1, [r4, #0x34]
	lsls r2, r1, #0x15
	lsrs r2, r2, #0x1d
	cmp r2, #1
	bne %15
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	cmp r1, #1
	bne %14
	ldr r0, [r4, #0x44]
	ldr r1, [r0, #0x74]
	str r1, [r0, #0x70]
	b %15
14
	cmp r1, #2
	bne %15
	ldr r0, [r0, #0x7c]
	ldr r1, _08034064
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0xb
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	movs r2, #2
	bics r1, r2
	strh r1, [r0, #0x18]
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl sub_803F654
15
	ldr r0, _0803405C
	movs r1, #0x29
	ldr r0, [r0]
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r0, [r4, #0x48]
	bl sub_803357C
16
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
17
	ldr r2, [r4, #0x34]
	movs r6, #7
	adds r5, r4, #0
	lsls r1, r2, #0x15
	lsrs r1, r1, #0x1d
	adds r5, #0x40
	lsls r6, r6, #8
	cmp r1, #0
	beq %21
	cmp r1, #1
	beq %22
	cmp r1, #2
	bne %20
	ldr r0, [r4, #4]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	movs r3, #0x16
	ldr r6, _08034060
	lsls r2, r1, #0x16
	lsrs r2, r2, #0x1e
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	muls r2, r3
	adds r2, r2, r6
	lsls r1, r1, #1
	ldrh r1, [r2, r1]
	adds r1, #2
	cmp r0, r1
	ldr r0, [r4, #4]
	beq %24
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %18
	bl sub_8000914
18
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	movs r1, #0x13
	lsls r1, r1, #5
	cmp r0, r1
	beq %19
	ldrh r0, [r5, #0xc]
	movs r3, #0x16
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	muls r1, r3
	adds r1, r1, r6
	lsls r0, r0, #1
	ldrh r1, [r1, r0]
	ldr r0, [r4, #0x3c]
	adds r1, #5
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %19
	bl sub_8000914
19
	ldr r7, _08034058
	ldr r0, [r7]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x46
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
20
	b %29
21
	ldrh r1, [r5, #0xc]
	lsls r0, r1, #0x16
	lsrs r2, r0, #0x1e
	cmp r2, #2
	bne %25
	ldrh r0, [r5, #0x12]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r5, #0x12]
	cmp r0, #0x78
	bls %25
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1c
	ldr r6, _08034060
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0x2c]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_803FC14
	ldr r0, [r4, #0x3c]
	bl sub_803F6B4
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1, #0x2e]
	cmp r0, r1
	beq %23
	movs r2, #0
	ldr r0, [r4, #0x3c]
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_803FC14
	b %23
22
	b %32
23
	strh r7, [r5, #0x12]
	b %29
24
	b %41
	ALIGN

	ALIGN
_08034058 DCDU gUnknown_0300345C
_0803405C DCDU gUnknown_03003458
_08034060 DCDU gUnknown_0300334A
_08034064 DCDU gUnknown_03003454

	END
