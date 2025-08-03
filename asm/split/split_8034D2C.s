	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003E98
	IMPORT sub_801F286
	IMPORT sub_8028C2E

	thumb_func_start sub_8034D2C
sub_8034D2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r1, [r0, #0xc]
	ldr r2, _08034D8C
	ands r1, r2
	movs r2, #0xf
	lsls r2, r2, #0x15
	adds r1, r1, r2
	str r1, [r0, #0xc]
	ldr r1, _08034D90
	ldr r1, [r1]
	ldr r0, [r0, #0x34]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r0, r0, r1
	bl sub_8028C2E
	adds r0, r4, #0
	bl sub_801F286
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8034D5E
sub_8034D5E
	ldr r1, _08034D94
	push {r3, lr}
	ldr r1, [r1]
	ldr r1, [r1, #8]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #2
	bhs _08034D86
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
_08034D86
	add sp, #4
	pop {r3}
	bx r3
	ALIGN
_08034D8C DCDU 0x8007FFFF
_08034D90 DCDU gUnknown_0300345C
_08034D94 DCDU gUnknown_03003E98
	END