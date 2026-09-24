	thumb_func_start sub_8011D3C
sub_8011D3C
	adds r1, r0, #0
	ldr r0, _0801209C
	lsls r2, r1, #0x18
	ldr r0, [r0, #0x1c]
	lsrs r2, r2, #0x16
	adds r2, r0, r2
	ldr r2, [r2, #4]
	lsrs r1, r1, #8
	adds r0, r2, r0
	movs r2, #1
	lsls r1, r1, #8
	orrs r1, r2
	b %30

