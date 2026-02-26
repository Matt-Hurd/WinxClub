	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_80007A0

	thumb_func_start sub_80261C8

sub_80261C8
	push {r3, lr}
	ldr r1, [r1]
	movs r3, #0xf
	ldrh r1, [r1, #4]
	ldr r2, [r0, #0x7c]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #4
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	ldr r0, [r0, #0x2c]
	movs r2, #0
	bl sub_80007A0
	add sp, #4
	pop {r3}
	bx r3

	END
