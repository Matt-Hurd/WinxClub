	thumb_func_start sub_8011B28
sub_8011B28
	cmp r0, #6
	bhs %13
	add r3, pc, #0x4
	ldrb r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
7
	DCB 0x02
8
	DCB 0x05
9
	DCB 0x13
10
	DCB 0x08
11
	DCB 0x0D
12
	DCB 0x10
loc_8011b3a
	ldr r0, _08011D30
	ldrh r0, [r0, #0xc]
	bx lr
loc_8011b40
	ldr r0, _08011D30
	ldrb r0, [r0, #7]
	bx lr
loc_8011b46
	ldr r1, _08011D30
	ldr r0, [r1, #0x18]
	ldrb r1, [r1, #7]
	ldrb r0, [r0, r1]
	bx lr
loc_8011b50
	ldr r0, _08011D30
	ldrb r0, [r0, #0xb]
	bx lr
loc_8011b56
	ldr r0, _08011D30
	ldrb r0, [r0, #0xa]
	bx lr
13
	movs r0, #0
	mvns r0, r0
	bx lr

