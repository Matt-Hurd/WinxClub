	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003E98
	IMPORT sub_8001C22
	IMPORT sub_800202A

	non_word_aligned_thumb_func_start sub_801CB4E

sub_801CB4E
	push {r3, r4, r5, lr}
	ldr r5, _0801CCE0
	adds r4, r0, #0
	ldr r0, [r5]
	bl sub_8001C22
	ldr r0, [r5]
	bl sub_800202A
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x17
	bpl %4
	ldr r0, _0801CCE4
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0xf
	bics r0, r1
	bne %4
	adds r3, r4, #0
	adds r3, #0xff
	adds r3, #0x81
	ldr r0, [r3, #0x30]
	movs r1, #0xff
	adds r1, #0xf9
	ldrh r4, [r0, r1]
	movs r0, #0xfc
3
	ldr r1, [r3, #0x30]
	lsls r2, r0, #1
	adds r5, r1, r2
	ldrh r5, [r5, #2]
	adds r0, #1
	cmp r0, #0xff
	strh r5, [r1, r2]
	blo %3
	movs r1, #1
	ldr r0, [r3, #0x30]
	lsls r1, r1, #9
	adds r0, r0, r1
	subs r0, #0x20
	strh r4, [r0, #0x1e]
4
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_0801CCE0 DCDU gUnknown_03003450
_0801CCE4 DCDU gUnknown_03003E98

	END
