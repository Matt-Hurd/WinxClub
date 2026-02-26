	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT gUnknown_03003448
	IMPORT gUnknown_0300345C
	IMPORT sub_8000DE6
	IMPORT sub_8014864
	IMPORT sub_8028A7C

	thumb_func_start sub_80222D0

sub_80222D0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xff
	movs r1, #0
	adds r0, #0x79
	bl sub_8014864
	ldr r0, _080225C8
	movs r2, #0
	movs r1, #2
	ldr r0, [r0]
	bl sub_8028A7C
	bl FadeToBlack
	ldr r5, _080225CC
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_8000DE6
	adds r1, r4, #4
	ldr r0, [r5]
	bl sub_8000DE6
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_080225C8 DCDU gUnknown_0300345C
_080225CC DCDU gUnknown_03003448

	END
