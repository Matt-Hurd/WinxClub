	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT gUnknown_03003C40
	IMPORT sub_80402F8

	non_word_aligned_thumb_func_start sub_8013D52

sub_8013D52
	push {r4, r5, r6, r7, lr}
	movs r2, #3
	sub sp, #0x14
	movs r6, #0
	movs r1, #0
	cmp r0, #3
	str r2, [sp, #0x10]
	bhs %27
	adds r6, r0, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
27
	movs r0, #0
	add r7, sp, #4
28
	adds r2, r1, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r2, r3, #2
	str r0, [r7, r2]
	cmp r1, #3
	blo %28
	ldr r0, [sp, #0x10]
	cmp r6, r0
	bhs %35
29
	ldr r0, _08013FF0
	lsls r5, r6, #2
	ldr r4, [r0, r5]
	cmp r4, #0
	beq %33
30
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq %32
	ldr r0, [r7, r5]
	cmp r0, #0
	bne %31
	ldr r0, _08013FF0
	ldr r0, [r0, r5]
	ldr r1, [r0]
	ldr r2, [r1, #0x44]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
	movs r0, #1
	str r0, [r7, r5]
31
	movs r1, #0
	adds r0, r4, #0
	bl sub_80402F8
32
	ldr r4, [r4, #4]
	cmp r4, #0
	bne %30
33
	ldr r0, [r7, r5]
	cmp r0, #0
	beq %34
	ldr r0, _08013FF0
	ldr r0, [r0, r5]
	ldr r1, [r0]
	ldr r2, [r1, #0x48]
	adds r2, r2, r1
	movs r1, #0
	bl __call_via_r2
34
	adds r6, #1
	lsls r6, r6, #0x18
	ldr r0, [sp, #0x10]
	lsrs r6, r6, #0x18
	cmp r6, r0
	blo %29
35
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_08013FF0 DCDU gUnknown_03003C40

	END
