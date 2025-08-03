	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gPlayerEntity
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003458
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003C58
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB4
	IMPORT sub_80050C0
	IMPORT sub_8005106
	IMPORT sub_800B058
	IMPORT sub_800E53C
	IMPORT sub_800E71C
	IMPORT sub_800ED7C
	IMPORT sub_800EF2A
	IMPORT sub_800EF60
	IMPORT sub_8017B9A
	IMPORT sub_8017CA0
	IMPORT sub_8018070
	IMPORT sub_8018386
	IMPORT sub_801B170
	IMPORT CpuSet
	IMPORT __da__FPv
	IMPORT sub_803DA9C
	IMPORT sub_80406C4

	thumb_func_start sub_8028F64
sub_8028F64
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _08029040
	ldr r1, _08029044
	ldr r0, [r5]
	ldr r4, [r1]
	movs r1, #0x88
	ldr r0, [r0, #8]
	ldr r1, [r1, r4]
	subs r0, r0, r1
	bl sub_80406C4
	ldr r0, [r4]
	adds r0, r1, r0
	str r0, [r4]
	movs r0, #0
	bl sub_800E53C
	ldr r4, _08029048
	ldr r0, [r4]
	bl sub_8017B9A
	bl sub_800EF2A
	movs r1, #3
	ldr r0, [r5]
	bl sub_800B058
	ldr r0, _0802904C
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r7, #0
	cmp r0, #0
	beq _08028FBA
	movs r0, #0
	ldr r2, _08029050
	str r0, [sp]
	adds r1, r2, #0
	subs r1, #0x20
	mov r0, sp
	bl CpuSet
	b _08028FCC
_08028FBA
	movs r0, #0
	str r0, [sp]
	ldr r0, _08029054
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08029058
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08028FCC
	add r0, pc, #0x8C
	bl sub_800EF60
	bl sub_8018070
	ldr r5, _08029064
	ldr r0, [r5]
	bl __da__FPv
	ldr r6, _08029068
	movs r1, #0
	ldrh r0, [r6]
	bl sub_800ED7C
	bl sub_8005106
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r7, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl sub_80050C0
	str r0, [r5]
	movs r0, #0
	bl sub_800E71C
	ldr r0, [r4]
	bl sub_8017CA0
	ldr r0, _08029040
	ldr r1, _08029044
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0, #8]
	adds r1, #0x80
	str r0, [r1, #8]
	ldrh r0, [r6]
	cmp r0, #6
	bne _08029038
	ldr r0, _0802906C
	ldr r0, [r0]
	bl sub_801B170
	movs r0, #0x17
	bl sub_8018386
_08029032
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08029038
	movs r0, #0x11
	bl sub_8018386
	b _08029032
	ALIGN
_08029040 DCDU gUnknown_03003E98
_08029044 DCDU gPlayerEntity
_08029048 DCDU gUnknown_03003454
_0802904C DCDU gUnknown_03003EB4
_08029050 DCDU 0x05000020
_08029054 DCDU REG_DMA3
_08029058 DCDU 0x85000020
_0802905C DCDU 0x6F4D6742
_08029060 DCDU 0x00656976
_08029064 DCDU gUnknown_03003468
_08029068 DCDU gUnknown_03003C58
_0802906C DCDU gUnknown_03003458
	END