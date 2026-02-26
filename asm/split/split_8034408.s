	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_8000DE6
	IMPORT sub_802E47A

	thumb_func_start sub_8034408

sub_8034408
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E47A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq %2
	ldr r0, _080344DC
	adds r1, r4, #0
	adds r1, #0x3c
	ldr r0, [r0]
	bl sub_8000DE6
	movs r0, #0
	str r0, [r4, #0x3c]
2
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_080344DC DCDU gUnknown_03003EB8

	END
