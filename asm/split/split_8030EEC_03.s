	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT sub_8028C2E

	non_word_aligned_thumb_func_start Monster__50

Monster__50
	ldr r1, _08031088
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1f
	bpl %17
	ldr r1, _08031080
	adds r0, #0x80
	ldr r1, [r1]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	adds r0, r0, r1
	bl sub_8028C2E
17
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08031080 DCDU gUnknown_0300345C
_08031088 DCDU gUnknown_03003E98

	END
