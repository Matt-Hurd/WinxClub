	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030031EE
	IMPORT gUnknown_03003EB8
	IMPORT sub_800116A
	IMPORT sub_80015F2
	IMPORT GetEWRAMStart
	IMPORT sub_803DA9C
	IMPORT sub_803F8BC
	IMPORT sub_803FE80
	IMPORT sub_803FF64
	IMPORT sub_8040034
	IMPORT sub_80401E4

	thumb_func_start sub_803EF1C
sub_803EF1C
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r1, #1
	strb r1, [r0, #1]
	bx lr
	ALIGN

	thumb_func_start sub_803EF2C
sub_803EF2C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r6, #0
	sub sp, #0x14
	bl GetEWRAMStart
	adds r5, r4, #0
	adds r5, #0x60
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	movs r7, #0
	muls r0, r2
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x60]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x64]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2
	lsls r0, r0, #3
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x68]
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	muls r0, r1
	cmp r0, #0
	bls _0803F06A
	adds r1, r4, #0
	adds r1, #0x70
	str r1, [sp, #0x10]
_0803EF96
	ldr r0, [r4, #0x54]
	lsls r7, r6, #2
	ldr r0, [r0, r7]
	add r1, sp, #4
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r1, [r3, #4]
	ldr r0, _0803F074
	ldrh r2, [r3, #6]
	ldr r0, [r0]
	strh r1, [r3]
	strh r2, [r3, #2]
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r2, r2, #2
	ldr r1, [r4, #0x64]
	str r2, [sp, #0xc]
	adds r2, r1, r2
	ldr r1, [r4, #0x68]
	lsls r3, r6, #3
	str r3, [sp, #8]
	adds r1, r1, r3
	mov r3, sp
	bl sub_80015F2
	ldr r0, _0803F074
	ldr r0, [r0]
	bl sub_800116A
	ldr r1, [r4, #0x60]
	str r0, [r1, r7]
	ldr r1, [r4, #0x64]
	ldr r2, [sp, #0xc]
	adds r2, r1, r2
	ldr r1, [r4, #0x68]
	ldr r3, [sp, #8]
	adds r1, r1, r3
	bl sub_803FE80
	movs r0, #0xef
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0x9f
	strh r0, [r3, #2]
	ldr r0, [r4, #0x60]
	mov r1, sp
	ldr r0, [r0, r7]
	bl sub_8040034
	ldr r0, [r4, #0x60]
	ldr r2, _0803F078
	ldr r0, [r0, r7]
	ldr r1, [sp, #0x10]
	ldrb r1, [r1, #4]
	ldrb r1, [r2, r1]
	bl sub_803FF64
	ldr r0, [r4, #0x60]
	ldrb r1, [r5, #0xd]
	ldr r0, [r0, r7]
	movs r3, #3
	ldrh r2, [r0, #0x26]
	lsls r3, r3, #0xa
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x14
	bics r2, r3
	orrs r1, r2
	strh r1, [r0, #0x26]
	ldr r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x60]
	ldr r1, [r0, r7]
	ldrb r2, [r1, #5]
	ldrb r0, [r5, #0xc]
	cmp r2, r0
	beq _0803F050
	ldrh r2, [r1, #0x2a]
	bics r2, r3
	lsls r3, r0, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r1, #0x2a]
	strb r0, [r1, #5]
	ldr r0, [r1]
	lsls r2, r0, #0x16
	bmi _0803F050
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1]
_0803F050
	ldr r0, [r4, #0x60]
	movs r1, #1
	ldr r0, [r0, r7]
	bl sub_80401E4
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r6, #1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	muls r0, r1
	cmp r0, r6
	bhi _0803EF96
_0803F06A
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0803F074 DCDU gUnknown_03003EB8
_0803F078 DCDU gUnknown_030031EE
	END
