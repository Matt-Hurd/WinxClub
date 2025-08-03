    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_0803EEF0
	IMPORT sub_800B12C
	IMPORT __call_via_r2
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_8008008
sub_8008008 ;@ 0x08008008
	push {r3, lr}
	cmp r0, #0
	bne _08008018
	movs r0, #0x18
	bl maybeMallocEWRAM
	cmp r0, #0
	beq _08008028
_08008018
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #1
	strb r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
_08008028
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800802E
sub_800802E ;@ 0x0800802E
	push {r3, lr}
	cmp r0, #0
	bne _0800803E
	movs r0, #0x20
	bl maybeMallocEWRAM
	cmp r0, #0
	beq _08008058
_0800803E
	ldr r1, _080081C0 ;@ =_0803EEF0
	ldr r2, _080081C4 ;@ =gUnknown_030033F4
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
_08008058
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800805E
sub_800805E ;@ 0x0800805E
	ldr r2, _080081C0 ;@ =_0803EEF0
	push {r3, lr}
	str r2, [r0]
	cmp r1, #0
	beq _0800806C
	bl sub_803DA18
_0800806C
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8008072
sub_8008072 ;@ 0x08008072
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	non_word_aligned_thumb_func_start nullsub_25
nullsub_25 ;@ 0x0800807A
	bx lr

	thumb_func_start sub_800807C
sub_800807C ;@ 0x0800807C
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
sub_800808E ;@ 0x0800808E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r1, #0xc]
	adds r5, r1, #0
	cmp r0, #1
	beq _080080A6
	cmp r0, #2
	bne _080080C2
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	b _080080C2
_080080A6
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bls _080080BC
_080080B0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	blo _080080B0
_080080BC
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
_080080C2
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
sub_80080FC ;@ 0x080080FC
	movs r0, #0
	bx lr

	thumb_func_start sub_8008100
sub_8008100 ;@ 0x08008100
	adds r1, r0, #0
	ldr r1, [r1, #0x18]
	movs r0, #1
	cmp r1, #0
	beq _0800810C
	movs r0, #0
_0800810C
	bx lr

	non_word_aligned_thumb_func_start sub_800810E
sub_800810E ;@ 0x0800810E
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_8008112
sub_8008112 ;@ 0x08008112
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start nullsub_26
nullsub_26 ;@ 0x08008116
	bx lr

	thumb_func_start sub_8008118
sub_8008118 ;@ 0x08008118
	movs r0, #0
	bx lr

	thumb_func_start sub_800811C
sub_800811C ;@ 0x0800811C
	movs r0, #0
	bx lr

	thumb_func_start nullsub_27
nullsub_27 ;@ 0x08008120
	bx lr

	non_word_aligned_thumb_func_start sub_8008122
sub_8008122 ;@ 0x08008122
	ldr r1, _080081C4 ;@ =gUnknown_030033F4
	movs r0, #1
	str r0, [r1]
	bx lr

	non_word_aligned_thumb_func_start sub_800812A
sub_800812A ;@ 0x0800812A
	push {r3, r4, r5, lr}
	ldr r5, _080081C8 ;@ =0x04000100
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _080081C4 ;@ =gUnknown_030033F4
	str r0, [r1]
	ldr r0, _080081CC ;@ =gUnknown_03003EAC
	str r4, [r1, #4]
	movs r3, #1
	movs r1, #5
	ldr r0, [r0]
	ldr r2, _080081D0 ;@ =sub_8008122
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
sub_8008160 ;@ 0x08008160
	ldr r0, _080081C4 ;@ =gUnknown_030033F4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq _0800816E
	adds r1, r0, #0
	b _08008170
_0800816E
	movs r1, #0
_08008170
	ldr r2, _080081C8 ;@ =0x04000100
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

	non_word_aligned_thumb_func_start sub_8008182
sub_8008182 ;@ 0x08008182
	ldr r2, _080081C8 ;@ =0x04000100
	movs r0, #0
	strh r0, [r2, #0xa]
	ldr r0, _080081C4 ;@ =gUnknown_030033F4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, #0
	beq _08008196
	adds r1, r0, #0
	b _08008198
_08008196
	movs r1, #0
_08008198
	ldrh r2, [r2, #8]
	movs r3, #1
	lsls r3, r3, #0x10
	subs r2, r3, r2
	lsls r2, r2, #6
	subs r0, r0, r2
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_80081A8
sub_80081A8 ;@ 0x080081A8
	ldr r1, _080081C8 ;@ =0x04000100
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _080081C4 ;@ =gUnknown_030033F4
	str r0, [r1]
	str r0, [r1, #4]
	bx lr

	non_word_aligned_thumb_func_start sub_80081B6
sub_80081B6 ;@ 0x080081B6
	movs r2, #0
	str r2, [r0]
	str r1, [r0, #8]
	str r2, [r0, #4]
	bx lr
	ALIGN
_080081C0 DCDU gUnknown_0803EEF0
_080081C4 DCDU gUnknown_030033F4
_080081C8 DCDU 0x04000100
_080081CC DCDU gUnknown_03003EAC
_080081D0 DCDU sub_8008122
	END