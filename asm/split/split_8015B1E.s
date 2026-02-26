	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __call_via_r3
	IMPORT gUnknown_080414B8
	IMPORT gUnknown_08050664
	IMPORT sub_803F814
	IMPORT sub_8040034
	IMPORT sub_8040594

	non_word_aligned_thumb_func_start sub_8015B1E

sub_8015B1E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x19
	adds r1, r4, #0
	sub sp, #0x2c
	adds r1, #0xe0
	lsls r0, r0, #0x12
	str r0, [sp, #0xc]
	str r1, [sp, #0x28]
	ldrh r6, [r1, #0x1a]
	movs r5, #0x1d
	lsls r5, r5, #0x13
	adds r0, r6, #0
	bl sub_8040594
	movs r0, #0x2d
	muls r0, r6
	lsrs r2, r6, #1
	adds r0, r0, r2
	adds r0, r1, r0
	add r3, sp, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x12
	ldr r1, _08015CF0
	lsrs r0, r0, #0x11
	ldrsh r0, [r1, r0]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	bl __16_ll_mulss
	add r2, pc, #0x194
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0xf0
	subs r0, r1, r0
	subs r0, #8
	lsls r6, r0, #0x10
	asrs r6, r6, #0x10
	ldr r7, _08015CFC
	movs r5, #0
26
	ldr r7, _08015CFC
	lsls r0, r5, #1
	ldrh r0, [r7, r0]
	add r3, sp, #0
	add r1, sp, #4
	adds r0, r0, r6
	adds r0, #8
	strh r0, [r3, #4]
	movs r0, #0x6c
	strh r0, [r3, #6]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #8]
	bl sub_8040034
	adds r5, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r5, #8
	blo %26
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r5, r4, r0
	ldrb r0, [r5, #2]
	movs r7, #0
	cmp r0, #0
	bls %29
27
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, #0xff
	adds r0, #0x81
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	ldrb r3, [r5, #2]
	mov ip, r2
	add ip, r1
	lsls r1, r7, #0x1e
	lsrs r1, r1, #0x1f
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r1, #0x8b
	cmp r3, #2
	bls %28
	subs r1, #0xc
28
	lsls r2, r1, #0x10
	lsls r1, r7, #0x1f
	lsrs r1, r1, #0x1f
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, #0x50
	lsls r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	bl __call_via_r3
	adds r7, #1
	ldrb r0, [r5, #2]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	cmp r0, r7
	bhi %27
29
	ldrb r0, [r5, #2]
	adds r7, r4, #0
	adds r7, #0x80
	cmp r0, #0
	beq %30
	ldr r0, [r7]
	movs r2, #0x70
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	adds r0, r6, #0
	adds r0, #0x48
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl __call_via_r3
30
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq %32
	movs r2, #0
	adds r0, r4, #0
	adds r0, #0xff
	movs r3, #0
	adds r0, #0x81
	str r2, [sp]
	add r1, sp, #0x14
	bl sub_803F814
	add r3, sp, #0
	ldrh r0, [r3, #0x14]
	ldrb r2, [r5, #2]
	adds r0, r0, r6
	subs r0, #0x14
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x86
	cmp r2, #2
	bls %31
	movs r0, #0x7a
31
	add r3, sp, #0
	strh r1, [r3, #4]
	strh r0, [r3, #6]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_8040034
32
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl __16_ll_mulss
	add r2, pc, #0x90
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	asrs r0, r0, #0x10
	movs r1, #0x64
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xff
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	adds r1, #5
	str r1, [sp, #0x24]
	cmp r0, #0
	beq %33
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	adds r3, r1, r0
	ldr r0, [sp, #0x18]
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	movs r1, #4
	ldr r0, [sp, #0x24]
	bl __call_via_r3
33
	ldr r0, [sp, #0x18]
	movs r6, #0
	adds r0, #0x94
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x20]
34
	lsls r0, r6, #2
	adds r0, r0, r4
	ldr r1, [r0, #0x30]
	cmp r1, #0
	beq %35
	ldr r2, _08015CFC
	lsls r1, r6, #1
	adds r2, #0x10
	ldrh r1, [r2, r1]
	ldr r2, [sp, #0x20]
	add r3, sp, #0
	adds r1, #4
	strh r1, [r3, #4]
	strh r2, [r3, #6]
	ldr r0, [r0, #0x30]
	add r1, sp, #4
	bl sub_8040034
35
	adds r6, #1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	cmp r6, #3
	blo %34
	movs r6, #0
36
	lsls r0, r6, #2
	adds r1, r0, r4
	ldr r0, [r1, #0x28]
	b %37
	ALIGN

	ALIGN
_08015CF0 DCDU gUnknown_080414B8
_08015CFC DCDU gUnknown_08050664

	END
