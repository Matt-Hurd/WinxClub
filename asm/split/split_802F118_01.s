	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT Init_and_add_some_object
	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT __VTABLE__344Anonymous18
	IMPORT __nw__FUi
	IMPORT gUnknown_080414B8
	IMPORT sub_8040594

	thumb_func_start Anonymous18__Create

Anonymous18__Create
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bne %2
	movs r0, #0xd4
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _0802F518
	adds r5, r4, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc4
	str r0, [sp, #8]
	movs r0, #0x12
	strh r0, [r4, #4]
	adds r5, #0x80
	ldr r0, [r5, #4]
	ldr r1, _0802F51C
	adds r6, r4, #0
	ands r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x7c]
	movs r1, #0xf
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r4, #0x7c]
	movs r0, #0x11
	str r0, [r5, #0x1c]
	adds r6, #0xa0
	movs r7, #0
	str r7, [r5, #0x24]
	strh r7, [r6, #2]
	strh r7, [r6, #8]
	adds r0, r4, #0
	adds r0, #0x70
	strh r7, [r6, #0xa]
	movs r1, #0xa
	strb r1, [r0, #0xd]
	strb r7, [r0, #0xc]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r5, #0xc]
	movs r0, #1
	bl sub_8040594
	adds r0, r1, #0
	adds r0, #0x2d
	add r3, sp, #0
	strh r0, [r3, #4]
	ldrh r0, [r6, #8]
	ldr r2, _0802F520
	lsls r1, r0, #0x10
	str r1, [r5, #0x2c]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x11
	ldrsh r0, [r2, r0]
	lsls r0, r0, #2
	bl __16_ll_mulss
	add r2, pc, #0x378
	ldm r2!, {r2, r3}
	bl __16_ll_sdiv
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #1
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0xc]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #8]
	str r7, [r0]
	str r7, [r0, #4]
	adds r0, r4, #0
	b %1

	ALIGN
_0802F518 DCDU __VTABLE__344Anonymous18
_0802F51C DCDU 0xF000FFFF
_0802F520 DCDU gUnknown_080414B8

	END
