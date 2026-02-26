	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300345C
	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6
	IMPORT sub_80268AC
	IMPORT sub_8028BE4
	IMPORT sub_802E47A

	thumb_func_start sub_802C6D0

sub_802C6D0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %1
	ldr r0, _0802C874
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
1
	ldr r5, _0802C878
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	beq %2
	ldr r0, [r5]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1c
	adds r1, #0x34
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_80268AC
2
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	ALIGN
_0802C874 DCDU gUnknown_03003EB8
_0802C878 DCDU gUnknown_0300345C

	END
