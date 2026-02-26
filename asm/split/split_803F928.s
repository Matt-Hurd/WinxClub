	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_udiv

	thumb_func_start sub_803F928

sub_803F928
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r0, #0x18]
	add r6, sp, #0x2c
	ldm r6!, {r5, r6}
	strh r0, [r5]
	ldrh r0, [r4, #0x1a]
	adds r7, r2, #0
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, [r4, #0x58]
	str r0, [sp]
	ldrh r0, [r0, #0x1c]
	bl __16__rt_udiv
	ldrh r1, [r4, #0x20]
	movs r2, #0
	movs r3, #0
	strh r1, [r7]
	ldrh r1, [r4, #0x1e]
	ldr r4, [sp, #8]
	lsls r0, r0, #0x10
	strh r1, [r4]
	ldr r1, [sp, #0x28]
	lsrs r0, r0, #0x10
	strh r2, [r1]
	ldr r1, [sp, #0x10]
	strh r2, [r1]
	ldrsh r1, [r5, r3]
	ldrsh r4, [r7, r3]
	adds r3, r1, r4
	ldr r4, [sp]
	ldrh r4, [r4, #0x1c]
	cmp r3, r4
	ble %2
	subs r1, r4, r1
	strh r1, [r7]
2
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r4, [sp, #8]
	ldrsh r4, [r4, r3]
	adds r3, r1, r4
	cmp r3, r0
	ble %3
	ldr r4, [sp, #8]
	subs r0, r0, r1
	strh r0, [r4]
3
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge %4
	ldr r4, [sp, #8]
	ldrh r1, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r6]
	ldr r1, [sp, #0x10]
	NEGS r0, r0
	strh r0, [r1]
	strh r2, [r6]
4
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge %5
	ldrh r1, [r7]
	adds r0, r1, r0
	strh r0, [r7]
	ldrh r0, [r5]
	ldr r1, [sp, #0x28]
	NEGS r0, r0
	strh r0, [r1]
	strh r2, [r5]
5
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
