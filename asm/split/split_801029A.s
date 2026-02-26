	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E80
	IMPORT sub_80049B4

	non_word_aligned_thumb_func_start sub_801029A

sub_801029A
	push {r3, r4, r5, lr}
	ldr r5, _080103C0
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_80049B4
	movs r0, #0x17
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	lsls r1, r0, #0x1f
	bmi %5
	ldr r1, [r5]
	lsrs r0, r0, #0x10
	ldr r3, [r1, #0x14]
	movs r2, #0
	lsls r3, r3, #0x1c
	bmi %4
	ldrh r2, [r1, #6]
4
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	ands r1, r0
	beq %5
	movs r1, #0xb9
	lsls r1, r1, #5
	movs r0, #1
	adds r1, r4, r1
	strb r0, [r1, #0xc]
5
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080103C0 DCDU gUnknown_03003E80

	END
