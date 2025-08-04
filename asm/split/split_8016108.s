	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003EB8
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_800116A
	IMPORT sub_800EF2A
	IMPORT sub_80133A0
	IMPORT sub_80137F8
	IMPORT sub_80138E2
	IMPORT sub_80139AC
	IMPORT sub_80147FA
	IMPORT sub_8014B02
	IMPORT sub_80156B4
	IMPORT sub_80158F0
	IMPORT sub_8015A16
	IMPORT sub_8015B1E
	IMPORT sub_8015EC2
	IMPORT sub_8028C2E
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0
	IMPORT sub_80401E4

	thumb_func_start sub_8016108
sub_8016108
	push {r3, lr}
	movs r1, #0xf8
	ldrb r1, [r1, r0]
	cmp r1, #5
	bhs %6
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x05
2
	DCB 0x08
3
	DCB 0x0B
4
	DCB 0x0E
5
	DCB 0x03, 0x00
loc_8016122
	bl sub_8015EC2
6
	add sp, #4
	pop {r3}
	bx r3
loc_801612c
	bl sub_8015B1E
	b %6
loc_8016132
	bl sub_8015A16
	b %6
loc_8016138
	bl sub_80158F0
	b %6

	non_word_aligned_thumb_func_start sub_801613E
sub_801613E
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xf0
	adds r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq %8
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %7
	movs r1, #0
	bl sub_80401E4
