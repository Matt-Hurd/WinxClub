	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803D9A8

	non_word_aligned_thumb_func_start sub_8000CCE

sub_8000CCE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x40]
	movs r5, #0
	cmp r0, #0
	beq %1
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x40]
1
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq %2
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x44]
2
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq %3
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x58]
3
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq %4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x5c]
4
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq %5
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x60]
5
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq %6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x64]
6
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq %7
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x68]
7
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq %8
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x6c]
8
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	END
