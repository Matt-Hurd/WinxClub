	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003EAC
	IMPORT __VTABLE__384dword_803EEF0
	IMPORT sub_800B12C
	IMPORT __call_via_r2
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_8008008
sub_8008008
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x18
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #1
	strb r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
2
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800802E
sub_800802E
	push {r3, lr}
	cmp r0, #0
	bne %3
	movs r0, #0x20
	bl __nw__FUi
	cmp r0, #0
	beq %4
3
	ldr r1, _080081C0
	ldr r2, _080081C4
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r2]
4
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800805E
sub_800805E
	ldr r2, _080081C0
	push {r3, lr}
	str r2, [r0]
	cmp r1, #0
	beq %5
	bl sub_803DA18
5
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8008072
sub_8008072
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	non_word_aligned_thumb_func_start sub_800807A
sub_800807A
	bx lr

	thumb_func_start sub_800807C
sub_800807C
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x14]
	subs r3, r1, r3
	adds r2, r2, r3
	ldr r3, [r0, #0x10]
	str r1, [r0, #0xc]
	ands r2, r3
	str r2, [r0, #0x14]
	bx lr

	non_word_aligned_thumb_func_start sub_800808E
sub_800808E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r1, #0xc]
	adds r5, r1, #0
	cmp r0, #1
	beq %6
	cmp r0, #2
	bne %9
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	b %9
6
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bls %8
7
	ldr r0, [r4, #0x10]
	lsls r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	blo %7
8
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
9
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	ldr r1, [r5]
	bl __call_via_r2
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x10]
	ands r0, r1
	adds r2, r0, #0
	str r2, [r4, #0x14]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x14]
	ldr r3, [r4, #0xc]
	str r0, [r4, #0xc]
	subs r3, r0, r3
	adds r2, r2, r3
	ands r2, r1
	str r2, [r4, #0x14]
	ldrb r0, [r5, #0xc]
	strh r0, [r4, #4]
	pop {r3, r4, r5}
	pop {r3}
	movs r0, #0
	bx r3

	thumb_func_start sub_80080FC
sub_80080FC
	movs r0, #0
	bx lr

	thumb_func_start sub_8008100
sub_8008100
	adds r1, r0, #0
	ldr r1, [r1, #0x18]
	movs r0, #1
	cmp r1, #0
	beq %10
	movs r0, #0
10
	bx lr

	non_word_aligned_thumb_func_start sub_800810E
sub_800810E
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8008112
sub_8008112
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8008116
sub_8008116
	bx lr

	thumb_func_start sub_8008118
sub_8008118
	movs r0, #0
	bx lr

	thumb_func_start sub_800811C
sub_800811C
	movs r0, #0
	bx lr

	thumb_func_start sub_8008120
sub_8008120
	bx lr

	non_word_aligned_thumb_func_start sub_8008122
sub_8008122
	ldr r1, _080081C4
	movs r0, #1
	str r0, [r1]
	bx lr

	non_word_aligned_thumb_func_start sub_800812A
sub_800812A
	push {r3, r4, r5, lr}
	ldr r5, _080081C8
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _080081C4
	str r0, [r1]
	ldr r0, _080081CC
	str r4, [r1, #4]
	movs r3, #1
	movs r1, #5
	ldr r0, [r0]
	ldr r2, _080081D0
	bl sub_800B12C
	lsrs r0, r4, #6
	movs r1, #0
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xc1
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #8]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_8008160
sub_8008160
	ldr r0, _080081C4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq %11
	adds r1, r0, #0
	b %12
11
	movs r1, #0
12
	ldr r2, _080081C8
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8008182
sub_8008182
	ldr r2, _080081C8
	movs r0, #0
	strh r0, [r2, #0xa]
	ldr r0, _080081C4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq %13
	adds r1, r0, #0
	b %14
13
	movs r1, #0
14
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_80081A8
sub_80081A8
	ldr r1, _080081C8
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _080081C4
	str r0, [r1]
	str r0, [r1, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80081B6
sub_80081B6
	movs r2, #0
	str r2, [r0]
	str r1, [r0, #8]
	str r2, [r0, #4]
	bx lr
	ALIGN
_080081C0 DCDU __VTABLE__384dword_803EEF0
_080081C4 DCDU gUnknown_030033F4
_080081C8 DCDU REG_TM0CNT
_080081CC DCDU gUnknown_03003EAC
_080081D0 DCDU sub_8008122
	END
