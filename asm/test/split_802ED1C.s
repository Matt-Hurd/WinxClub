    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT nullsub_1
	IMPORT sub_80002A8
	IMPORT sub_800529A
	IMPORT sub_803BEB0
	IMPORT sub_803C28C
	IMPORT sub_803C2DC
	IMPORT sub_803C37C


	thumb_func_start sub_802ED1C
sub_802ED1C ;@ 0x0802ED1C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r0, #0
	bl sub_803C2DC
	cmp r0, #0
	beq _0802EDF6
	movs r7, #0x47
	movs r6, #0x48
_0802ED2E
	ldrb r1, [r5]
	cmp r1, #0x20
	bne _0802ED3C
	movs r1, #0xff
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED3C
	cmp r1, #0xa
	bne _0802ED48
	movs r1, #0xfe
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED48
	movs r3, #0
	ldrsb r2, [r5, r3]
	adds r3, r2, #0
	subs r3, #0x30
	cmp r3, #9
	bhi _0802ED5E
	adds r1, r2, #0
	adds r1, #0xd1
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED5E
	adds r3, r2, #0
	subs r3, #0x41
	cmp r3, #0x19
	bhi _0802ED70
	adds r1, r2, #0
	adds r1, #0xe4
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED70
	adds r3, r2, #0
	subs r3, #0x61
	cmp r3, #0x19
	bhi _0802ED82
	adds r1, r2, #0
	adds r1, #0xaa
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED82
	cmp r1, #0x2e
	bne _0802ED8E
	movs r1, #0x3f
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED8E
	cmp r1, #0x2c
	bne _0802ED9A
	movs r1, #0x40
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802ED9A
	cmp r1, #0x3a
	bne _0802EDA6
	movs r1, #0x41
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDA6
	cmp r1, #0x3b
	bne _0802EDB2
	movs r1, #0x42
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDB2
	cmp r1, #0x21
	bne _0802EDBE
	movs r1, #0x43
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDBE
	cmp r1, #0x3f
	bne _0802EDCA
	movs r1, #0x44
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDCA
	cmp r1, #0x26
	bne _0802EDD6
	movs r1, #0x45
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDD6
	cmp r1, #0x28
	bne _0802EDE2
	movs r1, #0x46
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDE2
	cmp r1, #0x29
	bne _0802EDEC
	strb r7, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDEC
	cmp r1, #0x27
	bne _0802EDF8
	strb r6, [r4]
	adds r4, #1
	b _0802EEF6
_0802EDF6
	b _0802EF00
_0802EDF8
	cmp r1, #0x60
	bne _0802EE02
	strb r6, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE02
	cmp r1, #0x2d
	bne _0802EE0E
	movs r1, #0x49
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE0E
	cmp r1, #0x2f
	bne _0802EE1A
	movs r1, #0x4a
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE1A
	cmp r1, #0x2b
	bne _0802EE26
	movs r1, #0x4b
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE26
	cmp r1, #0xa9
	bne _0802EE32
	movs r1, #0x4c
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE32
	cmp r1, #0x99
	bne _0802EE3E
	movs r1, #0x4d
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE3E
	cmp r1, #0x5f
	bne _0802EE4A
	movs r1, #0x4e
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE4A
	cmp r1, #0x24
	bne _0802EE56
	movs r1, #0x4f
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE56
	cmp r1, #0x22
	beq _0802EE62
	cmp r1, #0x93
	beq _0802EE62
	cmp r1, #0x94
	bne _0802EE6A
