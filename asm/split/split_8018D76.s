	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r7
	IMPORT sub_80138E2
	IMPORT sub_80147FA

	non_word_aligned_thumb_func_start sub_8018D76

sub_8018D76
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, [sp, #4]
	movs r5, #0
	cmp r0, #0
	ldr r6, [sp, #0x2c]
	bls %14
12
	lsls r0, r5, #4
	subs r0, r0, r5
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x18]
	adds r2, r1, r0
	movs r1, #1
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r2, r1, r0
	movs r1, #0
	adds r0, r4, #0
	bl __call_via_r2
	ldr r0, [r4]
	movs r3, #2
	ldr r1, [r0, #0x14]
	adds r7, r1, r0
	ldr r1, [sp, #0xc]
	lsls r0, r5, #2
	adds r1, r0, r1
	ldrsh r2, [r1, r3]
	ldr r1, [sp, #0xc]
	ldrsh r1, [r1, r0]
	adds r0, r4, #0
	bl __call_via_r7
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	movs r1, #0x10
	cmp r6, #0
	beq %13
	ldrb r1, [r6, r5]
13
	lsls r2, r1, #0x10
	ldr r1, [sp, #0x10]
	lsrs r2, r2, #0x10
	ldrb r1, [r1, r5]
	bl __call_via_r3
	movs r2, #0
	str r2, [sp]
	ldr r0, [r4]
	movs r2, #0xff
	ldr r1, [r0, #0x20]
	movs r3, #0
	adds r7, r1, r0
	movs r1, #4
	adds r0, r4, #0
	bl __call_via_r7
	movs r1, #4
	adds r0, r4, #0
	bl sub_80147FA
	ldr r1, [sp, #0x28]
	lsls r0, r5, #1
	ldrh r1, [r1, r0]
	movs r3, #0xff
	movs r2, #0
	adds r0, r4, #0
	bl sub_80138E2
	adds r5, #1
	lsls r5, r5, #0x18
	ldr r0, [sp, #4]
	lsrs r5, r5, #0x18
	cmp r5, r0
	blo %12
14
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	END
