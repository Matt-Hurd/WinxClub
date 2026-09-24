	thumb_func_start sub_8011E10
sub_8011E10
	ldr r1, _0801209C
	movs r0, #1
	ldrh r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	cmp r1, #1
	beq %47
	movs r0, #0
47
	bx lr

