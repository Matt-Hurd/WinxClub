	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT CollectFirefly
	IMPORT ModifyPlayerHealth
	IMPORT gPlayerEntity
	IMPORT sub_8023A70
	IMPORT sub_8023AA2
	IMPORT sub_8023AE0

	thumb_func_start sub_801FE90

sub_801FE90
	push {r3, lr}
	ldr r0, [r1]
	ldrb r1, [r0, #4]
	cmp r1, #5
	bhs %6
	add r3, pc, #0x8
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
1
	DCB 0x03
2
	DCB 0x0D
3
	DCB 0x15
4
	DCB 0x1D
5
	DCB 0x25, 0x00
loc_801feaa
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl ModifyPlayerHealth
6
	add sp, #4
	pop {r3}
	bx r3
loc_801febe
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023A70
	b %6
loc_801fece
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AA2
	b %6
loc_801fede
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl CollectFirefly
	b %6
loc_801feee
	movs r3, #5
	ldrsb r1, [r0, r3]
	ldr r0, _0802026C
	ldr r0, [r0]
	adds r0, #0xac
	bl sub_8023AE0
	b %6

	ALIGN
_0802026C DCDU gPlayerEntity

	END
