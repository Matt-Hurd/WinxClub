	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_802913E

	thumb_func_start sub_802925C

sub_802925C
	push {r4, lr}
	ldr r3, [r1]
	adds r4, r0, #0
	ldrb r1, [r3, #0xd]
	ldrb r0, [r3, #0xc]
	sub sp, #0x18
	movs r2, #0
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldrb r1, [r3, #0xb]
	ldrh r0, [r3, #4]
	str r2, [sp, #8]
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #8]
	adds r3, r0, #0
	adds r0, r4, #0
	bl sub_802913E
	add sp, #0x18
	pop {r4}
	pop {r3}
	bx r3

	END
