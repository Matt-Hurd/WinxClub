	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__337dword_803EAE0
	IMPORT sub_800FB48
	IMPORT sub_800FB72
	IMPORT sub_800FC76
	IMPORT sub_80132F4
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_800FA40
sub_800FA40
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #8
	bl sub_800FC76
	cmp r0, #0
	bne %2
1
	pop {r3, r4, r5}
	pop {r3}
	bx r3
2
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
	b %1

	non_word_aligned_thumb_func_start sub_800FA9A
sub_800FA9A
	ldr r0, [r0, #0x18]
	lsls r1, r0, #6
	lsrs r1, r1, #0x10
	beq %3
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	beq %3
	movs r0, #1
	bx lr
3
	movs r0, #0
	bx lr

	thumb_func_start sub_800FAB0
sub_800FAB0
	push {r4, lr}
	adds r4, r0, #0
	bne %5
	movs r0, #0x6c
	bl __nw__FUi
	adds r4, r0, #0
	bne %5
	adds r0, r4, #0
4
	pop {r4}
	pop {r3}
	bx r3
5
	adds r0, r4, #0
	bl sub_800FB48
	ldr r0, _0800FB14
	str r0, [r4]
	adds r0, r4, #0
	b %4

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
	beq %6
	adds r0, r4, #0
	bl sub_803DA18
6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	thumb_func_start sub_800FAF8
sub_800FAF8
	bx lr

	non_word_aligned_thumb_func_start sub_800FAFA
sub_800FAFA
	bx lr

	thumb_func_start sub_800FAFC
sub_800FAFC
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

	non_word_aligned_thumb_func_start sub_800FB0A
sub_800FB0A
	bx lr

	thumb_func_start sub_800FB0C
sub_800FB0C
	bx lr

	non_word_aligned_thumb_func_start sub_800FB0E
sub_800FB0E
	movs r0, #0
	bx lr
	ALIGN
_0800FB14 DCDU __VTABLE__337dword_803EAE0
	END
