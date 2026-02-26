	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT gUnknown_03003E84
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_803DABC
	IMPORT sub_803DAC0

	non_word_aligned_thumb_func_start sub_8010B8A

sub_8010B8A
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #7
	lsls r0, r0, #8
	adds r2, r0, #0
	adds r4, r7, r0
	movs r1, #0
	str r1, [sp, #0x28]
	ldr r1, [r4]
	ldr r0, _08010D58
	subs r2, #0x40
	adds r5, r7, #0
	adds r5, #0x94
	adds r6, r7, r2
	cmp r1, #0
	ldr r0, [r0]
	bgt %19
	ldr r1, [r6, #0x18]
	ldr r2, [r6, #0x34]
	cmp r1, r2
	blt %15
	movs r0, #0
14
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
15
	movs r1, #0x6f
	lsls r1, r1, #4
	adds r1, r7, r1
	cmp r2, #0
	bne %16
	movs r0, #0xb
	strb r0, [r1]
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	b %14
16
	subs r2, #1
	str r2, [r6, #0x34]
	ldrb r2, [r1]
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r1]
	cmp r2, #0xb
	blo %17
	movs r3, #0
	strb r3, [r1]
17
	ldrb r1, [r1]
	ldr r2, _08010D5C
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r1, r7
	adds r1, r1, r2
	str r1, [sp, #0x20]
	ldr r2, [r1]
	cmp r2, #0
	bne %18
	movs r0, #0
	str r0, [r6, #0x3c]
	b %14
18
	ldr r1, [sp, #0x20]
	ldr r1, [r1, #8]
	lsls r3, r1, #0x13
	lsrs r3, r3, #0x11
	adds r2, r2, r3
	adds r2, #8
	str r2, [sp, #0x1c]
	lsrs r1, r1, #0xd
	lsls r2, r1, #2
	ldr r1, [sp, #0x1c]
	movs r3, #0
	bl sub_800529A
	ldr r0, _08010D58
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	bl sub_803DAC0
	str r0, [sp, #0x18]
	ldr r0, [r5]
	ldr r1, [r0, #0x14]
	adds r2, r1, r0
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl __call_via_r2
	str r0, [r4]
	str r0, [r4, #4]
	mov r0, sp
	bl sub_8008008
	ldr r0, [sp, #0x18]
	add r3, sp, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #8]
	lsrs r0, r0, #0xd
	lsls r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x78]
	str r0, [sp, #8]
	movs r0, #2
	strb r0, [r3, #0xc]
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x38]
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r1, [r0, #8]
	adds r2, r1, r0
	mov r1, sp
	adds r0, r5, #0
	bl __call_via_r2
	ldr r0, [r5]
	ldr r1, [r0, #0x24]
	adds r1, r1, r0
	adds r0, r5, #0
	bl __call_via_r1
	ldr r1, [sp, #0x18]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [r4, #8]
	ldr r2, [sp, #0x1c]
	adds r1, r2, r0
	b %20
19
	b %21
20
	str r1, [r4, #0xc]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	str r0, [sp, #0x24]
	b %22
21
	ldr r2, [r4, #8]
	cmp r2, #0
	beq %22
	movs r3, #0
	ldr r1, [r4, #0xc]
	bl sub_800529A
	ldr r1, [r4, #0xc]
	ldr r0, _08010D58
	str r1, [sp, #0x28]
	ldr r0, [r0]
	bl sub_803DAC0
	str r0, [sp, #0x24]
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	bl __call_via_r2
22
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	bgt %23
	movs r0, #0
	b %14
23
	ldr r1, [r4, #8]
	movs r0, #0
	cmp r1, #0
	beq %24
	ldr r0, _08010D58
	adds r2, r1, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	bl sub_803DABC
24
	ldr r1, [r4, #8]
	adds r2, r0, #0
	cmp r1, r0
	bls %25
	subs r2, #8
25
	cmp r2, #0
	bne %26
	movs r2, #1
26
	ldr r1, [r6, #0x38]
	str r1, [sp, #0x20]
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	adds r3, r1, r0
	ldr r1, [r6, #0x3c]
	adds r0, r5, #0
	bl __call_via_r3
	ldr r0, [r5, #0xc]
	str r0, [r6, #0x38]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	blo %27
	ldr r1, [sp, #0x20]
	subs r7, r0, r1
	b %28
27
	adds r7, #0x80
	ldr r1, [r7]
	ldr r2, [sp, #0x20]
	adds r1, #1
	subs r1, r1, r2
	adds r7, r0, r1
28
	ldr r0, [r5]
	ldr r1, [r0, #0x24]
	adds r1, r1, r0
	adds r0, r5, #0
	bl __call_via_r1
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	ldr r1, [r4, #8]
	subs r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	ldr r0, [r4]
	subs r0, r0, r7
	str r0, [r4]
	ldr r0, [r6, #0x3c]
	subs r0, r0, r7
	str r0, [r6, #0x3c]
	movs r0, #1
	b %14
	ALIGN

	ALIGN
_08010D58 DCDU gUnknown_03003E84
_08010D5C DCDU 0x0000064C

	END
