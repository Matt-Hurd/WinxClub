	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A
	IMPORT DefaultScriptGroups__10

	thumb_func_start WallObjectScriptGroup__40
WallObjectScriptGroup__40
	push {r4, r5, r6, r7}
	adds r3, r1, #0
	adds r1, r0, #0
	adds r6, r0, #0
	adds r4, r0, #0
	adds r2, r0, #0
	adds r2, #0x70
	adds r4, #0x80
	adds r6, #0x90
	adds r1, #0xa0
	movs r7, #0x3c
	movs r5, #0
	cmp r3, #0x6c
	beq %13
	bgt %3
	cmp r3, #0x69
	beq %12
	bgt %2
	movs r4, #0x1e
	cmp r3, #0x42
	beq %10
	cmp r3, #0x67
	beq %11
	cmp r3, #0x68
	bne %1
	ldr r3, _080365F0
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
1
	pop {r4, r5, r6, r7}
	bx lr
2
	cmp r3, #0x6a
	beq %14
	cmp r3, #0x6b
	bne %1
	strh r5, [r0, #0x1c]
	ldr r3, _080365F4
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r7, [r2, #0xd]
	strb r7, [r1, #8]
	b %1
3
	adds r7, r3, #0
	subs r7, #0x6d
	cmp r7, #5
	bhs %4
	add r3, pc, #0x8
	adds r3, r3, r7
	ldrh r3, [r3, r7]
	lsls r3, r3, #1
	add pc, r3
4
	b %1
5
	DCB 0x70, 0x00
6
	DCB 0x92, 0x00
7
	DCB 0x36, 0x00
8
	DCB 0x9E, 0x00
9
	DCB 0x4E, 0x00
10
	movs r3, #0x13
	lsls r3, r3, #5
	strh r3, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
	b %1
11
	ldr r3, _080365F8
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r4, [r2, #0xd]
	strb r4, [r1, #8]
	b %1
12
	ldr r3, _080365FC
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	subs r3, #5
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #5
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #0xb
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b %1
13
	b %15
loc_80364c8
	ldr r3, _08036600
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	adds r3, #2
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #0xb
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b %1
14
	b %16
loc_80364f8
	ldr r3, _08036604
	strh r5, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	subs r3, #1
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2, #0xd]
	strb r5, [r1, #8]
	movs r0, #8
	strb r0, [r6, #7]
	ldr r0, [r4, #0xc]
	movs r1, #0xf
	lsls r1, r1, #0xf
	bics r0, r1
	movs r1, #7
	lsls r1, r1, #0xf
	adds r0, r0, r1
	str r0, [r4, #0xc]
	b %1
15
	strh r5, [r0, #0x1c]
	ldr r3, _08036608
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	strb r7, [r2, #0xd]
	strb r7, [r1, #8]
	b %1
loc_803653c
	strh r5, [r0, #0x1c]
	ldr r3, _0803660C
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r4, #0xc]
	b %1
16
	strh r5, [r0, #0x1c]
	ldr r3, _08036610
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	movs r1, #1
	ldr r0, [r4, #0xc]
	lsls r1, r1, #0xc
	bics r0, r1
	str r0, [r4, #0xc]
	b %1
loc_8036580
	strh r5, [r0, #0x1c]
	ldr r3, _08036614
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	b %1
loc_8036598
	strh r5, [r0, #0x1c]
	ldr r3, _08036618
	strh r5, [r0, #0x1e]
	strh r3, [r0, #0x1a]
	strh r3, [r0, #0x18]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	strb r5, [r1]
	movs r0, #0x28
	strb r0, [r2, #0xd]
	strb r0, [r1, #8]
	b %1

	thumb_func_start WallObjectScriptGroup__10
WallObjectScriptGroup__10
	push {r3, r4, r5, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %18
	ldr r0, _0803661C
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq %17
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
17
	ldrh r0, [r4, #0x1a]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, r0
	beq %18
	strh r0, [r4, #0x18]
18
	adds r0, r4, #0
	bl DefaultScriptGroups__10
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_080365F0 DCDU 0x0000026F
_080365F4 DCDU 0x0000028E
_080365F8 DCDU 0x0000024B
_080365FC DCDU 0x00000266
_08036600 DCDU 0x000002AF
_08036604 DCDU 0x000002BA
_08036608 DCDU 0x00000291
_0803660C DCDU 0x0000029A
_08036610 DCDU 0x00000271
_08036614 DCDU 0x00000233
_08036618 DCDU 0x000002B6
_0803661C DCDU gUnknown_03003EA0
	END
