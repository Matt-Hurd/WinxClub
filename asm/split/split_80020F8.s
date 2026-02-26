	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_sdiv

	thumb_func_start sub_80020F8

sub_80020F8
	push {r3, lr}
	movs r3, #0x58
	muls r1, r3
	adds r0, r1, r0
	movs r1, #0x21
	lsls r1, r1, #6
	adds r0, r0, r1
	lsls r1, r2, #1
	adds r1, r1, r2
	ldr r0, [r0, #0x30]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #0x14]
	ldrh r0, [r0, #2]
	subs r1, r1, r2
	asrs r1, r1, #1
	bl __16__rt_sdiv
	add sp, #4
	pop {r3}
	bx r3
	ALIGN

	END
