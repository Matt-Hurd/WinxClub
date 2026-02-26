	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EB8
	IMPORT sub_8001432
	IMPORT sub_802E4EE

	non_word_aligned_thumb_func_start sub_80251CA

sub_80251CA
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802E4EE
	ldr r0, [r4, #4]
	cmp r0, #0
	beq %4
	ldrh r0, [r0, #0x28]
	movs r2, #1
	lsls r2, r2, #0x1b
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0x1b
	bics r1, r2
	orrs r0, r1
	str r0, [r4, #0x2c]
4
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq %5
	ldr r0, [r1]
	lsls r2, r0, #0x15
	lsrs r2, r2, #0x1f
	beq %5
	movs r2, #1
	lsls r2, r2, #0xa
	bics r0, r2
	lsls r2, r2, #1
	bics r0, r2
	str r0, [r1]
	ldr r0, _0802539C
	ldr r0, [r0]
	bl sub_8001432
5
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_0802539C DCDU gUnknown_03003EB8

	END
