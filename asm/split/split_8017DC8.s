    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003444
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_8018070
	IMPORT sub_80180BE
	IMPORT sub_8018386

	thumb_func_start sub_8017DC8
sub_8017DC8 ;@ 0x08017DC8
	push {r3, lr}
	bl sub_80180BE
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_8017DD4
sub_8017DD4 ;@ 0x08017DD4
	push {r3, lr}
	add r0, pc, #0x54 ;@ =_08017E2C
	bl sub_800EF60
	bl sub_8018070
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8017DE6
sub_8017DE6 ;@ 0x08017DE6
	push {r3, r4, r5, lr}
	add r0, pc, #0x40 ;@ =_08017E2C
	bl sub_800EF60
	bl sub_8018070
	ldr r5, _08017E3C ;@ =gUnknown_03003444
	movs r4, #0
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08017E02
	ldrh r1, [r0, #6]
_08017E02
	lsls r0, r1, #0x10
	bne _08017E1A
_08017E06
	bl sub_800EF2A
	ldr r0, [r5]
	adds r1, r4, #0
	ldr r2, [r0, #0x14]
	lsls r2, r2, #0x1c
	bmi _08017E16
	ldrh r1, [r0, #6]
_08017E16
	lsls r0, r1, #0x10
	beq _08017E06
_08017E1A
	movs r0, #0x10
	bl sub_8018386
	bl sub_80180BE
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	ALIGN
_08017E2C DCDU 0x69544742
_08017E30 DCDU 0x53656C74
_08017E34 DCDU 0x65657263
_08017E38 DCDU 0x0000006E
_08017E3C DCDU gUnknown_03003444
	END