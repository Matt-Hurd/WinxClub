	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E88
	IMPORT sub_803F72C
	IMPORT sub_803FB24
	IMPORT sub_803FB58

	thumb_func_start sub_8017B4C

sub_8017B4C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	adds r7, r3, #0
	adds r6, r2, #0
	cmp r5, #0xff
	bne %3
	ldrb r5, [r0, #0x14]
3
	ldr r0, _08017DC4
	adds r2, r5, #0
	movs r1, #0x1c
	ldr r0, [r0]
	bl sub_803F72C
	adds r4, r0, #0
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #0x10]
	movs r2, #0x3f
	adds r0, #0x1c
	ands r1, r2
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	adds r0, r4, #0
	bl sub_803FB24
	ldr r1, [sp, #8]
	strh r1, [r4, #0xe]
	movs r1, #0
	adds r0, r4, #0
	bl sub_803FB58
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08017DC4 DCDU gUnknown_03003E88

	END
