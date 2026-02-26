	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT IdentifyEeprom
	IMPORT __16__rt_memcpy
	IMPORT gUnknown_03003E94
	IMPORT sub_8004C2C
	IMPORT sub_800B646
	IMPORT sub_800B652
	IMPORT sub_800B66A
	IMPORT sub_803B5A0

	non_word_aligned_thumb_func_start sub_800B3BA

sub_800B3BA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r6, [sp, #0x30]
	bl sub_8004C2C
	ldr r0, _0800B460
	movs r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq %11
	bl sub_800B66A
	cmp r0, #0
	beq %11
	ldr r0, _0800B460
	ldr r0, [r0]
	bl sub_800B652
	movs r5, #1
11
	cmp r4, #0
	beq %14
	cmp r4, #1
	bne %12
	movs r0, #0x40
	bl IdentifyEeprom
12
	cmp r4, #0
	beq %13
	cmp r4, #1
	bne %19
13
	adds r6, #7
	lsrs r6, r6, #3
	movs r4, #0
	cmp r6, #0
	bls %19
	lsrs r0, r7, #3
	str r0, [sp, #8]
	mov r7, sp
	b %15
14
	movs r0, #4
	bl IdentifyEeprom
	b %12
15
	ldr r0, [sp, #8]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_803B5A0
	cmp r0, #0
	beq %18
	cmp r5, #0
	beq %16
	ldr r0, _0800B460
	ldr r0, [r0]
	bl sub_800B646
16
	movs r0, #0
17
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	ldr r1, [sp, #0x18]
	lsls r0, r4, #3
	adds r0, r0, r1
	movs r2, #8
	adds r1, r7, #0
	bl __16__rt_memcpy
	adds r4, #1
	cmp r4, r6
	blo %15
19
	cmp r5, #0
	beq %20
	ldr r0, _0800B460
	ldr r0, [r0]
	bl sub_800B646
20
	movs r0, #1
	b %17
	ALIGN

	ALIGN
_0800B460 DCDU gUnknown_03003E94

	END
