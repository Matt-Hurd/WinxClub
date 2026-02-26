	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT vsprintf

	thumb_func_start sub_803F528

sub_803F528
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0x14
	str r4, [sp, #4]
	cmp r3, #0xff
	bne %2
	ldrb r3, [r0, #9]
2
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r4, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r4
	adds r1, r2, r1
	lsls r2, r3, #2
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	bl vsprintf
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	END
