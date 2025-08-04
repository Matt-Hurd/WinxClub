	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803D66C
	IMPORT __nw__FUi

	thumb_func_start sub_8004670
sub_8004670
	str r1, [r0, #4]
	bx lr

	thumb_func_start sub_8004674
sub_8004674
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_8004678
sub_8004678
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	bne %1
	movs r0, #0x10
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	ldrh r1, [r0]
	lsls r2, r4, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r2, r1
	movs r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	movs r1, #4
	bics r2, r1
	strh r2, [r0]
2
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_80046AC
sub_80046AC
	str r1, [r0, #4]
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
	bx lr

	thumb_func_start sub_80046B8
sub_80046B8
	ldrh r1, [r1]
	sub sp, #4
	add r3, sp, #0
	strh r1, [r3]
	ldrh r3, [r3]
	strh r3, [r0, #8]
	ldrh r3, [r2]
	strh r3, [r0, #0xa]
	ldrh r3, [r2, #2]
	movs r2, #4
	strh r3, [r0, #0xc]
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	add sp, #4
	bx lr

	thumb_func_start sub_80046D8
sub_80046D8
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start sub_80046DC
sub_80046DC
	ldrh r1, [r1, #8]
	strh r1, [r0]
	bx lr

	non_word_aligned_thumb_func_start sub_80046E2
sub_80046E2
	adds r1, #0xa
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start sub_80046EE
sub_80046EE
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	bx lr

	thumb_func_start sub_80046F8
sub_80046F8
	push {r3, lr}
	cmp r0, #0
	bne %3
	movs r0, #6
	bl __nw__FUi
	cmp r0, #0
	beq %4
3
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
4
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004716
sub_8004716
	push {r3, lr}
	cmp r0, #0
	bne %5
	movs r0, #0xc
	bl __nw__FUi
	cmp r0, #0
	beq %6
5
	movs r2, #1
	ldr r1, [r0]
	lsls r2, r2, #0x19
	orrs r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	movs r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
6
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004742
sub_8004742
	adds r0, #4
	bx lr

	non_word_aligned_thumb_func_start sub_8004746
sub_8004746
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	bx lr

	non_word_aligned_thumb_func_start sub_800474E
sub_800474E
	push {r3, lr}
	adds r0, #4
	bl sub_803D66C
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800475C
sub_800475C
	movs r3, #1
	lsls r3, r3, #0x1a
	ldr r2, [r0]
	lsls r1, r1, #0x1a
	bics r2, r3
	orrs r1, r2
	str r1, [r0]
	bx lr

	thumb_func_start sub_800476C
sub_800476C
	ldrh r2, [r0]
	movs r3, #0xc0
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr
	ALIGN
_0800477C DCDU 0x06008800
	END