7
	movs r0, #4
	strb r0, [r5, #8]
	movs r0, #0
	adds r4, #0xe0
	strh r0, [r4, #0x1a]
	ldr r0, _080163C8
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #1
	bl sub_8028C2E
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8016176
sub_8016176
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #1
	sub sp, #0x1c
	ldr r6, [r1]
	movs r2, #0xfc
	strb r0, [r2, r4]
	ldrb r0, [r6, #0xc]
	movs r2, #0x1b
	lsls r2, r2, #5
	adds r7, r4, r2
	strb r0, [r7, #2]
	ldrh r2, [r6, #6]
	strh r2, [r7]
	ldrh r1, [r1, #0x10]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	strb r1, [r7, #5]
	movs r1, #0
	strb r1, [r7, #3]
	ldrb r1, [r6, #0xd]
	cmp r1, #0
	beq %9
	cmp r1, r0
	bhi %9
	subs r0, r1, #1
	b %10
9
	movs r0, #0xff
10
	strb r0, [r7, #4]
	ldr r0, _080163CC
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa4
	str r0, [r4, #0x3c]
	bl sub_80007A0
	movs r0, #0xf0
	add r3, sp, #0
	strh r0, [r3, #0x10]
	movs r0, #0xa0
	strh r0, [r3, #0x12]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #5
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	movs r1, #1
	ldr r0, [r4, #0x3c]
	bl sub_80401E4
	ldrh r2, [r6, #8]
	ldrh r1, [r6, #0xa]
	adds r0, r4, #0
	bl sub_80156B4
	bl sub_800EF2A
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, _080163D0
	str r1, [sp, #0x18]
	ldr r0, [r0]
	str r0, [r1, #0x50]
	ldrb r0, [r7, #2]
	cmp r0, #2
	bhi %11
	movs r0, #1
	bl sub_80133A0
	ldrh r0, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	lsls r0, r0, #0x11
	lsrs r1, r0, #0x10
	movs r0, #0xa0
	movs r2, #0xa0
	str r2, [sp]
	movs r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r3, #0xf0
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_803F9C4
	b %12
11
	movs r0, #1
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r2, #4
	str r2, [sp, #0xc]
	movs r2, #0xa0
	movs r0, #0xa0
	str r2, [sp]
	movs r2, #0
	str r0, [sp, #4]
	movs r3, #0xf0
	str r1, [sp, #8]
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_803F9C4
12
	movs r1, #4
	ldr r0, [sp, #0x18]
	bl sub_80147FA
	ldrh r1, [r6, #4]
	movs r3, #0xff
	movs r2, #0
	ldr r0, [sp, #0x18]
	bl sub_80138E2
	ldrb r0, [r7, #2]
	movs r5, #0
	cmp r0, #0
	bls %14
13
	movs r0, #0
	bl sub_80133A0
	ldrh r1, [r0, #2]
	movs r0, #0x48
	str r0, [sp, #4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #3
	movs r2, #4
	str r2, [sp, #0xc]
	adds r0, r0, r4
	adds r0, #0xff
	movs r2, #0xa0
	str r2, [sp]
	adds r0, #0x81
	movs r2, #2
	movs r3, #0xf0
	str r1, [sp, #8]
	movs r1, #0
	str r0, [sp, #0x14]
	bl sub_803F9C4
	movs r1, #4
	ldr r0, [sp, #0x14]
	bl sub_80147FA
	ldrh r0, [r6, #4]
	movs r3, #0xff
	adds r0, r0, r5
	adds r0, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	ldr r0, [sp, #0x14]
	bl sub_80138E2
	adds r5, #1
	ldrb r0, [r7, #2]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	cmp r0, r5
	bhi %13
14
	movs r1, #0
	ldr r0, [sp, #0x18]
	bl sub_80139AC
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_80162D6
sub_80162D6
	push {r4, r5, r6, r7, lr}
	ldr r6, [r1]
	adds r4, r0, #0
	adds r0, #0xf0
	sub sp, #0x14
	movs r7, #0
	strb r7, [r0, #0xc]
	adds r0, r4, #0
	adds r0, #0xff
	adds r0, #0x61
	strh r7, [r0, #0x1c]
	movs r1, #2
	strh r1, [r0, #0x1e]
	movs r0, #0x1b
	lsls r0, r0, #5
	adds r0, r4, r0
	strb r7, [r0, #2]
	ldr r0, _080163CC
	ldr r0, [r0]
	bl sub_800116A
	movs r2, #0
	movs r1, #0xa3
	str r0, [r4, #0x3c]
	bl sub_80007A0
	movs r0, #0xd8
	add r3, sp, #0
	strh r0, [r3, #0x10]
	movs r0, #0x8a
	strh r0, [r3, #0x12]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0x10
	bl sub_8040034
	movs r1, #4
	ldr r0, [r4, #0x3c]
	bl sub_80401C0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldrh r2, [r6, #0xa]
	ldrh r1, [r6, #0xc]
	adds r0, r4, #0
	bl sub_80156B4
	bl sub_800EF2A
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #1
	adds r5, r0, #0
	bl sub_8014B02
	movs r1, #4
	adds r0, r5, #0
	bl sub_80147FA
	ldr r1, _080163D0
	movs r0, #0
	ldr r1, [r1]
	str r1, [r5, #0x50]
	bl sub_80133A0
	ldrh r0, [r0, #2]
	movs r2, #1
	str r2, [sp, #0xc]
	lsls r3, r0, #1
	adds r0, r3, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xa0
	str r2, [sp]
	str r1, [sp, #8]
	movs r0, #0x98
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0xf0
	adds r0, r5, #0
	bl sub_803F9C4
	ldr r0, [r6, #4]
	cmp r0, #0
	beq %15
	adds r1, r0, #0
	movs r2, #0
	adds r0, r5, #0
	bl sub_80137F8
	b %16
15
	movs r3, #0xff
	movs r2, #0
	adds r0, r5, #0
	ldrh r1, [r6, #8]
	bl sub_80138E2
16
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	adds r2, r4, #0
	adds r2, #0xff
	movs r1, #1
	ldr r0, [r6, #4]
	lsls r1, r1, #0x19
	adds r2, #1
	cmp r0, r1
	blo %18
	movs r1, #0x81
	lsls r1, r1, #0x12
	cmp r0, r1
	bhs %18
	str r0, [r2]
17
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	str r7, [r2]
	b %17
	ALIGN
_080163C8 DCDU gUnknown_0300345C
_080163CC DCDU gUnknown_03003EB8
_080163D0 DCDU gUnknown_03003468
	END
