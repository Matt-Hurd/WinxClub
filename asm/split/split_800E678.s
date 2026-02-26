	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gScriptDataMetadata
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_03003EBC
	IMPORT sub_8004FFC
	IMPORT sub_801333E
	IMPORT sub_80133A0
	IMPORT sub_80133F0
	IMPORT sub_803FDB8

	thumb_func_start sub_800E678

sub_800E678
	push {r4, lr}
	sub sp, #8
	movs r0, #2
	bl sub_801333E
	add r1, pc, #0x2B8
	movs r0, #0
	bl sub_80133F0
	add r1, pc, #0x2C4
	movs r0, #1
	bl sub_80133F0
	movs r0, #1
	bl sub_80133A0
	movs r2, #0
	ldr r4, _0800E964
	movs r3, #0
	movs r1, #1
	str r2, [sp, #4]
	str r4, [sp]
	bl sub_803FDB8
	movs r0, #0
	bl sub_80133A0
	movs r2, #0
	adds r3, r4, #0
	movs r1, #2
	str r2, [sp]
	str r2, [sp, #4]
	bl sub_803FDB8
	movs r0, #0
	bl sub_80133A0
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r2, _0800E96C
	movs r1, #3
	ldr r3, _0800E968
	bl sub_803FDB8
	ldr r0, _0800E970
	add r1, pc, #0x29C
	ldr r4, [r0]
	ldr r0, _0800E988
	ldr r0, [r0]
	bl sub_8004FFC
	ldr r1, [r0]
	ldr r2, [r4, #4]
	str r1, [r2]
	ldrh r2, [r0, #4]
	ldr r3, [r4, #4]
	adds r1, r0, #0
	strh r2, [r3, #4]
	ldrb r2, [r0, #6]
	ldr r3, [r4, #4]
	adds r1, #8
	strb r2, [r3, #6]
	ldrb r2, [r0, #7]
	ldr r3, [r4, #4]
	strb r2, [r3, #7]
	ldr r2, [r4, #4]
	str r1, [r2, #8]
	ldr r1, [r4, #4]
	ldr r2, [r1]
	adds r0, r2, r0
	str r0, [r1, #0xc]
	ldr r1, _0800E98C
	ldr r0, _0800E924
	ldr r1, [r1]
	ldr r0, [r0, #0x14]
	ldrb r1, [r1, #3]
	strb r1, [r0, #9]
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	ALIGN
_0800E924 DCDU gScriptDataMetadata
_0800E964 DCDU 0x0000777F
_0800E968 DCDU 0x0000FFFF
_0800E96C DCDU 0x000050FC
_0800E970 DCDU gUnknown_03003EBC
_0800E988 DCDU gUnknown_03003EA8
_0800E98C DCDU gUnknown_03003D30

	END
