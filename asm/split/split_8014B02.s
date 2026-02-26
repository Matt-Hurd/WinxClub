	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT sub_803EF2C
	IMPORT sub_803F5FC

	non_word_aligned_thumb_func_start sub_8014B02

sub_8014B02
	push {r3, lr}
	ldr r2, [r0, #0x70]
	cmp r2, r1
	beq %39
	str r1, [r0, #0x70]
	cmp r1, #0
	beq %40
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq %40
	bl sub_803EF2C
39
	add sp, #4
	pop {r3}
	bx r3
40
	cmp r1, #0
	bne %39
	ldr r1, [r0, #0x60]
	cmp r1, #0
	beq %39
	ldr r2, [r0, #0x64]
	ldr r3, [r0, #0x68]
	bl sub_803F5FC
	b %39

	END
