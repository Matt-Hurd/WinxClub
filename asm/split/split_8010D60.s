    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003EB4
	IMPORT sub_800529A
	IMPORT sub_8008008
	IMPORT sub_803B8CC
	IMPORT sub_803B8CE
	IMPORT sub_803D468
	IMPORT sub_803E1EC
	IMPORT sub_803E1F8

	thumb_func_start sub_8010D60
sub_8010D60 ;@ 0x08010D60
	push {r4, r5, r6, r7, lr}
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r6, r0, r1
	ldrb r2, [r6, #0xc]
	sub sp, #0x24
	cmp r2, #0
	beq _08010E54
	ldr r1, _0801102C ;@ =0x0000064C
	movs r4, #0x17
	adds r3, r1, #0
	adds r3, #0x74
	lsls r4, r4, #8
	adds r7, r0, r4
	adds r5, r0, r3
	cmp r2, #1
	beq _08010DEE
	cmp r2, #2
	bne _08010E54
	ldrb r2, [r6, #0xf]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	adds r4, r0, r1
	ldr r0, [r4, #4]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x16
	lsls r1, r0, #0x1d
	lsrs r1, r1, #0x1d
	ldr r0, [r7, #0x10]
	bl sub_803E1EC
	ldr r0, [r4, #4]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x16
	lsls r1, r0, #0x1d
	lsrs r1, r1, #0x1d
	ldr r0, [r7, #0x10]
	bl sub_803E1F8
	ldrb r1, [r6, #0xd]
	ldr r0, [r5, #0x24]
	movs r5, #0
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #0xb
	adds r1, r0, r1
	ldr r0, [r7, #0x10]
	movs r7, #3
	lsls r7, r7, #0xb
	adds r2, r1, #0
	adds r3, r0, #0
	cmp r0, r1
	bhs _08010DDC
	adds r4, r3, r7
	cmp r4, r2
	bls _08010DDC
	adds r3, r4, #0
	adds r2, r2, r7
	movs r5, #5
	lsls r5, r5, #0x15
_08010DDC
	ldr r4, _08011030 ;@ =gUnknown_03003EB4
	ldr r7, [r4]
	movs r4, #0
	cmp r7, #0
	beq _08010E9A
	ldr r2, _08011034 ;@ =0x04000600
	bl sub_803D468
	b _08010ECE
_08010DEE
	adds r4, r0, #0
	ldr r2, [r5, #0x28]
	adds r4, #0xf0
	cmp r2, #0
	bne _08010E6E
	ldrb r2, [r6, #0xf]
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	adds r2, r0, r1
	str r2, [sp, #0x20]
	ldr r1, [r2]
	ldrb r2, [r6, #0xd]
	ldr r0, [r5, #0x24]
	adds r1, #8
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #0xb
	adds r3, r0, r2
	ldr r0, _08011038 ;@ =gUnknown_03003E84
	str r3, [sp, #0x1c]
	ldr r0, [r0]
	ldr r2, [sp, #0x20]
	ldr r2, [r2, #8]
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x11
	bl sub_800529A
	ldr r0, [r4]
	ldr r1, [r0, #0x14]
	adds r2, r1, r0
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	bl sub_803B8CC
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	add r0, sp, #4
	bl sub_8008008
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r3, [sp, #4]
	ldr r0, [r2, #8]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x11
	str r0, [sp, #8]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0xc]
	b _08010E56
_08010E54
	b _08010E92
_08010E56
	movs r0, #2
	add r3, sp, #0
	strb r0, [r3, #0x10]
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, [r0, #8]
	adds r2, r1, r0
	add r1, sp, #4
	adds r0, r4, #0
	bl sub_803B8CC
_08010E6E
	ldr r0, [r4]
	movs r2, #1
	ldr r1, [r0, #0xc]
	lsls r2, r2, #0x1e
	adds r3, r1, r0
	ldr r7, [r4, #0xc]
	ldr r1, [r5, #0x28]
	adds r0, r4, #0
	bl sub_803B8CE
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x28]
	subs r0, r0, r7
	subs r0, r1, r0
	str r0, [r5, #0x28]
	bne _08010E92
	movs r0, #2
	strb r0, [r6, #0xc]
_08010E92
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08010E9A
	lsls r1, r2, #0x1e
	ldr r0, _0801103C ;@ =0x040000D4
	bmi _08010EA4
	lsls r1, r3, #0x1e
	bpl _08010EBA
_08010EA4
	str r3, [r0]
	str r2, [r0, #4]
	movs r1, #3
	lsls r1, r1, #0xa
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _08010ECE
_08010EBA
	str r3, [r0]
	str r2, [r0, #4]
	movs r1, #3
	lsls r1, r1, #9
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08010ECE
	strb r4, [r6, #0xc]
	b _08010E92

	non_word_aligned_thumb_func_start sub_8010ED2
sub_8010ED2 ;@ 0x08010ED2
	cmp r1, #0xb
	blo _08010EDA
	movs r0, #0
	bx lr
_08010EDA
	movs r2, #0x1b
	lsls r2, r2, #6
	adds r2, r0, r2
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _08010EF6
	movs r2, #0x6d
	lsls r2, r2, #4
	adds r2, r0, r2
	ldrb r2, [r2]
	cmp r2, r1
	bne _08010EF6
	movs r0, #0
	bx lr
_08010EF6
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r1, r0
	movs r1, #0x19
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _08010F0C
	bx lr
_08010F0C
	movs r0, #1
	bx lr

	thumb_func_start sub_8010F10
sub_8010F10 ;@ 0x08010F10
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #6
	adds r5, r6, r0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08010F8C
	movs r0, #0x6d
	lsls r0, r0, #4
	adds r4, r6, r0
	ldrb r1, [r4, #0xf]
	adds r0, r6, #0
	bl sub_8010ED2
	cmp r0, #0
	beq _08010F8C
	ldrb r2, [r4, #0xd]
	movs r1, #1
	ldr r0, [r5, #0x20]
	lsls r1, r2
	ands r0, r1
	movs r7, #0
	cmp r0, #0
	beq _08010F4A
	adds r0, r6, #0
	bl sub_8010D60
	b _08010F4C
_08010F4A
	strb r7, [r4, #0xc]
_08010F4C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08010F84
	ldrb r0, [r4, #0xd]
	movs r2, #1
	adds r3, r2, #0
	ldr r1, [r5, #0x20]
	lsls r3, r0
	bics r1, r3
	str r1, [r5, #0x20]
	ldrb r1, [r4, #0xf]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r4, #0xf]
	cmp r1, #0xb
	blo _08010F70
	strb r7, [r4, #0xf]
_08010F70
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #0xd]
	cmp r0, #0xb
	blo _08010F7E
	strb r7, [r4, #0xd]
_08010F7E
	strb r2, [r4, #0xc]
	str r7, [r5, #0x28]
	str r7, [r5, #0x2c]
_08010F84
	movs r0, #1
_08010F86
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08010F8C
	movs r0, #0
	b _08010F86

	thumb_func_start sub_8010F90
sub_8010F90 ;@ 0x08010F90
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x1b
	lsls r1, r1, #6
	adds r5, r0, r1
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _08011026
	movs r2, #0x6d
	lsls r2, r2, #4
	adds r4, r0, r2
	ldrb r2, [r4, #1]
	cmp r2, #0
	beq _08011026
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _08011026
	ldrb r2, [r4]
	movs r7, #0
	lsls r3, r2, #1
	adds r2, r3, r2
	lsls r2, r2, #2
	adds r0, r2, r0
	movs r2, #0x19
	lsls r2, r2, #6
	adds r6, r0, r2
	str r0, [sp]
	ldr r0, _08011038 ;@ =gUnknown_03003E84
	str r1, [r6, #0xc]
	ldr r0, [r0]
	adds r3, r7, #0
	movs r2, #8
	ldr r1, [r5, #0x14]
	bl sub_800529A
	movs r2, #3
	ldr r1, [sp]
	lsls r2, r2, #9
	adds r1, r1, r2
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r0, [r1, #0x54]
	str r2, [r1, #0x50]
	ldrb r0, [r4, #1]
	adds r0, #0xff
	strb r0, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4]
	cmp r0, #0xb
	blo _08010FFA
	strb r7, [r4]
_08010FFA
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	bne _0801100A
	movs r0, #0xff
	str r7, [r5, #0x14]
	strb r0, [r4]
	b _0801101E
_0801100A
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0xc]
	lsls r2, r1, #0x13
	lsrs r2, r2, #0x11
	lsrs r1, r1, #0xd
	lsls r1, r1, #2
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, #8
	str r0, [r5, #0x14]
_0801101E
	movs r0, #1
_08011020
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08011026
	movs r0, #0
	b _08011020
	ALIGN
_0801102C DCDU 0x0000064C
_08011030 DCDU gUnknown_03003EB4
_08011034 DCDU 0x04000600
_08011038 DCDU gUnknown_03003E84
_0801103C DCDU 0x040000D4
	END