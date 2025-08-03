	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0803EAE0
	IMPORT sub_800FB48
	IMPORT sub_800FB72
	IMPORT sub_800FC76
	IMPORT sub_80132F4
	IMPORT maybeMallocEWRAM
	IMPORT sub_803DA18

	thumb_func_start sub_800FA40
sub_800FA40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #8
	bl sub_800FC76
	cmp r0, #0
	bne _0800FA56
_0800FA50
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0800FA56
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r0, [r4, #0x74]
	adds r2, r0, #0
	str r1, [r4, #0x70]
	lsls r1, r1, #7
	adds r1, r1, r2
	lsls r2, r1, #2
	adds r0, r5, #0
	adds r2, r2, r1
	adds r0, #0x14
	lsls r2, r2, #5
	str r0, [r4, #0x78]
	adds r1, r4, #0
	movs r5, #0
	adds r1, #0x80
	str r2, [r4, #0x7c]
	strh r5, [r1, #4]
	str r0, [r1, #8]
	str r2, [r1]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #9
	ldr r0, [r4, #0x78]
	adds r2, r2, r1
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x6c]
	adds r0, r0, r1
	str r5, [r0, #0x1c]
	movs r0, #1
	b _0800FA50

	non_word_aligned_thumb_func_start sub_800FA9A
sub_800FA9A
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq _0800FAAC
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq _0800FAAC
	movs r0, #1
	bx lr
_0800FAAC
	movs r0, #0
	bx lr

	thumb_func_start sub_800FAB0
sub_800FAB0
	push {r4, lr}
	adds r4, r0, #0
	bne _0800FAC8
	movs r0, #0x6c
	bl maybeMallocEWRAM
	adds r4, r0, #0
	bne _0800FAC8
	adds r0, r4, #0
_0800FAC2
	pop {r4}
	pop {r3}
	bx r3
_0800FAC8
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800FB14
	str r0, [r4]
	adds r0, r4, #0
	b _0800FAC2

	non_word_aligned_thumb_func_start sub_800FAD6
sub_800FAD6
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800FB14
	adds r5, r1, #0
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800FB72
	cmp r5, #0
	beq _0800FAF2
	adds r0, r4, #0
	bl sub_803DA18
_0800FAF2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start nullsub_32
nullsub_32
	bx lr

	non_word_aligned_thumb_func_start nullsub_33
nullsub_33
	bx lr

	thumb_func_start nullsub_34
nullsub_34
	bx lr

	non_word_aligned_thumb_func_start sub_800FAFE
sub_800FAFE
	movs r0, #1
	bx lr

	non_word_aligned_thumb_func_start sub_800FB02
sub_800FB02
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start sub_800FB06
sub_800FB06
	movs r0, #0
	bx lr

	non_word_aligned_thumb_func_start nullsub_35
nullsub_35
	bx lr

	thumb_func_start nullsub_36
nullsub_36
	bx lr

	non_word_aligned_thumb_func_start sub_800FB0E
sub_800FB0E
	movs r0, #0
	bx lr
	ALIGN
_0800FB14 DCDU gUnknown_0803EAE0
	END
