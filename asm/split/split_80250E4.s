	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003478
	IMPORT gUnknown_0805107A
	IMPORT sub_80007A0
	IMPORT sub_8000914
	IMPORT sub_803FF24

	thumb_func_start sub_80250E4

sub_80250E4
	push {r4, r5, r6, lr}
	ldr r1, _0802538C
	adds r4, r0, #0
	ldr r1, [r1]
	movs r0, #0x10
	movs r5, #1
	ands r1, r0
	sub sp, #8
	beq %1
	ldr r0, [r4, #0x34]
	ldr r1, _08025390
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08025390
	ldrsb r1, [r1, r0]
	ldr r3, [r4, #0x14]
	adds r2, #4
	ldrsb r0, [r2, r0]
	adds r3, #0x2c
	ldr r6, [r3]
	ldr r3, [r3, #4]
	subs r0, #4
	lsls r2, r0, #0x10
	lsls r1, r1, #0x10
	adds r0, r6, r1
	str r3, [r4, #0x20]
	str r6, [r4, #0x1c]
	adds r1, r3, r2
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, sp
	bl sub_803FF24
	ldr r0, [r4, #0x34]
	ldr r2, _08025390
	lsls r1, r0, #0x18
	ldr r0, _08025390
	lsrs r1, r1, #0x18
	adds r0, #8
	ldrsb r0, [r0, r1]
	adds r2, #0xc
	ldrsb r1, [r2, r1]
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #0x10
	adds r0, r2, r0
	ldr r2, [r4, #0x20]
	subs r1, #4
	lsls r1, r1, #0x10
	adds r1, r2, r1
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	mov r1, sp
	bl sub_803FF24
1
	ldr r1, _08025394
	ldr r0, [r4, #0x40]
	ldr r2, _08025398
	ands r1, r0
	adds r0, #2
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0x40]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls %2
	ldr r0, [r4, #0x38]
	subs r0, #0xff
	subs r0, #0xba
	bne %2
	movs r0, #0xff
	adds r0, #0xbc
	adds r1, r0, #1
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	movs r2, #0
	bl sub_80007A0
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
2
	ldr r0, [r4, #4]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %3
	ldr r1, [r4, #0x38]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #4]
	bl sub_8000914
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	adds r1, #1
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x3c]
	bl sub_8000914
	ldr r0, [r4, #0x40]
	orrs r0, r5
	str r0, [r4, #0x40]
3
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	bx r3

	ALIGN
_0802538C DCDU gUnknown_03003478
_08025390 DCDU gUnknown_0805107A
_08025394 DCDU 0xFFFE0001
_08025398 DCDU 0x0001FFFE

	END
