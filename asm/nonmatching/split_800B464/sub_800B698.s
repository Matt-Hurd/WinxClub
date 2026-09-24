	thumb_func_start sub_800B698
sub_800B698
	push {r3, lr}
	str r1, [r0, #0xc]
	adds r0, r1, #0
	bl sub_8011D3C
	add sp, #4
	pop {r3}
	bx r3

