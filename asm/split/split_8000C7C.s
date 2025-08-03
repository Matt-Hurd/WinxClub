	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT sub_800529A
	IMPORT sub_803D9A8

	thumb_func_start sub_8000C7C
sub_8000C7C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08000D60
	adds r5, r1, #0
	adds r3, r4, #4
	movs r2, #0x3c
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r4, #0x18]
	adds r0, r0, r5
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	adds r0, r0, r5
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	adds r0, r0, r5
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	adds r0, r0, r5
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r5
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	adds r0, r0, r5
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	adds r0, r0, r5
	str r0, [r4, #0x34]
	str r5, [r4, #0x48]
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000CC6
sub_8000CC6
	str r1, [r0, #0x4c]
	bx lr

	non_word_aligned_thumb_func_start sub_8000CCA
sub_8000CCA
	str r1, [r0, #0x50]
	bx lr

	non_word_aligned_thumb_func_start sub_8000CCE
sub_8000CCE
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x40]
	movs r5, #0
	cmp r0, #0
	beq _08000CE4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x40]
_08000CE4
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _08000CF4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x44]
_08000CF4
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08000D04
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x58]
_08000D04
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _08000D14
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x5c]
_08000D14
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _08000D24
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x60]
_08000D24
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _08000D34
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x64]
_08000D34
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _08000D44
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x68]
_08000D44
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _08000D54
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	str r5, [r4, #0x6c]
_08000D54
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000D5A
sub_8000D5A
	adds r0, #4
	bx lr

	non_word_aligned_thumb_func_start nullsub_3
nullsub_3
	bx lr
	ALIGN
_08000D60 DCDU gUnknown_03003E84
	END
