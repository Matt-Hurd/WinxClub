	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT gUnknown_03003E84
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_8008072
	IMPORT sub_803D4A8

	non_word_aligned_thumb_func_start sub_801828A

sub_801828A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	movs r7, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #0x1c
	beq %14
	bl sub_8008072
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r0, r1
	beq %16
14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %15
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
15
	str r7, [r4, #0x10]
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_803D4A8
	str r0, [r4, #0x10]
16
	ldr r1, [r5, #4]
	ldr r2, _08018378
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	ldr r0, [r2]
	beq %18
	lsrs r1, r1, #4
	lsls r2, r1, #2
	adds r3, r7, #0
	adds r1, r6, #0
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	adds r7, r0, #0
	add r0, sp, #4
	bl sub_8008008
	str r6, [sp, #4]
	ldr r0, [r5, #4]
	lsrs r0, r0, #4
	lsls r0, r0, #2
	str r0, [sp, #8]
	adds r0, r7, #3
	lsrs r0, r0, #2
	ldr r3, [sp, #0x28]
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r2, r2, r1
	adds r1, r6, #0
	bl __call_via_r2
	adds r2, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r3, [r1, #0x1c]
	adds r3, r3, r1
	ldr r1, [r4]
	bl __call_via_r3
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #8]
	adds r2, r2, r1
	add r1, sp, #4
	bl __call_via_r2
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r3, r2, r1
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r7, #0
	bl __call_via_r3
	ldr r0, [r5, #4]
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	lsrs r0, r7, #2
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r5, #4]
17
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	lsrs r1, r1, #4
	lsls r2, r1, #2
	adds r1, r6, #0
	ldr r3, [sp, #0x28]
	bl sub_800529A
	b %17
	ALIGN

	ALIGN
_08018378 DCDU gUnknown_03003E84

	END
