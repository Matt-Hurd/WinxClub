	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A

	thumb_func_start sub_80328B0

sub_80328B0
	push {r3, r4, r5, lr}
	bl sub_802E47A
	ldr r4, _08032A88
	movs r5, #0x25
	ldr r0, [r4]
	lsls r5, r5, #6
	adds r0, r5, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %3
	ldr r0, [r4]
	adds r0, r5, r0
	bl sub_80268AC
3
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_08032A88 DCDU gUnknown_0300345C

	END
