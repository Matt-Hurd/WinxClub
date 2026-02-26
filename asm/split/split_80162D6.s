	INCLUDE asm/macros.inc
	AREA text, CODE

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
	IMPORT sub_803F9C4
	IMPORT sub_8040034
	IMPORT sub_80401C0

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

	ALIGN
_080163CC DCDU gUnknown_03003EB8
_080163D0 DCDU gUnknown_03003468

	END
