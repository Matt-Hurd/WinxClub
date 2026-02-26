	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memclr_w

	thumb_func_start sub_80132F4

sub_80132F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x43
	lsls r1, r1, #3
	bl __16__rt_memclr_w
	movs r1, #0x21
	lsls r1, r1, #4
	adds r1, r4, r1
	movs r0, #0x80
	strb r0, [r1, #4]
	movs r0, #0
	adds r4, #0xff
	adds r4, #0x71
	strb r0, [r4, #3]
	pop {r4}
	pop {r3}
	bx r3

	END
