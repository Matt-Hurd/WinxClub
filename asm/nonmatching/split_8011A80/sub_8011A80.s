	thumb_func_start sub_8011A80
sub_8011A80
	ldr r1, _08011D18
	push {r4, r5, r6}
	ldrh r0, [r1, #0x10]
	lsls r2, r0, #0x1f
	bpl %3
	ldr r2, _08011D1C
	ldr r3, _08011D20
	str r2, [r3, #4]
	mov r8, r8
	mov r8, r8
	movs r2, #0x11
	lsls r2, r2, #6
	adds r4, r3, #0
	strh r2, [r4, #6]
	ldr r4, _08011D18
	lsls r2, r0, #0x1e
	adds r4, #0x20
	cmp r2, #0
	ldr r5, _08011D24
	ldr r6, _08011D28
	bge %1
	str r6, [r5, #0x3c]
	str r4, [r1, #4]
	b %2
1
	str r4, [r5, #0x3c]
	str r6, [r1, #4]
2
	ldr r2, _08011D2C
	strh r2, [r3, #6]
	movs r2, #2
	eors r0, r2
	strh r0, [r1, #0x10]
3
	pop {r4, r5, r6}
	bx lr

