	INCLUDE asm/macros.inc
	AREA text, CODE

	non_word_aligned_thumb_func_start sub_801340A

sub_801340A
	ldrb r3, [r1]
	adds r2, r0, #0
	movs r0, #0
	cmp r3, #0
	beq %24
	ldr r2, [r2, #8]
23
	ldrb r3, [r1]
	adds r1, #1
	lsls r3, r3, #2
	ldr r3, [r2, r3]
	lsrs r3, r3, #0x18
	adds r0, r3, r0
	ldrb r3, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r3, #0
	bne %23
24
	bx lr
	ALIGN

	END
