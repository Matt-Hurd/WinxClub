	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_8011E22

	thumb_func_start sub_800B714

sub_800B714
	push {r3, lr}
	bl sub_8011E22
	cmp r0, #0
	beq %2
	movs r0, #1
1
	add sp, #4
	pop {r3}
	bx r3
2
	movs r0, #0
	b %1

	END
