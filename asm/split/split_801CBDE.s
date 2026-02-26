	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003454

	non_word_aligned_thumb_func_start sub_801CBDE

sub_801CBDE
	push {r4, r5, r6, r7}
	movs r3, #5
	lsls r3, r3, #8
	adds r5, r0, r3
	ldr r3, [r5, #0x1c]
	movs r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq %10
	ldr r3, _0801CCE8
	movs r7, #2
	ldr r4, [r3]
7
	lsls r3, r2, #2
	adds r3, r3, r0
	ldr r3, [r3, #0x20]
	ldr r3, [r3, #0x7c]
	lsls r3, r3, #8
	lsrs r3, r3, #0x18
	cmp r1, #0
	beq %8
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r3, r3, r6
	ldrh r6, [r3, #0x18]
	orrs r6, r7
	strh r6, [r3, #0x18]
	b %9
8
	lsls r3, r3, #1
	movs r6, #0xb
	lsls r6, r6, #7
	adds r3, r3, r4
	adds r6, r3, r6
	ldrh r3, [r6, #0x18]
	bics r3, r7
	strh r3, [r6, #0x18]
9
	ldr r3, [r5, #0x1c]
	adds r2, #1
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	lsrs r2, r2, #0x18
	cmp r3, r2
	bhi %7
10
	pop {r4, r5, r6, r7}
	bx lr

	ALIGN
_0801CCE8 DCDU gUnknown_03003454

	END
