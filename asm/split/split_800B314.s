	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT IdentifyEeprom
	IMPORT __16__rt_memcpy
	IMPORT gUnknown_03003E94
	IMPORT sub_8004C2C
	IMPORT sub_800B646
	IMPORT sub_800B652
	IMPORT sub_800B66A
	IMPORT sub_803B81C

	thumb_func_start sub_800B314

sub_800B314
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
	beq %1
	bl sub_800B66A
	cmp r0, #0
	beq %1
	ldr r0, _0800B460
	ldr r0, [r0]
	bl sub_800B652
	movs r5, #1
1
	cmp r4, #0
	beq %4
	cmp r4, #1
	bne %2
	movs r0, #0x40
	bl IdentifyEeprom
2
	cmp r4, #0
	beq %3
	cmp r4, #1
	bne %9
3
	adds r6, #7
	lsrs r6, r6, #3
	movs r4, #0
	cmp r6, #0
	bls %9
	lsrs r0, r7, #3
	str r0, [sp, #8]
	mov r7, sp
	b %5
4
	movs r0, #4
	bl IdentifyEeprom
	b %2
5
	ldr r1, [sp, #0x18]
	lsls r0, r4, #3
	adds r1, r0, r1
	movs r2, #8
	adds r0, r7, #0
	bl __16__rt_memcpy
	ldr r0, [sp, #8]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r7, #0
	bl sub_803B81C
	cmp r0, #0
	beq %8
	cmp r5, #0
	beq %6
	ldr r0, _0800B460
	ldr r0, [r0]
	bl sub_800B646
6
	movs r0, #0
7
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
8
	adds r4, #1
	cmp r4, r6
	blo %5
9
	cmp r5, #0
	beq %10
	ldr r0, _0800B460
	ldr r0, [r0]
	bl sub_800B646
10
	movs r0, #1
	b %7

	ALIGN
_0800B460 DCDU gUnknown_03003E94

	END
