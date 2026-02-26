	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_801DB90

	thumb_func_start sub_8035530

sub_8035530
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801DB90
	adds r4, #0x80
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne %4
	movs r0, #0x13
	str r0, [r4, #0x1c]
4
	pop {r4}
	pop {r3}
	bx r3

	END