_0802EE62
	movs r1, #0x50
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE6A
	cmp r1, #0x3c
	bne _0802EE76
	movs r1, #0x51
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE76
	cmp r1, #0x3e
	bne _0802EE82
	movs r1, #0x52
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE82
	cmp r1, #0x2a
	bne _0802EE8E
	movs r1, #0x53
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE8E
	cmp r1, #0x3d
	bne _0802EE9A
	movs r1, #0x54
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EE9A
	cmp r1, #0xae
	bne _0802EEA6
	movs r1, #0x55
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEA6
	cmp r1, #0x23
	bne _0802EEB2
	movs r1, #0x56
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEB2
	cmp r1, #0x40
	bne _0802EEBE
	movs r1, #0x57
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEBE
	cmp r1, #0x25
	bne _0802EECA
	movs r1, #0x58
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EECA
	cmp r1, #0x5c
	bne _0802EED6
	movs r1, #0x59
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EED6
	cmp r1, #0x7e
	bne _0802EEE2
	movs r1, #0x5a
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEE2
	cmp r1, #0x5b
	bne _0802EEEC
	strb r1, [r4]
	adds r4, #1
	b _0802EEF6
_0802EEEC
	cmp r1, #0x5d
	bne _0802EEF6
	movs r1, #0x5c
	strb r1, [r4]
	adds r4, #1
_0802EEF6
	subs r0, #1
	adds r5, #1
	cmp r0, #0
	beq _0802EF00
	b _0802ED2E
_0802EF00
	movs r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_802EF0A
