	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_8028C2E
	IMPORT sub_80401E4

	non_word_aligned_thumb_func_start sub_801613E

sub_801613E
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xf0
	adds r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq %8
	ldr r0, [r4, #0x3c]
	ldr r1, [r0]
	lsls r1, r1, #0x1f
	beq %7
	movs r1, #0
	bl sub_80401E4
7
	movs r0, #4
	strb r0, [r5, #8]
	movs r0, #0
	adds r4, #0xe0
	strh r0, [r4, #0x1a]
	ldr r0, _080163C8
	ldr r0, [r0]
	adds r0, #0xff
	adds r0, #1
	bl sub_8028C2E
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080163C8 DCDU gUnknown_0300345C

	END
