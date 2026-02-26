	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r5

	non_word_aligned_thumb_func_start sub_8013E72

sub_8013E72
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #0x1c]
	ldr r6, [sp, #0x10]
	lsls r5, r0, #0x1c
	lsrs r5, r5, #0x1c
	cmp r1, #0xff
	beq %43
	lsls r5, r1, #0x1c
	lsrs r5, r5, #0x1c
43
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0xf0
	ands r0, r5
	cmp r2, #0xff
	strb r1, [r4, #0x1c]
	beq %44
	ands r2, r5
	adds r0, r2, #0
44
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0x1c]
	cmp r3, #0
	beq %45
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0x1c]
45
	cmp r6, #0
	beq %46
	ldrb r0, [r4, #0x1c]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1c]
46
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %47
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x1c
	bpl %47
	ldrh r1, [r4, #0x20]
	adds r0, r4, #0
	subs r1, r5, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	ldr r2, [r4]
	asrs r1, r1, #1
	ldr r3, [r2, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, r2
	adds r0, r4, #0
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	bl __call_via_r5
47
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq %48
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #0x18
	bpl %48
	ldrh r1, [r4, #0x1e]
	movs r2, #0xa0
	adds r0, r4, #0
	subs r1, r2, r1
	lsrs r2, r1, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r2, r1, #0x10
	ldr r1, [r4]
	asrs r2, r2, #0x10
	ldr r3, [r1, #0x14]
	adds r5, r3, r1
	adds r0, r4, #0
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	bl __call_via_r5
48
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	END
