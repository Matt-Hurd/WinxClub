	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT sub_80293D0
	IMPORT sub_803FD5C
	IMPORT sub_803FF24

	non_word_aligned_thumb_func_start sub_801CA1E

sub_801CA1E
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r2, r0
	ldm r1!, {r6, r7}
	ldr r0, [r0, #0x1c]
	movs r1, #0
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x19
	sub sp, #0xc
	beq %75
73
	lsls r0, r1, #2
	adds r4, r0, r2
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #4]
	cmp r5, #0xa
	bne %76
	movs r5, #0xac
	ldr r5, [r5, r0]
	lsls r5, r5, #5
	lsrs r5, r5, #0x17
	cmp r5, #0x2c
	bne %76
	movs r1, #0x2c
	bl sub_80293D0
	ldr r0, [r4, #0x20]
	ldr r2, _0801CB14
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r3, #0
	ands r1, r2
	movs r2, #0x33
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	str r3, [r0, #0x1c]
	movs r2, #0
	ldr r0, _0801CB0C
	str r2, [sp]
	ldr r0, [r0]
	movs r1, #0
	bl sub_803FD5C
	ldr r5, [r4, #0x20]
	cmp r6, #0
	str r6, [r5, #0x58]
	str r7, [r5, #0x5c]
	bne %74
	cmp r7, #0
	bne %74
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
74
	ldr r0, [r4, #0x20]
	movs r2, #1
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	orrs r1, r2
	str r1, [r0, #0x14]
75
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
76
	adds r1, #1
	lsrs r0, r3, #0x19
	cmp r0, r1
	bhi %73
	b %75

	ALIGN
_0801CB0C DCDU gUnknown_03003450
_0801CB14 DCDU 0xFFFF000F

	END
