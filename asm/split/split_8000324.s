	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT sub_8000D5A

	thumb_func_start sub_8000324

sub_8000324
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	sub sp, #8
	lsls r0, r0, #0xe
	bmi %4
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne %1
	ldr r0, _08000654
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
1
	ldr r1, [r0, #4]
	add r3, sp, #0
	lsls r2, r1, #0x14
	lsrs r2, r2, #0x18
	lsls r2, r2, #2
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	adds r2, #4
	lsls r1, r1, #2
	adds r1, #4
	strh r2, [r3, #4]
	strh r1, [r3, #6]
	ldrh r1, [r4, #0x28]
	ldrh r0, [r0, #0x12]
	lsls r1, r1, #0x12
	ldr r1, [r4, #0x30]
	bpl %3
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r4, #0x40]
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	subs r0, r0, r1
	str r0, [r4, #0x38]
2
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
3
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x38]
	add r3, sp, #0
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x40]
	b %2
4
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %2
	ldr r1, [r0]
	lsls r1, r1, #0xb
	bpl %5
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x30]
	lsls r2, r2, #0x16
	lsrs r2, r2, #6
	subs r2, r1, r2
	str r2, [r4, #0x38]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #6
	adds r0, r1, r0
	str r0, [r4, #0x40]
	b %2
5
	ldrh r1, [r4, #0x28]
	lsls r1, r1, #0x12
	ldr r1, [r4, #0x30]
	ldr r2, [r0, #4]
	bge %6
	lsrs r2, r2, #0x15
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	subs r1, r1, r2
	str r1, [r4, #0x40]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #6
	subs r0, r1, r0
	str r0, [r4, #0x38]
	b %2
6
	lsrs r2, r2, #0x15
	lsls r2, r2, #0x15
	asrs r2, r2, #5
	adds r1, r1, r2
	str r1, [r4, #0x38]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #6
	adds r0, r1, r0
	str r0, [r4, #0x40]
	b %2

	ALIGN
_08000654 DCDU gUnknown_03003EA0

	END
