	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80123B4

	thumb_func_start sub_8012334

sub_8012334
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123B4
	cmp r0, #0
	beq %1
	movs r1, #1
	str r1, [r4]
	str r1, [r0, #4]
1
	pop {r4}
	pop {r3}
	bx r3

	END
