	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT sub_803DA80

	non_word_aligned_thumb_func_start sub_801FEFE

sub_801FEFE
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	adds r5, r0, #0
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	movs r0, #0x1c
	bl sub_803DA80
	cmp r0, #0
	beq %7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	stm r0!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	stm r0!, {r3}
	subs r0, #0x1c
7
	movs r1, #0
8
	lsls r2, r1, #1
	adds r3, r2, r4
	ldrh r6, [r3, #6]
	adds r1, #1
	lsls r1, r1, #0x18
	strh r6, [r0, r2]
	ldrh r3, [r3, #0xe]
	adds r2, r2, r0
	lsrs r1, r1, #0x18
	cmp r1, #4
	strh r3, [r2, #8]
	blo %8
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0x10]
	movs r1, #2
	strb r1, [r0, #0x14]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #0xff
	adds r1, #0x41
	ldr r1, [r1, #0x10]
	str r1, [r0, #0x18]
	ldrh r1, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r5
	adds r1, #0xff
	adds r1, #0x41
	str r0, [r1, #0x10]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	END
