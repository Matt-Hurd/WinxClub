	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __VTABLE__335dword_803EA8C
	IMPORT __VTABLE__360dword_803ECD0
	IMPORT gUnknown_03003E94
	IMPORT sub_801175C
	IMPORT sub_803D9A8
	IMPORT sub_803DA18

	thumb_func_start sub_800B554

sub_800B554
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0800B6DC
	adds r6, r1, #0
	str r0, [r4]
	bl sub_801175C
	ldr r0, [r4, #8]
	movs r5, #0
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt %9
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	bl sub_803D9A8
	str r5, [r4, #4]
9
	ldr r0, _0800B6D8
	cmp r6, #0
	str r0, [r4]
	ldr r0, _0800B6CC
	str r5, [r0]
	beq %10
	adds r0, r4, #0
	bl sub_803DA18
10
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	ALIGN
_0800B6CC DCDU gUnknown_03003E94
_0800B6D8 DCDU __VTABLE__360dword_803ECD0
_0800B6DC DCDU __VTABLE__335dword_803EA8C

	END
