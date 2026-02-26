	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80132F4

	thumb_func_start sub_800F944

sub_800F944
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r0, #0x80
	strh r5, [r0, #4]
	ldr r1, [r4, #0x7c]
	str r1, [r0]
	ldr r1, [r4, #0x78]
	str r1, [r0, #8]
	ldr r0, [r4, #0x6c]
	bl sub_80132F4
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #9
	ldr r0, [r4, #0x78]
	adds r2, r2, r1
	str r0, [r2, #0x20]
	ldr r0, [r4, #0x6c]
	adds r0, r0, r1
	str r5, [r0, #0x1c]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	END
