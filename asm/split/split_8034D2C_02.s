	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT sub_8028C2E

	non_word_aligned_thumb_func_start Boss__50

Boss__50
	ldr r1, _08034D94
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bhs %1
	ldr r2, _08034D90
	adds r0, #0x80
	ldr r2, [r2]
	ldr r0, [r0, #0x30]
	lsls r0, r0, #5
	lsrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r2
	bl sub_8028C2E
1
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	ALIGN
_08034D90 DCDU gUnknown_0300345C
_08034D94 DCDU gUnknown_03003E98

	END
