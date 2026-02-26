	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT gUnknown_03003E84
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_8008072
	IMPORT sub_803D4A8

	non_word_aligned_thumb_func_start sub_801819E

sub_801819E
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	movs r7, #0
	adds r6, r1, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #0x1c
	beq %9
	bl sub_8008072
	ldr r1, [r5, #4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r0, r1
	beq %11
9
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %10
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
10
	str r7, [r4, #0x10]
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bl sub_803D4A8
	str r0, [r4, #0x10]
11
	ldr r0, [r5, #4]
	ldr r1, _08018378
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r0, [r1]
	beq %13
	ldr r1, [r5]
	adds r3, r7, #0
	lsrs r1, r1, #0x13
	lsls r2, r1, #2
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
	ldr r0, [r5]
	lsrs r0, r0, #0x13
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	str r0, [sp, #0xc]
	adds r0, r7, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	str r0, [sp, #0x14]
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
	ldr r0, [r5]
	lsls r1, r0, #0xd
	lsrs r1, r1, #0xd
	lsrs r0, r7, #2
	lsls r0, r0, #0x13
	orrs r0, r1
	str r0, [r5]
12
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
13
	ldr r3, [r4, #4]
	ldr r1, [r5]
	lsrs r1, r1, #0x13
	lsls r2, r1, #2
	adds r1, r6, #0
	bl sub_800529A
	b %12

	ALIGN
_08018378 DCDU gUnknown_03003E84

	END
