	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memclr_w
	IMPORT __16__rt_memset
	IMPORT __VTABLE__346dword_803EC68
	IMPORT __VTABLE__364dword_803ECE0
	IMPORT __nw__FUi
	IMPORT __vecmap1c__FPvT1iPFPv_v
	IMPORT gUnknown_03003EA4
	IMPORT sub_8002580
	IMPORT sub_804036C

	thumb_func_start sub_8001A90

sub_8001A90
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bne %4
	ldr r0, _08001E7C
	bl __nw__FUi
	adds r4, r0, #0
	bne %4
	adds r0, r4, #0
3
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
4
	ldr r0, _08001E80
	str r0, [r4]
	ldr r0, _08001E84
	str r4, [r0]
	ldr r0, _08001E88
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x14
	bl sub_8002580
	movs r0, #0x4d
	lsls r0, r0, #5
	adds r1, r4, r0
	subs r0, #0xff
	subs r0, #0x61
	adds r0, r4, r0
	movs r2, #0x58
	adds r6, r0, #0
	ldr r3, _08001E8C
	bl __vecmap1c__FPvT1iPFPv_v
	ldr r0, _08001E90
	movs r1, #0xff
	adds r5, r4, r0
	adds r0, #0x14
	adds r7, r4, r0
	adds r1, #0x61
	adds r0, r6, #0
	bl __16__rt_memclr_w
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	movs r6, #0
	str r6, [r0, #0x20]
	str r6, [r0, #0x24]
	str r6, [r5]
	str r6, [r5, #4]
	str r6, [r5, #8]
	movs r0, #0x27
	lsls r0, r0, #6
	str r6, [r5, #0xc]
	adds r5, r4, r0
	str r6, [r5, #0xc]
	strb r6, [r7]
	strb r6, [r7, #1]
	str r6, [r5, #0x14]
	str r6, [r5, #0x18]
	ldr r0, [r5, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r5, #0x3c]
	ldr r0, _08001E94
	str r6, [r4, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	adds r0, r4, r0
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	movs r0, #5
	lsls r0, r0, #9
	adds r0, r4, r0
	str r6, [r0]
	ldr r0, _08001E98
	movs r2, #4
	movs r1, #0xff
	adds r0, r4, r0
	bl __16__rt_memset
	str r6, [r4, #4]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x1a
	bics r0, r1
	str r0, [r5, #0x3c]
	adds r0, r4, #0
	b %3

	ALIGN
_08001E7C DCDU 0x00000A08
_08001E80 DCDU __VTABLE__364dword_803ECE0
_08001E84 DCDU gUnknown_03003EA4
_08001E88 DCDU __VTABLE__346dword_803EC68
_08001E8C DCDU sub_804036C
_08001E90 DCDU 0x000009BC
_08001E94 DCDU 0x000009DC
_08001E98 DCDU 0x00000A04

	END
