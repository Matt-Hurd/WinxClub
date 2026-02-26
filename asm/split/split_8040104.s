	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __da__FPv
	IMPORT sub_8041274

	thumb_func_start sub_8040104

sub_8040104
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x44]
	movs r7, #0
	adds r6, r2, #0
	adds r5, r1, #0
	cmp r0, #0
	bne %3
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq %1
	adds r3, r7, #0
	movs r2, #0
	ldr r1, [r4, #0x48]
	bl sub_8041274
	b %2
1
	ldr r0, [r4, #0x48]
	bl __da__FPv
2
	str r7, [r4, #0x48]
3
	strh r5, [r4, #0x20]
	strh r6, [r4, #0x1e]
	strh r5, [r4, #0x2a]
	strh r6, [r4, #0x28]
	str r7, [r4, #0x24]
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN

	END
