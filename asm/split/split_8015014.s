	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_08050410

	thumb_func_start sub_8015014

sub_8015014
	lsls r3, r1, #2
	adds r1, r3, r1
	ldr r2, _08015374
	lsls r1, r1, #2
	push {r4, r5, r6, r7}
	ldr r3, [r2, r1]
	adds r1, r1, r2
	adds r6, r1, #4
	ldrb r7, [r1, #0x10]
	adds r2, r0, #0
	adds r2, #0x30
	ldm r6!, {r4, r5, r6}
	strb r7, [r2, #8]
	ldrb r1, [r1, #0x11]
	strb r1, [r2, #9]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	adds r3, r1, r3
	adds r1, r1, r5
	adds r4, r2, r4
	lsls r1, r1, #0x10
	lsls r4, r4, #0x10
	adds r2, r2, r6
	lsls r3, r3, #0x10
	lsls r2, r2, #0x10
	str r1, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r3, [r0, #0x20]
	str r4, [r0, #0x24]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x34]
	pop {r4, r5, r6, r7}
	b %5

	ALIGN
_08015374 DCDU gUnknown_08050410

	END
