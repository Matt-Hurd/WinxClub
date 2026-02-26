	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003C40
	IMPORT sub_803F774
	IMPORT sub_803F8BC
	IMPORT sub_8040034

	non_word_aligned_thumb_func_start sub_8014582

sub_8014582
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x1c
	cmp r1, #0
	beq %29
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	beq %29
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x70]
	ldr r4, [sp, #0x1c]
	adds r4, #0x60
	cmp r0, #0
	beq %25
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	movs r5, #0
	muls r0, r1
	cmp r0, #0
	bls %25
	movs r6, #0xef
	add r7, sp, #4
24
	add r3, sp, #0
	strh r6, [r3, #4]
	movs r0, #0x9f
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	lsls r1, r5, #2
	ldr r0, [r0, #0x60]
	ldr r0, [r0, r1]
	adds r1, r7, #0
	bl sub_8040034
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	muls r0, r1
	cmp r0, r5
	bhi %24
25
	ldr r0, [sp, #0x1c]
	movs r3, #0x1a
	ldrsh r0, [r0, r3]
	add r2, sp, #0x10
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	bl sub_803F774
	add r3, sp, #0
	ldrb r0, [r3, #0x10]
	movs r5, #0
	cmp r0, #0
	bls %34
26
	ldr r0, [sp, #0x1c]
	movs r3, #0x18
	ldrsh r7, [r0, r3]
	add r3, sp, #0
	ldrb r0, [r3, #0x14]
	movs r6, #0
	cmp r0, #0
	bls %28
27
	add r3, sp, #0
	strh r7, [r3, #4]
	ldr r0, [sp, #0xc]
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x54]
	ldrb r0, [r4, #0xf]
	muls r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x54]
	ldrb r0, [r4, #0xf]
	muls r0, r5
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	adds r6, #1
	lsls r6, r6, #0x18
	adds r0, r0, r7
	lsls r7, r0, #0x10
	ldrb r0, [r3, #0x14]
	asrs r7, r7, #0x10
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo %27
28
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0xc]
	adds r5, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	movs r0, #0
	strh r0, [r1, #0xe]
	ldrb r0, [r3, #0x10]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, r0
	blo %26
	b %34
29
	b %30
30
	cmp r1, #0
	bne %34
	ldr r0, [sp, #0x1c]
	ldr r1, _08014730
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #2
	ldr r5, [r1, r0]
	cmp r5, #0
	beq %34
31
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	beq %38
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	add r2, sp, #0x10
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl sub_803F774
	add r3, sp, #0
	ldrb r0, [r3, #0x10]
	movs r6, #0
	cmp r0, #0
	bls %37
	adds r0, r5, #0
	adds r0, #0x60
	str r0, [sp, #0x18]
32
	movs r3, #0x18
	ldrsh r7, [r5, r3]
	add r3, sp, #0
	ldrb r0, [r3, #0x14]
	movs r4, #0
	cmp r0, #0
	bls %36
33
	add r3, sp, #0
	strh r7, [r3, #4]
	ldr r0, [sp, #0xc]
	strh r0, [r3, #6]
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #0xf]
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl sub_8040034
	ldr r1, [r5, #0x54]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #0xf]
	b %35
34
	b %39
35
	muls r0, r6
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	adds r4, #1
	lsls r4, r4, #0x18
	adds r0, r0, r7
	lsls r7, r0, #0x10
	ldrb r0, [r3, #0x14]
	asrs r7, r7, #0x10
	lsrs r4, r4, #0x18
	cmp r4, r0
	blo %33
36
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #0xc]
	adds r6, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r3, #0x10]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo %32
37
	movs r0, #0
	strh r0, [r5, #0xe]
38
	ldr r5, [r5, #4]
	cmp r5, #0
	bne %31
39
	ldr r1, [sp, #0x1c]
	movs r0, #0
	strh r0, [r1, #0xe]
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08014730 DCDU gUnknown_03003C40

	END
