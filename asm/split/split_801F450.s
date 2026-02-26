	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16_ll_mulss
	IMPORT __16_ll_sdiv
	IMPORT sub_8018620

	thumb_func_start sub_801F450

sub_801F450
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	adds r1, #0x58
	adds r5, r2, #0
	ldr r2, [r4, #0x58]
	ldm r1!, {r0, r1}
	subs r0, r2, r0
	ldr r2, [r4, #0x5c]
	sub sp, #0xc
	subs r1, r2, r1
	str r1, [sp, #8]
	cmp r0, #0
	str r0, [sp, #4]
	bne %10
	ldr r0, [sp, #8]
	cmp r0, #0
	bne %10
	movs r0, #1
	lsls r0, r0, #0xf
	str r0, [sp, #4]
	str r0, [sp, #8]
	b %11
10
	add r0, sp, #4
	bl sub_8018620
11
	ldr r1, [r6, #0x70]
	add r7, pc, #0x1A8
	cmp r1, #0
	ble %12
	adds r0, r5, #0
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r5, r0, #0
	ldr r1, [sp, #4]
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
	b %13
12
	adds r0, r5, #0
	ldr r1, [sp, #4]
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	subs r7, #8
	bl __16_ll_sdiv
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl __16_ll_mulss
	ldm r7!, {r2, r3}
	bl __16_ll_sdiv
13
	ldr r2, [r4, #0x68]
	adds r2, r2, r6
	str r2, [r4, #0x68]
	ldr r2, [r4, #0x6c]
	adds r0, r2, r0
	str r0, [r4, #0x6c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	END
