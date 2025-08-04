	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT gUnknown_03003EA0
	IMPORT __VTABLE__311WallObject
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_8000D5A
	IMPORT GetEWRAMStart
	IMPORT Init_and_add_some_object
	IMPORT GameObj__ctor
	IMPORT DefaultScriptGroups__04
	IMPORT DefaultScriptGroups__08
	IMPORT DefaultScriptGroups__20
	IMPORT DefaultScriptGroups__Dying
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DA80

	thumb_func_start WallObject__Create
WallObject__Create
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xbc
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
2
	adds r0, r4, #0
	bl Init_and_add_some_object
	ldr r0, _08036128
	movs r1, #0
	str r0, [r4]
	add r0, pc, #0x288
	str r0, [r4, #0x4c]
	movs r0, #0x14
	strh r0, [r4, #4]
	movs r0, #0x7d
	strb r1, [r0, r4]
	adds r2, r4, #0
	adds r2, #0xa0
	adds r0, r4, #0
	adds r0, #0x80
	strb r1, [r2, #8]
	ldr r3, [r0, #4]
	ldr r5, _08036140
	ands r3, r5
	str r3, [r0, #4]
	ldr r3, [r4, #0x7c]
	movs r5, #0xf
	lsls r5, r5, #0x18
	bics r3, r5
	str r3, [r4, #0x7c]
	movs r3, #0x11
	str r3, [r0, #0x1c]
	movs r3, #0xff
	strb r3, [r2]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	movs r3, #0x13
	lsls r3, r3, #5
	strh r1, [r4, #0x1e]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xa]
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	movs r3, #4
	movs r5, #0x97
	strb r3, [r5, r4]
	movs r5, #1
	ldr r3, [r0, #0xc]
	lsls r5, r5, #0xc
	orrs r3, r5
	str r3, [r0, #0xc]
	strh r1, [r2, #0x16]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start WallObject__ctor
WallObject__ctor
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08036128
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl GameObj__ctor
	cmp r5, #0
	beq %3
	adds r0, r4, #0
	bl sub_803DA18
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8035F1C
sub_8035F1C
	push {r4}
	ldr r1, [r1]
	adds r0, #0xa0
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x18]
	ldrh r3, [r1, #8]
	lsls r4, r2, #0x1b
	lsrs r4, r4, #0x1b
	strh r3, [r0, #0x12]
	ldrh r3, [r1, #0xa]
	strh r3, [r0, #0x14]
	movs r3, #1
	lsls r3, r4
	cmp r2, #0
	beq %5
	lsrs r2, r2, #5
	ldr r4, _08036144
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ands r2, r3
	bne %5
	ldrh r1, [r1, #4]
	strh r1, [r0, #0x16]
4
	pop {r4}
	bx lr
5
	movs r1, #0
	strh r1, [r0, #0x16]
	b %4

	thumb_func_start sub_8035F54
sub_8035F54
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	adds r4, r0, #0
	ldrh r0, [r5, #6]
	ldr r6, [r4, #0x2c]
	cmp r0, #0
	beq %6
	ldr r0, [r6]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1f
	bne %9
6
	ldrh r0, [r5, #4]
	movs r1, #0
	mvns r1, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x1a]
	ldr r0, _08036148
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	cmp r2, #0
	beq %7
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
7
	lsls r0, r1, #0x10
	ldrh r1, [r5, #4]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %8
	movs r2, #0
	ldr r0, [r4, #0x2c]
	bl sub_80007A0
8
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %9
	bl sub_8000914
9
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start WallObjectScriptGroup__04
WallObjectScriptGroup__04
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x22
	beq %11
	cmp r2, #0x27
	beq %12
	cmp r2, #0x28
	bne %13
	bl sub_8035F1C
10
	add sp, #4
	pop {r3}
	bx r3
11
	ldr r2, [r0]
	ldr r3, [r2, #0x48]
	adds r2, r3, r2
	bl __call_via_r2
	b %10
12
	bl sub_8035F54
	b %10
13
	bl DefaultScriptGroups__04
	b %10

	non_word_aligned_thumb_func_start WallObjectScriptGroup__08
WallObjectScriptGroup__08
	push {r3, lr}
	ldr r2, [r1]
	ldrb r2, [r2]
	cmp r2, #0x28
	bne %15
	movs r0, #1
14
	add sp, #4
	pop {r3}
	bx r3
15
	bl DefaultScriptGroups__08
	b %14

	non_word_aligned_thumb_func_start WallObjectScriptGroup__38
WallObjectScriptGroup__38
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %16
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
16
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	NEGS r1, r1
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start WallObjectScriptGroup__4C
WallObjectScriptGroup__4C
	push {r4}
	ldr r1, [r1]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	str r2, [r0, #0x58]
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	str r2, [r0, #0x5c]
	ldrh r2, [r1, #4]
	cmp r2, #0
	bne %17
	ldrh r1, [r1, #6]
	cmp r1, #0
	bne %17
	movs r1, #0x7d
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bge %17
	ldr r1, _0803614C
	movs r2, #3
	ldr r1, [r1]
	lsls r2, r2, #9
	adds r1, #0x10
	adds r1, r1, r2
	adds r0, #0xa0
	ldrh r2, [r0, #0xe]
	ldrh r3, [r0, #0xa]
	ldrh r4, [r0, #0x10]
	ldrh r0, [r0, #0xc]
	ldr r1, [r1, #0x1c]
	strh r4, [r1, #0x26]
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x24]
	strh r3, [r1, #0x20]
17
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start WallObjectScriptGroup__20
WallObjectScriptGroup__20
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl DefaultScriptGroups__20
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r5, #0
	adds r3, r5, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %18
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
18
	movs r1, #7
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	NEGS r1, r1
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r4, #0x28]
	str r1, [r0, #0x18]
	str r0, [r4, #0x28]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start WallObjectScriptGroup__48
WallObjectScriptGroup__48
	push {r3, lr}
	ldr r2, [r1]
	ldrh r3, [r2, #8]
	cmp r3, #0x14
	beq %21
	cmp r3, #0x1f
	bne %22
	ldr r1, [r2, #4]
	adds r2, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, #0x70
	strb r1, [r2, #0xd]
	cmp r1, #0
	bge %19
	NEGS r1, r1
19
	adds r0, #0xa0
	strb r1, [r0, #8]
	movs r0, #0
	strb r0, [r2, #0xc]
20
	add sp, #4
	pop {r3}
	bx r3
21
	ldr r1, [r2, #4]
	strh r1, [r0, #0x1a]
	ldr r1, [r2, #4]
	strh r1, [r0, #0x18]
	b %20
22
	bl DefaultScriptGroups__Dying
	b %20
	ALIGN
_08036128 DCDU __VTABLE__311WallObject
_0803612C DCDU 0x6C6C6157
_08036130 DCDU 0x6A624F20
_08036134 DCDU 0x20746365
_08036138 DCDU 0x756F7247
_0803613C DCDU 0x00000070
_08036140 DCDU 0xF000FFFF
_08036144 DCDU gUnknown_03003478
_08036148 DCDU gUnknown_03003EA0
_0803614C DCDU gUnknown_03003454
	END