sub_802EF0A ;@ 0x0802EF0A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	ldr r6, _0802F114 ;@ =gUnknown_03003E84
	adds r5, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	sub sp, #0x44
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r7, r0, #0x18
	lsrs r7, r7, #0x18
	ldr r0, [r6]
	bl nullsub_1
	adds r5, #8
	movs r1, #0x40
	add r0, sp, #4
	bl sub_803BEB0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0802EF52
	add r6, sp, #4
	adds r0, r6, #0
	ldr r1, [sp, #0x50]
	bl sub_803C28C
	adds r0, r6, #0
	bl sub_80002A8
	adds r0, r6, #0
	bl sub_802ED1C
_0802EF52
	movs r0, #0
	mvns r0, r0
	adds r7, r7, r0
	movs r6, #0
	cmp r7, r0
	str r0, [sp]
	beq _0802F008
_0802EF60
	ldr r0, _0802F114 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x90
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x48]
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bne _0802EFEA
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0802EFCE
	ldr r1, [sp, #0x48]
	movs r0, #0
	cmp r1, #9
	bhs _0802EFB0
	add r3, pc, #0x4 ;@ =_0802EF90
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
_0802EF90
	DCB 0x0F
_0802EF91
	DCB 0x04
_0802EF92
	DCB 0x0F
_0802EF93
	DCB 0x0F
_0802EF94
	DCB 0x07
_0802EF95
	DCB 0x0A
_0802EF96
	DCB 0x0F
_0802EF97
	DCB 0x0F
_0802EF98
	DCB 0x0D, 0x00
loc_802ef9a
	adds r0, r4, #0
	adds r0, #0x10
	b _0802EFB0
loc_802efa0
	adds r0, r4, #0
	adds r0, #8
	b _0802EFB0
loc_802efa6
	adds r0, r4, #0
	adds r0, #8
	b _0802EFB0
loc_802efac
	adds r0, r4, #0
	adds r0, #8
_0802EFB0
	cmp r0, #0
	beq _0802EFEA
	add r1, sp, #4
	bl sub_803C37C
	cmp r0, #0
	beq _0802EFEA
	bl sub_803C2DC
	ldr r1, [sp]
	cmp r0, r1
	bhs _0802EFEA
	str r0, [sp]
	adds r6, r5, #4
	b _0802EFEA
_0802EFCE
	ldr r0, [sp, #0x4c]
	subs r0, #1
	str r0, [sp, #0x4c]
	adds r3, r0, #1
	bne _0802EFEA
	ldr r0, _0802F114 ;@ =gUnknown_03003E84
	ldr r0, [r0]
	bl nullsub_1
	adds r0, r5, #4
_0802EFE2
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0802EFEA
	ldr r0, [r4]
	lsls r0, r0, #4
	lsrs r0, r0, #2
	adds r5, r0, r5
	ldr r0, _0802F114 ;@ =gUnknown_03003E84
	adds r5, #4
	ldr r0, [r0]
	bl nullsub_1
	subs r7, #1
	bhs _0802EF60
	cmp r6, #0
	beq _0802F008
	adds r0, r6, #0
	b _0802EFE2
_0802F008
	movs r0, #0
	b _0802EFE2

	thumb_func_start sub_802F00C
sub_802F00C ;@ 0x0802F00C
	push {r3, lr}
	adds r1, r0, #0
	ldr r0, _0802F114 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x90
	subs r1, #4
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	lsrs r2, r2, #0x1c
	cmp r2, #6
	bhs _0802F046
	add r3, pc, #0x4 ;@ =_0802F030
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_0802F030
	DCB 0x0A
_0802F031
	DCB 0x02
_0802F032
	DCB 0x0A
_0802F033
	DCB 0x0A
_0802F034
	DCB 0x05
_0802F035
	DCB 0x08
loc_802f036
	adds r1, r0, #0
	adds r1, #0x10
	b _0802F046
loc_802f03c
	adds r1, r0, #0
	adds r1, #8
	b _0802F046
loc_802f042
	adds r1, r0, #0
	adds r1, #8
_0802F046
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3

	non_word_aligned_thumb_func_start sub_802F04E
sub_802F04E ;@ 0x0802F04E
	subs r1, r0, #4
	ldr r0, _0802F114 ;@ =gUnknown_03003E84
	push {r4, lr}
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r2, [r0]
	movs r1, #0
	movs r4, #0
	lsrs r2, r2, #0x1c
	cmp r2, #9
	bhs _0802F0A4
	add r3, pc, #0x8 ;@ =_0802F074
	ldrb r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
	ALIGN
_0802F074
	DCB 0x18
_0802F075
	DCB 0x05
_0802F076
	DCB 0x09
_0802F077
	DCB 0x18
_0802F078
	DCB 0x0D
_0802F079
	DCB 0x11
_0802F07A
	DCB 0x18
_0802F07B
	DCB 0x18
_0802F07C
	DCB 0x15, 0x00
loc_802f07e
	adds r1, r0, #0
	adds r1, #0x10
	movs r4, #0xc
	b _0802F0A4
loc_802f086
	adds r1, r0, #0
	adds r1, #0xc
	movs r4, #8
	b _0802F0A4
loc_802f08e
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b _0802F0A4
loc_802f096
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
	b _0802F0A4
loc_802f09e
	adds r1, r0, #0
	adds r1, #8
	movs r4, #4
_0802F0A4
	adds r0, r1, #0
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, r0, r4
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_802F0B8
sub_802F0B8 ;@ 0x0802F0B8
	push {r3, lr}
	subs r1, r0, #4
	ldr r0, _0802F114 ;@ =gUnknown_03003E84
	movs r3, #0
	movs r2, #0x90
	ldr r0, [r0]
	bl sub_800529A
	ldr r0, [r0]
	add sp, #4
	pop {r3}
	lsls r0, r0, #4
	lsrs r0, r0, #2
	bx r3

	thumb_func_start sub_802F0D4
sub_802F0D4 ;@ 0x0802F0D4
	adds r1, r0, #0
	movs r0, #0
	push {r4}
	b _0802F0DE
_0802F0DC
	adds r1, #1
_0802F0DE
	ldrb r2, [r1]
	cmp r2, #0
	beq _0802F0EE
	movs r3, #0
	ldrsb r2, [r1, r3]
	subs r2, #1
	cmp r2, #9
	bls _0802F0DC
_0802F0EE
	subs r1, #1
	movs r2, #1
	b _0802F100
_0802F0F4
	muls r3, r2
	adds r0, r3, r0
	lsls r3, r2, #2
	adds r2, r3, r2
	lsls r2, r2, #1
	subs r1, #1
_0802F100
	ldrb r3, [r1]
	cmp r3, #0
	beq _0802F110
	movs r3, #0
	ldrsb r4, [r1, r3]
	subs r3, r4, #1
	cmp r3, #9
	bls _0802F0F4
_0802F110
	pop {r4}
	bx lr
	ALIGN
_0802F114 DCDU gUnknown_03003E84
	END