	thumb_func_start sub_800B740
sub_800B740
	push {r3, lr}
	bl sub_8011E3C
	cmp r0, #0
	beq %6
	movs r0, #1
5
	add sp, #4
	pop {r3}
	bx r3
6
	movs r0, #0
	b %5

