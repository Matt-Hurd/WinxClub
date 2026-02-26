	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_800F220

	thumb_func_start sub_800F4F0

sub_800F4F0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x70]
	movs r5, #0
	adds r0, #0x80
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x70]
	bl sub_800F220
	ldr r0, [r4, #0x70]
	adds r0, #0x1c
	str r5, [r0, #0x14]
	str r5, [r0]
	str r5, [r0, #8]
	str r5, [r0, #0x10]
	str r5, [r0, #4]
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x70]
	adds r0, #0x80
	ldr r0, [r0, #8]
	str r0, [r4, #0x74]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	END
