	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A

	thumb_func_start sub_802BEFC

sub_802BEFC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r5, _0802BFB0
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %19
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x37
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
19
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_0802BFB0 DCDU gUnknown_0300345C

	END
