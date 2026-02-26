	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT __16__rt_memclr_w
	IMPORT gPlayerPointer
	IMPORT gUnknown_03003464
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003E98
	IMPORT sub_800B3BA
	IMPORT sub_80237DA
	IMPORT sub_803DA80
	IMPORT sub_803FEF8

	non_word_aligned_thumb_func_start sub_802383A

sub_802383A
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #8
	movs r4, #0
	movs r1, #1
	lsls r1, r1, #9
	add r7, sp, #4
	add r0, sp, #4
	bl __16__rt_memclr_w
	ldr r5, _080239CC
	movs r6, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne %19
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r6, #0
	movs r2, #0
	movs r0, #0xc8
	bl sub_803DA80
	cmp r0, #0
	beq %18
	adds r1, r0, #0
	adds r1, #0xac
	str r6, [r1, #0x10]
	str r6, [r1, #0x14]
	str r6, [r1, #0x18]
18
	str r0, [r5, #4]
19
	movs r2, #1
	lsls r2, r2, #9
	ldr r5, _080239CC
	str r2, [sp]
	ldrb r0, [r5]
	adds r5, r7, #0
	lsls r2, r0, #9
	adds r2, #0x20
	ldr r0, _080239D0
	adds r3, r7, #0
	movs r1, #1
	ldr r0, [r0]
	bl sub_800B3BA
	movs r0, #0
	adds r1, r5, #0
20
	lsls r2, r0, #2
	ldr r2, [r1, r2]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	eors r4, r2
	cmp r0, #0x7f
	blt %20
	ldr r5, _080239CC
	adds r1, #0xff
	adds r1, #0xc1
	ldrb r0, [r5]
	ldr r1, [r1, #0x3c]
	movs r2, #1
	cmp r1, r4
	ldr r3, _080239DC
	bne %22
	ldr r1, [sp, #4]
	cmp r0, #0
	beq %21
	adds r3, #1
	cmp r0, #1
	beq %21
	adds r3, #1
21
	cmp r1, r3
	beq %24
22
	ldr r0, [r5, #4]
	movs r3, #0x90
	adds r1, r0, #0
	adds r1, #0x80
	str r6, [r0]
	strb r2, [r1, #4]
	movs r2, #3
	strb r2, [r3, r0]
	ldr r2, _080239E8
	adds r0, #0xb0
	str r2, [r1, #0x14]
	str r2, [r1, #0x18]
	strb r6, [r0, #2]
	movs r1, #2
	strb r1, [r0, #4]
	ldr r7, _080239E0
	movs r0, #0
23
	lsls r1, r0, #2
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	str r6, [r7, r1]
	blt %23
	b %28
24
	ldr r1, [r5, #4]
	ldr r3, [r7, #4]
	adds r0, r1, #0
	str r3, [r1]
	ldr r4, [r7, #8]
	adds r0, #0x80
	strb r4, [r0, #4]
	adds r3, r7, #0
	ldr r7, [r7, #0xc]
	adds r4, r1, #0
	adds r4, #0x90
	adds r3, #0xc
	adds r3, #4
	strb r7, [r4]
	ldm r3!, {r7}
	adds r1, #0xb0
	str r7, [r0, #0x14]
	ldm r3!, {r7}
	str r7, [r0, #0x18]
	ldm r3!, {r7}
	strb r7, [r4, #0xc]
	ldm r3!, {r4}
	ldr r7, _080239E0
	str r4, [r0, #0x20]
	ldr r4, [r3]
	str r4, [r0, #0x24]
	adds r0, r3, #4
	ldr r3, [r3, #4]
	adds r0, #4
	strb r3, [r1, #2]
	ldm r0!, {r3}
	strb r3, [r1, #4]
	adds r1, r0, #0
	movs r0, #0
25
	lsls r4, r0, #2
	adds r0, #1
	lsls r0, r0, #0x10
	ldm r1!, {r3}
	asrs r0, r0, #0x10
	cmp r0, #0x20
	str r3, [r7, r4]
	blt %25
	movs r4, #0
	adds r7, r2, #0
26
	ldr r0, [r5, #4]
	adds r1, r7, #0
	adds r0, #0x80
	ldrb r0, [r0, #4]
	cmp r0, r4
	bgt %27
	movs r1, #0
27
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_803FEF8
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa
	blt %26
28
	ldr r0, [r5, #4]
	movs r2, #0x2d
	adds r1, r0, #0
	adds r1, #0xb0
	strb r2, [r1, #3]
	ldrb r2, [r1, #4]
	movs r4, #0x60
	movs r7, #0x40
	lsls r3, r2, #1
	adds r3, r3, r2
	adds r2, r0, #0
	adds r2, #0xa0
	lsls r3, r3, #1
	strb r3, [r2, #0xf]
	strb r4, [r1]
	strb r7, [r1, #1]
	strb r3, [r2, #0xc]
	strb r4, [r2, #0xd]
	strb r6, [r2, #0xe]
	adds r0, #0xac
	bl sub_80237DA
	ldr r0, _080239D8
	ldr r1, [r5, #4]
	ldr r0, [r0]
	movs r2, #0x88
	ldr r0, [r0, #8]
	str r0, [r2, r1]
	adds r1, #0xb0
	strb r6, [r1, #0xa]
	movs r1, #0
	movs r0, #4
	bl sub_803FEF8
	add sp, #0x1fc
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_080239CC DCDU gPlayerPointer
_080239D0 DCDU gUnknown_03003464
_080239D8 DCDU gUnknown_03003E98
_080239DC DCDU 0xF0F0F023
_080239E0 DCDU gUnknown_03003478
_080239E8 DCDU 0x0000FFFF

	END
