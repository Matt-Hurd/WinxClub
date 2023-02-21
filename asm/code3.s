.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_803EF1C
sub_803EF1C: @ 0x0803EF1C
	movs r1, #0x29
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0

	thumb_func_start sub_803EF2C
sub_803EF2C: @ 0x0803EF2C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r6, #0
	sub sp, #0x14
	bl sub_8005106
	adds r5, r4, #0
	adds r5, #0x60
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	movs r7, #0
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x60]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2, r0
	lsls r3, r0, #2
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x64]
	bl sub_8005106
	adds r1, r0, #0
	ldrb r0, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	muls r0, r2, r0
	lsls r0, r0, #3
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r4, #0x68]
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	muls r0, r1, r0
	cmp r0, #0
	bls _0803F06A
	adds r1, r4, #0
	adds r1, #0x70
	str r1, [sp, #0x10]
_0803EF96:
	ldr r0, [r4, #0x54]
	lsls r7, r6, #2
	ldr r0, [r0, r7]
	add r1, sp, #4
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r1, [r3, #4]
	ldr r0, _0803F074 @ =gUnknown_03003EB8
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
	ldr r0, _0803F074 @ =gUnknown_03003EB8
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
	ldr r2, _0803F078 @ =gUnknown_030031EE
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
_0803F050:
	ldr r0, [r4, #0x60]
	movs r1, #1
	ldr r0, [r0, r7]
	bl sub_80401E4
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r6, #1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	muls r0, r1, r0
	cmp r0, r6
	bhi _0803EF96
_0803F06A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803F074: .4byte gUnknown_03003EB8
_0803F078: .4byte gUnknown_030031EE

	thumb_func_start sub_803F07C
sub_803F07C: @ 0x0803F07C
	str r1, [r0, #4]
	cmp r1, #0
	beq _0803F092
	ldr r3, [r1]
	str r3, [r0]
	str r0, [r1]
	ldr r1, [r0]
	cmp r1, #0
	beq _0803F096
	str r0, [r1, #4]
	b _0803F096
_0803F092:
	movs r1, #0
	str r1, [r0]
_0803F096:
	ldr r1, [r0, #8]
	lsls r2, r2, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	orrs r1, r2
	lsrs r1, r1, #8
	lsls r1, r1, #8
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_803F0A8
sub_803F0A8: @ 0x0803F0A8
	push {r4, r5, r6, r7}
	cmp r0, #0xff
	bne _0803F0B4
	ldr r0, _0803F108 @ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
_0803F0B4:
	ldr r3, _0803F10C @ =gUnknown_03003E88
	movs r7, #6
	ldr r4, [r3]
	lsls r3, r0, #1
	adds r3, r3, r4
	adds r5, r3, #0
	adds r3, #0xff
	adds r3, #1
	adds r5, #0xff
	adds r5, #0x81
	ldrh r6, [r3, #0x18]
	ldrh r5, [r5, #0x18]
	adds r6, r6, r7
	cmp r6, r5
	bls _0803F0D6
	movs r5, #0
	strh r5, [r3, #0x18]
_0803F0D6:
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r4, [r3, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r4, #6
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r3, #0x18]
	lsls r5, r4, #0x1e
	beq _0803F0F8
	lsls r5, r4, #0x1e
	lsrs r5, r5, #0x1e
	movs r6, #4
	subs r5, r6, r5
	adds r4, r4, r5
	strh r4, [r3, #0x18]
_0803F0F8:
	movs r3, #0x1c
	strh r3, [r0]
	strh r7, [r0, #2]
	strb r1, [r0, #4]
	strb r2, [r0, #5]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0803F108: .4byte gUnknown_03003454
_0803F10C: .4byte gUnknown_03003E88

	thumb_func_start sub_803F110
sub_803F110: @ 0x0803F110
	push {r4, r5}
	cmp r0, #0xff
	bne _0803F11C
	ldr r0, _0803F168 @ =gUnknown_03003454
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
_0803F11C:
	ldr r1, _0803F16C @ =gUnknown_03003E88
	movs r5, #4
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r2
	adds r3, r1, #0
	adds r1, #0xff
	adds r1, #1
	adds r3, #0xff
	adds r3, #0x81
	ldrh r4, [r1, #0x18]
	ldrh r3, [r3, #0x18]
	adds r4, r4, r5
	cmp r4, r3
	bls _0803F13E
	movs r3, #0
	strh r3, [r1, #0x18]
_0803F13E:
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r2, [r1, #0x18]
	ldr r0, [r0, #0x18]
	adds r0, r0, r2
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r2, [r1, #0x18]
	lsls r3, r2, #0x1e
	beq _0803F15E
	lsls r3, r2, #0x1e
	lsrs r3, r3, #0x1e
	subs r3, r5, r3
	adds r2, r2, r3
	strh r2, [r1, #0x18]
_0803F15E:
	movs r1, #0x2c
	strh r1, [r0]
	strh r5, [r0, #2]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0803F168: .4byte gUnknown_03003454
_0803F16C: .4byte gUnknown_03003E88

	thumb_func_start sub_803F170
sub_803F170: @ 0x0803F170
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0803F1A8 @ =gUnknown_03003EB8
	adds r5, r1, #0
	ldr r1, [r4]
	ldr r0, [r0]
	beq _0803F18A
	lsls r1, r1, #0x1c
	bmi _0803F194
	adds r1, r4, #0
	bl sub_80012F0
	b _0803F194
_0803F18A:
	lsls r1, r1, #0x1c
	bpl _0803F194
	adds r1, r4, #0
	bl sub_8001338
_0803F194:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r5, #3
	orrs r0, r1
	str r0, [r4]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0803F1A8: .4byte gUnknown_03003EB8

	thumb_func_start sub_803F1AC
sub_803F1AC: @ 0x0803F1AC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r7, r0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	movs r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0803F230
	lsls r0, r1, #0x1f
	lsrs r3, r0, #0x12
	str r3, [sp, #4]
_0803F1CA:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r1, [r0, #0x20]
	movs r0, #0x97
	ldrsb r0, [r0, r1]
	cmp r0, #2
	beq _0803F1DC
	cmp r0, #0
	bne _0803F222
_0803F1DC:
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, [r2, #0xc]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r0, r3
	ldr r3, [sp, #4]
	orrs r0, r3
	str r0, [r2, #0xc]
	ldr r4, [r1, #0x2c]
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x1f
	ldr r0, [r4]
	beq _0803F208
	lsls r0, r0, #0x1c
	bmi _0803F216
	ldr r0, _0803F238 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0803F216
_0803F208:
	lsls r0, r0, #0x1c
	bpl _0803F216
	ldr r0, _0803F238 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0803F216:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r4]
_0803F222:
	ldr r0, [sp, #8]
	adds r5, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r5
	bhi _0803F1CA
_0803F230:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803F238: .4byte gUnknown_03003EB8

	thumb_func_start sub_803F23C
sub_803F23C: @ 0x0803F23C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r7, r0
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	movs r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0803F2C0
	lsls r0, r1, #0x1f
	lsrs r3, r0, #0x12
	str r3, [sp, #4]
_0803F25A:
	lsls r0, r5, #2
	adds r0, r0, r7
	ldr r0, [r0, #0x20]
	movs r1, #0x97
	ldrb r1, [r1, r0]
	cmp r1, #4
	beq _0803F26C
	cmp r1, #6
	bne _0803F2B2
_0803F26C:
	adds r2, r0, #0
	adds r2, #0x80
	ldr r1, [r2, #0xc]
	movs r3, #1
	lsls r3, r3, #0xd
	bics r1, r3
	ldr r3, [sp, #4]
	orrs r1, r3
	str r1, [r2, #0xc]
	ldr r4, [r0, #0x2c]
	lsls r0, r1, #0x12
	lsrs r6, r0, #0x1f
	ldr r0, [r4]
	beq _0803F298
	lsls r0, r0, #0x1c
	bmi _0803F2A6
	ldr r0, _0803F2C8 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_80012F0
	b _0803F2A6
_0803F298:
	lsls r0, r0, #0x1c
	bpl _0803F2A6
	ldr r0, _0803F2C8 @ =gUnknown_03003EB8
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_8001338
_0803F2A6:
	ldr r0, [r4]
	movs r1, #8
	bics r0, r1
	lsls r1, r6, #3
	orrs r0, r1
	str r0, [r4]
_0803F2B2:
	ldr r0, [sp, #8]
	adds r5, #1
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r5
	bhi _0803F25A
_0803F2C0:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803F2C8: .4byte gUnknown_03003EB8

	thumb_func_start sub_803F2CC
sub_803F2CC: @ 0x0803F2CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x28
	ldrh r2, [r0]
	movs r3, #1
	lsls r3, r3, #0xc
	bics r2, r3
	lsls r1, r1, #0xc
	orrs r1, r2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_80003F4
	ldr r0, [r4]
	movs r5, #0x80
	lsls r1, r0, #0x1e
	cmp r1, #0
	blt _0803F37A
	ldr r1, [r4, #0x3c]
	lsls r6, r5, #2
	cmp r1, #0
	ldr r2, _0803F388 @ =gUnknown_03003EA0
	blt _0803F314
	movs r3, #0xf
	ldr r1, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r1, r3
	bge _0803F314
	ldr r1, [r4, #0x40]
	cmp r1, #0
	blt _0803F314
	movs r3, #5
	ldr r1, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r1, r3
	blt _0803F32A
_0803F314:
	lsls r0, r0, #0x16
	bmi _0803F37A
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4]
	b _0803F37A
_0803F32A:
	lsls r0, r0, #0x16
	bpl _0803F344
	adds r1, r4, #0
	ldr r0, [r2]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_0803F344:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_0803F37A:
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	pop {r4, r5, r6}
	pop {r3}
	bx r3
	.align 2, 0
_0803F388: .4byte gUnknown_03003EA0

	thumb_func_start sub_803F38C
sub_803F38C: @ 0x0803F38C
	movs r2, #0xff
	adds r2, #1
	push {r4}
	movs r3, #2
	cmp r1, #0
	ldr r4, [r0]
	beq _0803F3A6
	orrs r4, r3
	adds r1, r4, #0
	bics r1, r2
	str r1, [r0]
_0803F3A2:
	pop {r4}
	bx lr
_0803F3A6:
	bics r4, r3
	bics r4, r2
	str r4, [r0]
	b _0803F3A2
	.align 2, 0

	thumb_func_start sub_803F3B0
sub_803F3B0: @ 0x0803F3B0
	movs r0, #1
	bx lr

	thumb_func_start sub_803F3B4
sub_803F3B4: @ 0x0803F3B4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r0]
	ldr r0, [r5]
	bl sub_803B92C
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r5, #4]
	bl sub_803B92C
	add r2, pc, #0x10 @ =_0803F3E0
	adds r0, r0, r6
	adcs r1, r7
	ldm r2, {r2, r3}
	bl sub_803B940
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803F3E0: .4byte 0x00000100
_0803F3E4: .4byte 0x00000000

	thumb_func_start sub_803F3E8
sub_803F3E8: @ 0x0803F3E8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r1, r3, #0
	adds r0, r4, #0
	movs r5, #0
	cmp r4, r3
	bhs _0803F406
	adds r6, r4, r2
	cmp r6, r1
	bls _0803F406
	adds r4, r6, #0
	adds r1, r1, r2
	movs r5, #5
	lsls r5, r5, #0x15
_0803F406:
	ldr r6, _0803F45C @ =gUnknown_03003EB4
	ldr r6, [r6]
	cmp r6, #0
	beq _0803F424
	lsls r1, r2, #9
	movs r2, #1
	lsls r2, r2, #0x1a
	lsrs r1, r1, #0xb
	orrs r2, r1
	adds r1, r3, #0
	bl sub_803D468
_0803F41E:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_0803F424:
	lsls r3, r1, #0x1e
	ldr r0, _0803F460 @ =0x040000D4
	bmi _0803F432
	lsls r3, r4, #0x1e
	bmi _0803F432
	lsls r3, r2, #0x1e
	bpl _0803F446
_0803F432:
	str r4, [r0]
	str r1, [r0, #4]
	lsrs r1, r2, #1
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0803F41E
_0803F446:
	str r4, [r0]
	str r1, [r0, #4]
	lsrs r1, r2, #2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r5
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0803F41E
	.align 2, 0
_0803F45C: .4byte gUnknown_03003EB4
_0803F460: .4byte 0x040000D4

	thumb_func_start sub_803F464
sub_803F464: @ 0x0803F464
	ldr r3, _0803F4C4 @ =gUnknown_03003EB4
	push {r4, lr}
	ldr r3, [r3]
	sub sp, #8
	cmp r3, #0
	beq _0803F48C
	str r2, [sp, #4]
	movs r2, #5
	lsls r1, r1, #9
	lsrs r1, r1, #0xb
	lsls r2, r2, #0x18
	orrs r2, r1
	adds r1, r0, #0
	add r0, sp, #4
	bl sub_803D468
_0803F484:
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3
_0803F48C:
	lsls r3, r0, #0x1e
	ldr r4, _0803F4C8 @ =0x040000D4
	bmi _0803F496
	lsls r3, r1, #0x1e
	bpl _0803F4AE
_0803F496:
	add r3, sp, #0
	strh r2, [r3, #4]
	add r2, sp, #4
	str r2, [r4]
	str r0, [r4, #4]
	lsrs r0, r1, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0803F484
_0803F4AE:
	str r2, [sp, #4]
	add r2, sp, #4
	str r2, [r4]
	str r0, [r4, #4]
	lsrs r0, r1, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0803F484
	.align 2, 0
_0803F4C4: .4byte gUnknown_03003EB4
_0803F4C8: .4byte 0x040000D4

	arm_func_start sub_803F4CC
sub_803F4CC: @ 0x0803F4CC
	mov r2, r0
	ldr r0, [r0, #4]
	cmp r0, r1
	bhs _0803F508
	ldr r3, [r2, #8]
	add ip, r3, #2
	str ip, [r2, #8]
	ldrh r3, [r3]
	rsb ip, r0, #0x10
	add r0, r0, #0x10
	lsl r3, r3, ip
	ldr ip, [r2]
	str r0, [r2, #4]
	orr r3, r3, ip
	str r3, [r2]
_0803F508:
	ldr r3, [r2]
	rsb r0, r1, #0x20
	ldr ip, [r2, #4]
	lsr r0, r3, r0
	sub ip, ip, r1
	lsl r1, r3, r1
	stm r2, {r1, ip}
	bx lr

	thumb_func_start sub_803F528
sub_803F528: @ 0x0803F528
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0x14
	str r4, [sp, #4]
	cmp r3, #0xff
	bne _0803F536
	ldrb r3, [r0, #9]
_0803F536:
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r4, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r4
	adds r1, r2, r1
	lsls r2, r3, #2
	ldr r1, [r1, r2]
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	bl sub_803C47C
	add sp, #8
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_803F55C
sub_803F55C: @ 0x0803F55C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r4, #0x70
	ldrb r2, [r4, #4]
	movs r5, #0
	cmp r2, #0xff
	beq _0803F5E0
	ldrb r1, [r4, #5]
	cmp r1, #0xff
	beq _0803F5E0
	ldrb r3, [r0, #0xc]
	ldr r6, _0803F5E8 @ =gUnknown_03003C40
	lsls r3, r3, #2
	ldr r3, [r6, r3]
	adds r6, r0, #0
	adds r6, #0x20
	b _0803F594
_0803F57E:
	movs r5, #0x2e
	ldrb r5, [r5, r3]
	ldrb r7, [r6, #0xe]
	cmp r5, r7
	bne _0803F590
	cmp r3, r0
	beq _0803F590
	movs r5, #1
	b _0803F592
_0803F590:
	movs r5, #0
_0803F592:
	ldr r3, [r3, #4]
_0803F594:
	cmp r3, #0
	beq _0803F59E
	cmp r5, #0
	beq _0803F57E
	b _0803F5DA
_0803F59E:
	cmp r5, #0
	bne _0803F5DA
	ldr r3, _0803F5F0 @ =gUnknown_030031FE
	ldr r0, _0803F5EC @ =0x0000FFFF
	lsls r2, r2, #3
	adds r2, r2, r3
	lsls r1, r1, #1
	strh r0, [r2, r1]
	ldrb r2, [r4, #4]
	lsls r1, r2, #3
	ldrh r5, [r3, r1]
	cmp r5, r0
	bne _0803F5DA
	adds r1, r1, r3
	ldrh r3, [r1, #2]
	cmp r3, r0
	bne _0803F5DA
	ldrh r3, [r1, #4]
	cmp r3, r0
	bne _0803F5DA
	ldrh r1, [r1, #6]
	cmp r1, r0
	bne _0803F5DA
	ldr r0, _0803F5F4 @ =gUnknown_03003EA0
	ldr r1, _0803F5F8 @ =gUnknown_030031EE
	ldr r0, [r0]
	ldrb r1, [r1, r2]
	movs r2, #1
	bl sub_800C0EC
_0803F5DA:
	movs r0, #0xff
	strb r0, [r4, #4]
	strb r0, [r4, #5]
_0803F5E0:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803F5E8: .4byte gUnknown_03003C40
_0803F5EC: .4byte 0x0000FFFF
_0803F5F0: .4byte gUnknown_030031FE
_0803F5F4: .4byte gUnknown_03003EA0
_0803F5F8: .4byte gUnknown_030031EE

	thumb_func_start sub_803F5FC
sub_803F5FC: @ 0x0803F5FC
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x60
	ldrb r0, [r5, #0xe]
	adds r6, r1, #0
	ldrb r1, [r5, #0xf]
	movs r4, #0
	sub sp, #4
	muls r0, r1, r0
	cmp r0, #0
	bls _0803F634
	ldr r7, _0803F650 @ =gUnknown_03003EB8
_0803F614:
	lsls r1, r4, #2
	ldr r0, [r6, r1]
	cmp r0, #0
	beq _0803F624
	adds r1, r1, r6
	ldr r0, [r7]
	bl sub_8000DE6
_0803F624:
	ldrb r0, [r5, #0xe]
	ldrb r1, [r5, #0xf]
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	muls r0, r1, r0
	cmp r0, r4
	bhi _0803F614
_0803F634:
	adds r0, r6, #0
	bl sub_803DA4C
	ldr r0, [sp, #0xc]
	bl sub_803DA4C
	ldr r0, [sp, #0x10]
	bl sub_803DA4C
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803F650: .4byte gUnknown_03003EB8

	thumb_func_start sub_803F654
sub_803F654: @ 0x0803F654
	push {r4, r5, r6}
	adds r2, r0, #0
	adds r2, #0x80
	movs r4, #1
	lsls r4, r4, #0x11
	ldr r3, [r2, #0x2c]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0xe
	bics r3, r4
	orrs r1, r3
	lsls r3, r1, #0xe
	str r1, [r2, #0x2c]
	lsrs r5, r4, #6
	cmp r3, #0
	ldr r1, [r0, #0x2c]
	bge _0803F698
	ldr r3, [r1]
	lsls r4, r3, #0x15
	lsrs r4, r4, #0x1f
	beq _0803F68C
	lsls r4, r3, #0x14
	asrs r4, r4, #0x1f
	adds r4, #1
	lsls r4, r4, #0x1f
	lsrs r4, r4, #0x14
	bics r3, r5
	orrs r3, r4
	str r3, [r1]
_0803F68C:
	ldr r1, [r0, #0x70]
	str r1, [r2, #0x20]
	movs r1, #0
	str r1, [r0, #0x70]
_0803F694:
	pop {r4, r5, r6}
	bx lr
_0803F698:
	ldr r4, [r1]
	lsls r3, r4, #0x14
	lsrs r6, r3, #0x1f
	beq _0803F6AE
	asrs r3, r3, #0x1f
	adds r3, #1
	lsls r3, r3, #0x1f
	lsrs r3, r3, #0x14
	bics r4, r5
	orrs r3, r4
	str r3, [r1]
_0803F6AE:
	ldr r1, [r2, #0x20]
	str r1, [r0, #0x70]
	b _0803F694

	thumb_func_start sub_803F6B4
sub_803F6B4: @ 0x0803F6B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F6DC @ =gUnknown_03003EA0
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r4, #0x44]
	mvns r1, r1
	cmp r2, #0
	beq _0803F6D2
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r4, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
_0803F6D2:
	pop {r4}
	pop {r3}
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bx r3
	.align 2, 0
_0803F6DC: .4byte gUnknown_03003EA0

	thumb_func_start sub_803F6E0
sub_803F6E0: @ 0x0803F6E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F704 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	pop {r4}
	pop {r3}
	subs r0, r1, r0
	asrs r0, r0, #2
	bx r3
	.align 2, 0
_0803F704: .4byte gUnknown_03003EA0

	thumb_func_start sub_803F708
sub_803F708: @ 0x0803F708
	lsls r2, r0, #0x1b
	lsrs r2, r2, #0x1b
	movs r1, #1
	lsls r1, r2
	cmp r0, #0
	beq _0803F720
	lsrs r0, r0, #5
	ldr r2, _0803F728 @ =gUnknown_03003478
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	ands r0, r1
	beq _0803F724
_0803F720:
	movs r0, #1
	bx lr
_0803F724:
	movs r0, #0
	bx lr
	.align 2, 0
_0803F728: .4byte gUnknown_03003478

	thumb_func_start sub_803F72C
sub_803F72C: @ 0x0803F72C
	lsls r3, r2, #1
	adds r3, r3, r0
	push {r4, r5}
	adds r4, r3, #0
	adds r3, #0xff
	adds r3, #1
	adds r4, #0xff
	adds r4, #0x81
	ldrh r5, [r3, #0x18]
	ldrh r4, [r4, #0x18]
	adds r5, r5, r1
	cmp r5, r4
	bls _0803F74A
	movs r4, #0
	strh r4, [r3, #0x18]
_0803F74A:
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r2, [r0, #0x18]
	ldrh r0, [r3, #0x18]
	adds r2, r2, r0
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r3, #0x18]
	lsls r1, r0, #0x1e
	beq _0803F76C
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1e
	movs r4, #4
	subs r1, r4, r1
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_0803F76C:
	adds r0, r2, #0
	pop {r4, r5}
	bx lr
	.align 2, 0

	thumb_func_start sub_803F774
sub_803F774: @ 0x0803F774
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r3, #0x1a
	ldrsh r1, [r0, r3]
	sub sp, #0xc
	movs r3, #0x18
	str r1, [sp, #4]
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	movs r0, #0
	str r1, [sp]
	strb r0, [r4]
	adds r7, r6, #0
	adds r5, r2, #0
	adds r7, #0x60
	strb r0, [r2]
	b _0803F7BA
_0803F796:
	ldrb r1, [r7, #0xf]
	muls r0, r1, r0
	ldr r1, [r6, #0x54]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #0xa]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0803F7BA:
	ldrb r0, [r5]
	ldrb r1, [r7, #0xe]
	cmp r0, r1
	bhs _0803F7EA
	ldr r1, [sp, #4]
	cmp r1, #0xa0
	blt _0803F796
	b _0803F7EA
_0803F7CA:
	ldr r1, [r6, #0x54]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_803F8BC
	add r3, sp, #0
	ldrh r0, [r3, #8]
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0803F7EA:
	ldrb r0, [r4]
	ldrb r1, [r7, #0xf]
	cmp r0, r1
	bhs _0803F7F8
	ldr r1, [sp]
	cmp r1, #0xf0
	blt _0803F7CA
_0803F7F8:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803F802
	strb r0, [r5]
	b _0803F808
_0803F802:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803F80C
_0803F808:
	movs r0, #0
	strb r0, [r4]
_0803F80C:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803F814
sub_803F814: @ 0x0803F814
	push {r4, r5, r6}
	movs r4, #0x38
	ldrb r4, [r4, r0]
	ldr r5, [sp, #0xc]
	cmp r4, #1
	bne _0803F86A
	ldrb r4, [r0, #0x1c]
	lsls r6, r4, #0x1d
	bpl _0803F83A
	ldr r6, [r0, #0x14]
	ldrh r4, [r0, #0x20]
	ldrh r6, [r6, #4]
	subs r4, r4, r6
	lsrs r6, r4, #0x1f
	adds r4, r6, r4
	asrs r4, r4, #1
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _0803F84E
_0803F83A:
	lsls r4, r4, #0x1e
	bpl _0803F84C
	ldr r6, [r0, #0x14]
	ldrh r4, [r0, #0x20]
	ldrh r6, [r6, #4]
	subs r4, r4, r6
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _0803F84E
_0803F84C:
	movs r4, #0
_0803F84E:
	cmp r1, #0
	beq _0803F858
	ldrh r6, [r0, #0x18]
	adds r6, r6, r4
	strh r6, [r1]
_0803F858:
	cmp r2, #0
	beq _0803F87E
	ldr r6, [r0, #0x14]
	ldrh r1, [r0, #0x18]
	ldrh r6, [r6, #4]
	adds r1, r1, r6
	adds r1, r1, r4
	strh r1, [r2]
	b _0803F87E
_0803F86A:
	cmp r1, #0
	beq _0803F872
	ldrh r4, [r0, #0x18]
	strh r4, [r1]
_0803F872:
	cmp r2, #0
	beq _0803F87E
	ldrh r1, [r0, #0x18]
	ldrh r4, [r0, #0x20]
	adds r1, r1, r4
	strh r1, [r2]
_0803F87E:
	cmp r3, #0
	beq _0803F886
	ldrh r1, [r0, #0x1a]
	strh r1, [r3]
_0803F886:
	cmp r5, #0
	beq _0803F892
	ldrh r1, [r0, #0x1a]
	ldrh r0, [r0, #0x1e]
	adds r0, r1, r0
	strh r0, [r5]
_0803F892:
	pop {r4, r5, r6}
	bx lr
	.align 2, 0

	thumb_func_start sub_803F898
sub_803F898: @ 0x0803F898
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803F8B8 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r0, [r0, #0x20]
	ldr r1, [r4, #0x10]
	pop {r4}
	subs r0, r1, r0
	asrs r0, r0, #3
	lsls r0, r0, #0x10
	pop {r3}
	lsrs r0, r0, #0x10
	bx r3
	.align 2, 0
_0803F8B8: .4byte gUnknown_03003EA0

	thumb_func_start sub_803F8BC
sub_803F8BC: @ 0x0803F8BC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x18]
	adds r5, r1, #0
	cmp r0, #0
	bne _0803F8E2
	ldr r0, _0803F900 @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_0803F8E2:
	ldr r1, [r0, #4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x18
	lsls r0, r0, #2
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	adds r0, #4
	lsls r1, r1, #2
	adds r1, #4
	strh r0, [r5]
	strh r1, [r5, #2]
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0
_0803F900: .4byte gUnknown_03003EA0

	thumb_func_start sub_803F904
sub_803F904: @ 0x0803F904
	push {r4}
	cmp r3, #0xff
	bne _0803F90C
	ldrb r3, [r0, #9]
_0803F90C:
	ldr r0, [r0, #4]
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r4, [r0, #4]
	ldr r2, [r0, #8]
	ldr r0, [r0, #0xc]
	lsls r1, r4
	adds r1, r2, r1
	lsls r2, r3, #2
	ldr r1, [r1, r2]
	pop {r4}
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_803F928
sub_803F928: @ 0x0803F928
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r0, #0x18]
	add r6, sp, #0x2c
	ldm r6, {r5, r6}
	strh r0, [r5]
	ldrh r0, [r4, #0x1a]
	adds r7, r2, #0
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0x40
	ldr r1, [r4, #0x58]
	str r0, [sp]
	ldrh r0, [r0, #0x1c]
	bl sub_803C124
	ldrh r1, [r4, #0x20]
	movs r2, #0
	movs r3, #0
	strh r1, [r7]
	ldrh r1, [r4, #0x1e]
	ldr r4, [sp, #8]
	lsls r0, r0, #0x10
	strh r1, [r4]
	ldr r1, [sp, #0x28]
	lsrs r0, r0, #0x10
	strh r2, [r1]
	ldr r1, [sp, #0x10]
	strh r2, [r1]
	ldrsh r1, [r5, r3]
	ldrsh r4, [r7, r3]
	adds r3, r1, r4
	ldr r4, [sp]
	ldrh r4, [r4, #0x1c]
	cmp r3, r4
	ble _0803F976
	subs r1, r4, r1
	strh r1, [r7]
_0803F976:
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r4, [sp, #8]
	ldrsh r4, [r4, r3]
	adds r3, r1, r4
	cmp r3, r0
	ble _0803F98A
	ldr r4, [sp, #8]
	subs r0, r0, r1
	strh r0, [r4]
_0803F98A:
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0803F9A4
	ldr r4, [sp, #8]
	ldrh r1, [r4]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r6]
	ldr r1, [sp, #0x10]
	rsbs r0, r0, #0
	strh r0, [r1]
	strh r2, [r6]
_0803F9A4:
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0803F9BC
	ldrh r1, [r7]
	adds r0, r1, r0
	strh r0, [r7]
	ldrh r0, [r5]
	ldr r1, [sp, #0x28]
	rsbs r0, r0, #0
	strh r0, [r1]
	strh r2, [r5]
_0803F9BC:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_803F9C4
sub_803F9C4: @ 0x0803F9C4
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r7, sp, #0x2c
	ldr r2, [r0]
	ldm r7, {r5, r6, r7}
	ldr r3, [r2, #0x18]
	adds r4, r0, #0
	adds r2, r3, r2
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x28]
	adds r2, r2, r1
	ldr r1, [sp, #0xc]
	bl sub_803B8CC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r3, r2, r1
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x10]
	bl sub_803B8CE
	ldr r0, _0803FA38 @ =0x0000FFFF
	cmp r5, r0
	beq _0803FA10
	cmp r6, r0
	beq _0803FA10
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r3, r2, r1
	adds r2, r6, #0
	adds r1, r5, #0
	bl sub_803B8CE
_0803FA10:
	cmp r7, #0xff
	beq _0803FA2A
	movs r2, #0
	str r2, [sp]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x20]
	movs r3, #0
	adds r5, r2, r1
	movs r2, #0xff
	adds r1, r7, #0
	bl sub_803B8D2
_0803FA2A:
	adds r0, r4, #0
	bl sub_8013B76
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803FA38: .4byte 0x0000FFFF

	thumb_func_start sub_803FA3C
sub_803FA3C: @ 0x0803FA3C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r5, r1, #0
	adds r7, r3, #0
	lsls r0, r0, #0x13
	sub sp, #4
	ldr r6, _0803FAB4 @ =gUnknown_03003EA0
	bpl _0803FA56
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
_0803FA56:
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x10]
	movs r0, #0
	cmp r7, #0
	beq _0803FA62
	adds r0, r5, #0
_0803FA62:
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_80003F4
	adds r0, r4, #0
	bl sub_8000324
	ldr r1, [r5, #4]
	movs r0, #1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #9
	beq _0803FA7E
	movs r0, #0
_0803FA7E:
	ldrh r1, [r4, #0x26]
	movs r2, #1
	lsls r2, r2, #0xd
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803FAAC
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0803FAAC:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803FAB4: .4byte gUnknown_03003EA0

	thumb_func_start sub_803FAB8
sub_803FAB8: @ 0x0803FAB8
	ldr r1, [r0, #0x7c]
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	cmp r1, #2
	bne _0803FACE
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	bpl _0803FACE
	movs r0, #1
	bx lr
_0803FACE:
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_803FAD4
sub_803FAD4: @ 0x0803FAD4
	ldr r1, _0803FB20 @ =gUnknown_03003E88
	push {r4}
	ldr r2, [r1]
	ldrh r1, [r0, #0x10]
	movs r3, #0x53
	lsls r3, r3, #3
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x18
	adds r1, r1, r2
	adds r4, r1, r3
	adds r3, #0xff
	adds r3, #1
	adds r1, r1, r3
	movs r3, #0
	str r3, [r0, #0x14]
	ldr r3, [r1]
	str r3, [r0, #0x18]
	ldr r3, [r1]
	cmp r3, #0
	beq _0803FB00
	str r0, [r3, #0x14]
	b _0803FB02
_0803FB00:
	str r0, [r4]
_0803FB02:
	str r0, [r1]
	ldrh r0, [r0, #0x10]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x19
	adds r1, r1, r2
	movs r2, #0x43
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r0, r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	pop {r4}
	bx lr
	.align 2, 0
_0803FB20: .4byte gUnknown_03003E88

	thumb_func_start sub_803FB24
sub_803FB24: @ 0x0803FB24
	str r1, [r0]
	cmp r3, #0xff
	bne _0803FB30
	ldr r1, _0803FB50 @ =gUnknown_03003E88
	ldr r1, [r1]
	ldrb r3, [r1, #0x14]
_0803FB30:
	ldrh r1, [r0, #0x10]
	lsls r3, r3, #0x1a
	lsrs r1, r1, #6
	lsls r1, r1, #6
	lsrs r3, r3, #0x1a
	orrs r1, r3
	strh r1, [r0, #0x10]
	strb r2, [r0, #4]
	ldr r2, _0803FB54 @ =0x0000FFFE
	movs r1, #0
	str r1, [r0, #8]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0803FB50: .4byte gUnknown_03003E88
_0803FB54: .4byte 0x0000FFFE

	thumb_func_start sub_803FB58
sub_803FB58: @ 0x0803FB58
	push {r4, r5}
	ldr r2, _0803FBB8 @ =gUnknown_03003E88
	movs r4, #0x53
	ldr r3, [r2]
	ldrh r2, [r0, #0x10]
	lsls r4, r4, #3
	movs r5, #0x73
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r3
	adds r4, r2, r4
	lsls r5, r5, #3
	adds r2, r2, r5
	cmp r1, #0
	bne _0803FB78
	ldr r1, [r4]
_0803FB78:
	cmp r1, #0
	bne _0803FB86
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r0, [r4]
	str r0, [r2]
	b _0803FB9E
_0803FB86:
	str r1, [r0, #0x18]
	ldr r4, [r1, #0x14]
	str r4, [r0, #0x14]
	str r0, [r1, #0x14]
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0803FB96
	str r0, [r4, #0x18]
_0803FB96:
	ldr r4, [r2]
	cmp r4, r1
	bne _0803FB9E
	str r0, [r2]
_0803FB9E:
	ldrh r0, [r0, #0x10]
	movs r2, #0x43
	lsls r2, r2, #3
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x19
	adds r1, r1, r3
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r0, r0, #6
	adds r0, r2, r0
	strh r0, [r1]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0803FBB8: .4byte gUnknown_03003E88

	thumb_func_start sub_803FBBC
sub_803FBBC: @ 0x0803FBBC
	push {r4, r5}
	ldrh r2, [r0, #0x10]
	ldr r1, _0803FC10 @ =gUnknown_03003E88
	movs r4, #0x73
	ldr r1, [r1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	movs r3, #0x53
	lsls r3, r3, #3
	lsls r4, r4, #3
	adds r4, r2, r4
	adds r3, r2, r3
	ldr r2, [r0, #0x18]
	ldr r5, [r0, #0x14]
	cmp r2, #0
	beq _0803FBE2
	str r5, [r2, #0x14]
	b _0803FBE4
_0803FBE2:
	str r5, [r3]
_0803FBE4:
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0803FBF0
	ldr r3, [r0, #0x18]
	str r3, [r2, #0x18]
	b _0803FBF4
_0803FBF0:
	ldr r2, [r0, #0x18]
	str r2, [r4]
_0803FBF4:
	ldrh r0, [r0, #0x10]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	adds r1, r2, r1
	movs r2, #0x43
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r1]
	lsrs r0, r0, #6
	subs r0, r2, r0
	strh r0, [r1]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0803FC10: .4byte gUnknown_03003E88

	thumb_func_start sub_803FC14
sub_803FC14: @ 0x0803FC14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803FC5C @ =gUnknown_03003EA0
	ldr r0, [r0]
	bl sub_8000D5A
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xe
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0x1f
	movs r2, #0x10
	str r0, [r4, #8]
	bl sub_803B998
	add r2, pc, #0x24 @ =_0803FC60
	ldm r2, {r2, r3}
	bl sub_803B940
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	strb r0, [r4, #3]
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_0803FC5C: .4byte gUnknown_03003EA0
_0803FC60: .4byte 0x0010BE20
_0803FC64: .4byte 0x00000000

	thumb_func_start sub_803FC68
sub_803FC68: @ 0x0803FC68
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r3, #0
	sub sp, #4
	bne _0803FCA2
	movs r1, #5
	lsls r1, r1, #7
	movs r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	b _0803FC88
_0803FC7E:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #4
	bhs _0803FD0E
_0803FC88:
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0803FC7E
	lsls r0, r4, #1
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	bmi _0803FC7E
	b _0803FD0E
_0803FCA2:
	movs r4, #4
	b _0803FCB0
_0803FCA6:
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0x40
	bhs _0803FCBA
_0803FCB0:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _0803FCA6
_0803FCBA:
	ldr r0, _0803FD58 @ =gUnknown_03003468
	ldr r0, [r0]
	bl sub_80050FA
	lsrs r7, r6, #2
	bl sub_8005106
	cmp r7, #0
	beq _0803FCDC
	lsls r7, r7, #2
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_803DA9C
	b _0803FCE8
_0803FCDC:
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	movs r0, #4
	bl sub_803DA80
_0803FCE8:
	lsls r1, r4, #2
	adds r1, r1, r5
	str r0, [r1, #0x18]
	movs r0, #0
	bl sub_80050FA
	lsls r0, r4, #1
	movs r1, #0xff
	adds r1, #0x99
	adds r0, r0, r5
	strh r6, [r1, r0]
	movs r2, #0xff
	adds r2, #0x19
	movs r1, #0
	strh r1, [r2, r0]
	movs r2, #1
	lsls r2, r2, #9
	adds r0, r0, r2
	strh r1, [r0, #0x18]
_0803FD0E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0803FD24
	lsls r1, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r1, r1, r5
	movs r0, #1
	adds r1, r1, r2
	strh r0, [r1, #0x18]
	b _0803FD32
_0803FD24:
	lsls r0, r4, #1
	movs r2, #0xb
	lsls r2, r2, #7
	adds r0, r0, r5
	movs r1, #0
	adds r0, r0, r2
	strh r1, [r0, #0x18]
_0803FD32:
	lsls r1, r4, #2
	movs r2, #9
	lsls r2, r2, #7
	adds r1, r1, r5
	ldr r0, [sp, #8]
	adds r1, r1, r2
	str r0, [r1, #0x18]
	adds r0, r2, #0
	adds r0, #0xff
	adds r0, #0x91
	adds r0, r5, r0
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	add sp, #0x14
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803FD58: .4byte gUnknown_03003468

	thumb_func_start sub_803FD5C
sub_803FD5C: @ 0x0803FD5C
	push {r4, r5, r6, r7}
	adds r5, r1, #0
	orrs r5, r2
	ldr r4, [sp, #0x10]
	movs r6, #0x13
	lsls r6, r6, #7
	orrs r5, r3
	orrs r5, r4
	adds r0, r0, r6
	cmp r5, #0
	bne _0803FD9A
	ldr r5, [r0, #0x20]
	ldr r4, [r5, #0x50]
	ldr r5, [r5, #0x54]
	ldrh r2, [r4, #0xc]
	ldr r5, [r5, #4]
	ldrh r4, [r4, #0xe]
	lsls r6, r5, #5
	lsrs r7, r6, #0x1d
	movs r6, #1
	lsls r6, r7
	muls r2, r6, r2
	lsls r5, r5, #2
	lsrs r5, r5, #0x1d
	movs r6, #1
	lsls r6, r5
	muls r4, r6, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
_0803FD9A:
	lsls r1, r1, #0x10
	str r1, [r0, #0x28]
	lsls r1, r3, #0x10
	subs r2, #0xf0
	str r1, [r0, #0x2c]
	lsls r1, r2, #0x10
	str r1, [r0, #0x30]
	subs r4, #0xa0
	lsls r1, r4, #0x10
	str r1, [r0, #0x34]
	movs r1, #1
	lsls r1, r1, #0x13
	str r1, [r0, #0x38]
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_803FDB8
sub_803FDB8: @ 0x0803FDB8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	add r6, sp, #0x28
	adds r4, r0, #0
	ldr r0, [r0, #0x10]
	ldm r6, {r5, r6}
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bne _0803FE4C
	bl sub_8005106
	movs r7, #1
	lsls r7, r7, #9
	adds r1, r0, #0
	movs r3, #0
	movs r2, #0
	adds r0, r7, #0
	bl sub_803DA9C
	str r0, [r4, #0x10]
	ldr r3, [r4, #0x14]
	movs r1, #0
	mov ip, r1
	adds r1, r0, #0
	adds r2, r3, #0
	cmp r3, r0
	bhs _0803FE02
	adds r7, r2, r7
	cmp r7, r1
	bls _0803FE02
	adds r2, r7, #0
	movs r7, #1
	lsls r7, r7, #9
	adds r1, r1, r7
	movs r7, #5
	lsls r7, r7, #0x15
	mov ip, r7
_0803FE02:
	ldr r7, _0803FE74 @ =gUnknown_03003EB4
	ldr r7, [r7]
	cmp r7, #0
	beq _0803FE16
	adds r1, r0, #0
	adds r0, r3, #0
	ldr r2, _0803FE78 @ =0x04000080
	bl sub_803D468
	b _0803FE4C
_0803FE16:
	lsls r3, r1, #0x1e
	ldr r0, _0803FE7C @ =0x040000D4
	bmi _0803FE20
	lsls r3, r2, #0x1e
	bpl _0803FE38
_0803FE20:
	str r2, [r0]
	str r1, [r0, #4]
	movs r1, #0xff
	adds r1, #1
	mov r2, ip
	orrs r1, r2
	movs r2, #1
	lsls r2, r2, #0x1f
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _0803FE4C
_0803FE38:
	str r2, [r0]
	str r1, [r0, #4]
	movs r1, #0x80
	mov r2, ip
	orrs r1, r2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0803FE4C:
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [sp, #8]
	lsls r2, r2, #3
	strh r0, [r1, r2]
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	strh r0, [r1, #2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	strh r5, [r0, #4]
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	strh r6, [r0, #6]
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803FE74: .4byte gUnknown_03003EB4
_0803FE78: .4byte 0x04000080
_0803FE7C: .4byte 0x040000D4

	thumb_func_start sub_803FE80
sub_803FE80: @ 0x0803FE80
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0]
	adds r7, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x13
	ldr r6, _0803FEF4 @ =gUnknown_03003EA0
	bpl _0803FE98
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800C1CA
_0803FE98:
	str r7, [r4, #0x10]
	movs r7, #1
	adds r0, r4, #0
	str r5, [r4, #0x18]
	bl sub_80003F4
	adds r0, r4, #0
	bl sub_8000324
	ldr r0, [r5, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0803FEB6
	movs r7, #0
_0803FEB6:
	ldrh r0, [r4, #0x26]
	movs r1, #1
	lsls r1, r1, #0xd
	bics r0, r1
	lsls r1, r7, #0x1f
	lsrs r1, r1, #0x12
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _0803FEE4
	adds r1, r4, #0
	ldr r0, [r6]
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
_0803FEE4:
	movs r1, #1
	ldr r0, [r4]
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0803FEF4: .4byte gUnknown_03003EA0

	thumb_func_start sub_803FEF8
sub_803FEF8: @ 0x0803FEF8
	cmp r0, #0
	beq _0803FF14
	lsls r3, r0, #0x1b
	lsrs r3, r3, #0x1b
	movs r2, #1
	lsls r2, r3
	lsrs r0, r0, #5
	lsls r0, r0, #2
	cmp r1, #0
	ldr r3, _0803FF20 @ =gUnknown_03003478
	beq _0803FF16
	ldr r1, [r3, r0]
	orrs r1, r2
	str r1, [r3, r0]
_0803FF14:
	bx lr
_0803FF16:
	ldr r1, [r3, r0]
	bics r1, r2
	str r1, [r3, r0]
	bx lr
	.align 2, 0
_0803FF20: .4byte gUnknown_03003478

	thumb_func_start sub_803FF24
sub_803FF24: @ 0x0803FF24
	push {r4, r5}
	ldr r3, [r1]
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	subs r4, r3, r4
	ldr r3, [r1, #4]
	adds r2, r0, #0
	subs r3, r3, r5
	ldr r5, [r0, #0x34]
	adds r2, #0x34
	adds r5, r5, r4
	str r5, [r0, #0x34]
	ldr r5, [r0, #0x38]
	adds r5, r5, r3
	str r5, [r2, #4]
	ldr r5, [r2, #8]
	adds r4, r5, r4
	str r4, [r2, #8]
	ldr r4, [r2, #0xc]
	adds r3, r4, r3
	str r3, [r2, #0xc]
	ldr r3, [r1]
	ldr r1, [r1, #4]
	movs r2, #0xff
	str r1, [r0, #0x30]
	str r3, [r0, #0x2c]
	ldr r1, [r0]
	adds r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5}
	bx lr

	thumb_func_start sub_803FF64
sub_803FF64: @ 0x0803FF64
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, [r0, #0x14]
	ldr r6, _0804002C @ =gUnknown_03003EA0
	ldr r0, [r1, #4]
	lsls r0, r0, #0x1f
	bpl _0803FFDC
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0803FF7E
	ldr r5, [r4, #0x48]
	b _0803FF80
_0803FF7E:
	ldr r5, [r4, #0x10]
_0803FF80:
	ldr r0, _0804002C @ =gUnknown_03003EA0
	cmp r5, #0
	ldr r0, [r0]
	beq _0803FFB8
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _0803FFA2
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r1, r0, r1
_0803FFA2:
	ldr r1, [r1, #0xc]
	ldr r0, [r6]
	lsls r2, r1, #0x1c
	ldr r1, [r4, #0x14]
	lsrs r2, r2, #0x1c
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	bl sub_800C0EC
	b _0803FFC4
_0803FFB8:
	ldr r1, [r1]
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x1b
	movs r2, #1
	bl sub_800C0EC
_0803FFC4:
	ldr r0, [r4, #0x14]
	movs r2, #0x1f
	ldr r1, [r0]
	lsls r2, r2, #8
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x14]
	adds r0, #4
	ldr r1, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r0]
_0803FFDC:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0803FFE6
	ldr r5, [r4, #0x48]
	b _0803FFE8
_0803FFE6:
	ldr r5, [r4, #0x10]
_0803FFE8:
	cmp r5, #0
	beq _0804001A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _08040008
	ldr r0, [r6]
	bl sub_8000D5A
	ldr r0, [r0, #0x14]
	ldr r1, [r5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
_08040008:
	ldr r0, [r0, #4]
	ldr r1, _08040030 @ =0x00000FFF
	lsrs r0, r0, #0x14
	cmp r0, r1
	beq _0804001A
	ldr r0, [r6]
	ldr r1, [r4, #0x14]
	bl sub_800C164
_0804001A:
	ldr r0, [r6]
	ldr r1, [r4, #0x14]
	adds r2, r7, #0
	bl sub_800CD04
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0
_0804002C: .4byte gUnknown_03003EA0
_08040030: .4byte 0x00000FFF

	thumb_func_start sub_8040034
sub_8040034: @ 0x08040034
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r5, #0x80
	lsls r2, r0, #0x10
	lsls r3, r1, #0x10
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	str r2, [r4, #0x2c]
	str r3, [r4, #0x30]
	subs r1, r3, r1
	ldr r3, [r4, #0x34]
	subs r0, r2, r0
	adds r3, r3, r0
	str r3, [r4, #0x34]
	ldr r3, [r4, #0x38]
	adds r2, r4, #0
	adds r3, r3, r1
	str r3, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	adds r2, #0x34
	adds r0, r3, r0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	lsls r6, r5, #2
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r4, #0x3c]
	ldr r1, _08040100 @ =gUnknown_03003EA0
	cmp r0, #0
	blt _0804008E
	movs r2, #0xf
	ldr r0, [r4, #0x34]
	lsls r2, r2, #0x14
	cmp r0, r2
	bge _0804008E
	ldr r0, [r4, #0x40]
	cmp r0, #0
	blt _0804008E
	movs r2, #5
	ldr r0, [r4, #0x38]
	lsls r2, r2, #0x15
	cmp r0, r2
	blt _080400AA
_0804008E:
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _080400A4
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4]
_080400A4:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080400AA:
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bpl _080400C6
	ldr r0, [r1]
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_080400C6:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	b _080400A4
	.align 2, 0
_08040100: .4byte gUnknown_03003EA0

	thumb_func_start sub_8040104
sub_8040104: @ 0x08040104
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x44]
	movs r7, #0
	adds r6, r2, #0
	adds r5, r1, #0
	cmp r0, #0
	bne _0804012E
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08040126
	adds r3, r7, #0
	movs r2, #0
	ldr r1, [r4, #0x48]
	bl sub_8041274
	b _0804012C
_08040126:
	ldr r0, [r4, #0x48]
	bl sub_803DA4C
_0804012C:
	str r7, [r4, #0x48]
_0804012E:
	strh r5, [r4, #0x20]
	strh r6, [r4, #0x1e]
	strh r5, [r4, #0x2a]
	strh r6, [r4, #0x28]
	str r7, [r4, #0x24]
	ldrh r0, [r4, #0xe]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_8040148
sub_8040148: @ 0x08040148
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r1, r2, #0
	ldrh r2, [r4, #0x26]
	ldr r0, _080401BC @ =gUnknown_03003EA0
	movs r7, #3
	lsls r7, r7, #8
	movs r6, #0x10
	lsls r3, r2, #0x16
	cmp r5, #0
	ldr r0, [r0]
	bne _08040186
	lsrs r1, r3, #0x1e
	beq _08040180
	ldrh r1, [r4, #0x28]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1b
	bl sub_800C4F0
	ldrh r0, [r4, #0x26]
	movs r1, #0x80
	bics r0, r7
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	bics r0, r6
	orrs r0, r1
	str r0, [r4]
_08040180:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
_08040186:
	lsrs r2, r3, #0x1e
	bne _080401A4
	bl sub_800C482
	ldrh r1, [r4, #0x28]
	movs r2, #0x1f
	lsls r2, r2, #9
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x12
	bics r1, r2
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_080401A4:
	ldrh r0, [r4, #0x26]
	lsls r1, r5, #0x1e
	lsrs r1, r1, #0x16
	bics r0, r7
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4]
	b _08040180
	.align 2, 0
_080401BC: .4byte gUnknown_03003EA0

	thumb_func_start sub_80401C0
sub_80401C0: @ 0x080401C0
	ldrh r2, [r0, #0x2a]
	movs r3, #3
	lsls r3, r3, #0xa
	bics r2, r3
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x1e
	lsls r3, r3, #0xa
	orrs r2, r3
	strh r2, [r0, #0x2a]
	strb r1, [r0, #5]
	ldr r1, [r0]
	lsls r2, r1, #0x16
	bmi _080401E0
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0]
_080401E0:
	bx lr
	.align 2, 0

	thumb_func_start sub_80401E4
sub_80401E4: @ 0x080401E4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08040258 @ =gUnknown_03003EB8
	adds r2, r1, #0
	ldr r1, [r4]
	ldr r0, [r0]
	ldr r5, _08040254 @ =gUnknown_03003EA0
	beq _0804022C
	lsls r1, r1, #0x1f
	bmi _08040226
	adds r1, r4, #0
	bl sub_80011D8
	ldr r0, [r4]
	lsls r0, r0, #0x16
	bmi _08040212
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08040212
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800CD58
_08040212:
	ldr r0, [r4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4]
	lsls r1, r0, #0x1e
	bpl _08040226
	movs r1, #0xff
	adds r1, #1
	orrs r0, r1
	str r0, [r4]
_08040226:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
_0804022C:
	lsls r1, r1, #0x1f
	bpl _08040226
	adds r1, r4, #0
	bl sub_8001232
	ldr r0, [r4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	str r0, [r4]
	lsls r0, r0, #0x16
	bmi _08040226
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08040226
	adds r1, r4, #0
	ldr r0, [r5]
	bl sub_800CD28
	b _08040226
	.align 2, 0
_08040254: .4byte gUnknown_03003EA0
_08040258: .4byte gUnknown_03003EB8

	thumb_func_start sub_804025C
sub_804025C: @ 0x0804025C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r0, #0x3c]
	ldr r0, _080402F4 @ =gUnknown_03003EA0
	movs r5, #0x80
	lsls r6, r5, #2
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r2, #0
	blt _0804028A
	movs r3, #0xf
	ldr r2, [r4, #0x34]
	lsls r3, r3, #0x14
	cmp r2, r3
	bge _0804028A
	ldr r2, [r4, #0x40]
	cmp r2, #0
	blt _0804028A
	movs r3, #5
	ldr r2, [r4, #0x38]
	lsls r3, r3, #0x15
	cmp r2, r3
	blt _080402A2
_0804028A:
	lsls r1, r1, #0x16
	bmi _0804029C
	adds r1, r4, #0
	bl sub_800C1CA
	ldr r0, [r4]
	orrs r0, r6
	orrs r0, r5
	str r0, [r4]
_0804029C:
	pop {r4, r5, r6}
	pop {r3}
	bx r3
_080402A2:
	lsls r1, r1, #0x16
	bpl _080402BA
	adds r1, r4, #0
	bl sub_800BE0E
	ldr r0, [r4]
	movs r1, #0x20
	bics r0, r6
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4]
_080402BA:
	ldr r0, [r4, #0x2c]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x28]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x17
	lsrs r1, r1, #9
	lsls r1, r1, #9
	lsrs r0, r0, #0x17
	orrs r0, r1
	strh r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	asrs r1, r0, #0x1f
	lsrs r1, r1, #0x10
	adds r0, r1, r0
	ldrh r1, [r4, #0x26]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
	b _0804029C
	.align 2, 0
_080402F4: .4byte gUnknown_03003EA0

	thumb_func_start sub_80402F8
sub_80402F8: @ 0x080402F8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x30]
	adds r5, r1, #0
	cmp r0, #0
	beq _0804033C
	ldrh r0, [r4, #0xe]
	lsls r1, r0, #0x1f
	bmi _08040314
	lsls r0, r0, #0x1c
	bpl _08040322
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _08040322
_08040314:
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x4c]
	adds r2, r2, r1
	adds r1, r5, #0
	bl sub_803B8CC
_08040322:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1c
	bpl _0804033C
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0804033C
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x58]
	adds r2, r2, r1
	adds r1, r5, #0
	bl sub_803B8CC
_0804033C:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1e
	bpl _08040350
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x50]
	adds r2, r2, r1
	adds r1, r5, #0
	bl sub_803B8CC
_08040350:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #0x1d
	bpl _08040364
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x54]
	adds r2, r2, r1
	adds r1, r5, #0
	bl sub_803B8CC
_08040364:
	pop {r3, r4, r5}
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_804036C
sub_804036C: @ 0x0804036C
	push {r3, lr}
	cmp r0, #0
	bne _08040378
	movs r0, #0x58
	bl sub_803D9F8
_08040378:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_8040380
sub_8040380: @ 0x08040380
	push {r3, lr}
	ldr r2, _0804039C @ =gUnknown_0803ECCC
	ldr r3, _080403A0 @ =gUnknown_03003E90
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08040394
	bl sub_803DA18
_08040394:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_0804039C: .4byte gUnknown_0803ECCC
_080403A0: .4byte gUnknown_03003E90

	thumb_func_start sub_80403A4
sub_80403A4: @ 0x080403A4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, #4
	bl sub_8012334
	cmp r5, #0
	beq _080403BA
	adds r0, r4, #0
	bl sub_803DA18
_080403BA:
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	arm_func_start sub_80403C0
sub_80403C0: @ 0x080403C0
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	popne {r3, r4, r5, lr}
	bne sub_803E128
	pop {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_80403EC
sub_80403EC: @ 0x080403EC
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	popne {r3, r4, r5, lr}
	bne sub_803E128
	pop {r3, r4, r5, lr}
	bx lr

	arm_func_start sub_8040418
sub_8040418: @ 0x08040418
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r1, #0
	mov r4, r0
	bl sub_803E11C
	cmp r5, #0
	movne r0, r4
	popne {r3, r4, r5, lr}
	bne sub_803E128
	pop {r3, r4, r5, lr}
	bx lr

	thumb_func_start sub_8040444
sub_8040444: @ 0x08040444
	bx pc
	.align 2, 0

	arm_func_start sub_8040448
sub_8040448: @ 0x08040448
	ldr r3, _08040464 @ =0x66666667
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #9
	rsb r1, r2, r1, asr #2
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040464: .4byte 0x66666667

	thumb_func_start sub_8040468
sub_8040468: @ 0x08040468
	bx pc
	.align 2, 0

	arm_func_start sub_804046C
sub_804046C: @ 0x0804046C
	ldr r3, _0804048C @ =0x88888889
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0xe
	add r1, r1, r0
	rsb r1, r2, r1, asr #3
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_0804048C: .4byte 0x88888889

	thumb_func_start sub_8040490
sub_8040490: @ 0x08040490
	bx pc
	.align 2, 0

	arm_func_start sub_8040494
sub_8040494: @ 0x08040494
	ldr r3, _080404B0 @ =0x66666667
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x13
	rsb r1, r2, r1, asr #3
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080404B0: .4byte 0x66666667

	thumb_func_start sub_80404B4
sub_80404B4: @ 0x080404B4
	bx pc
	.align 2, 0

	arm_func_start sub_80404B8
sub_80404B8: @ 0x080404B8
	ldr r3, _080404D4 @ =0x55555556
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #2
	rsb r1, r2, r1
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080404D4: .4byte 0x55555556

	thumb_func_start sub_80404D8
sub_80404D8: @ 0x080404D8
	bx pc
	.align 2, 0

	arm_func_start sub_80404DC
sub_80404DC: @ 0x080404DC
	ldr r3, _080404FC @ =0xB60B60B7
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	ldr r3, _08040500 @ =0xFFFFFE98
	add r1, r1, r0
	rsb r1, r2, r1, asr #8
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080404FC: .4byte 0xB60B60B7
_08040500: .4byte 0xFFFFFE98

	thumb_func_start sub_8040504
sub_8040504: @ 0x08040504
	bx pc
	.align 2, 0

	arm_func_start sub_8040508
sub_8040508: @ 0x08040508
	ldr r3, _08040524 @ =0x2E8BA2E9
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x57
	rsb r1, r2, r1, asr #4
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040524: .4byte 0x2E8BA2E9

	thumb_func_start sub_8040528
sub_8040528: @ 0x08040528
	bx pc
	.align 2, 0

	arm_func_start sub_804052C
sub_804052C: @ 0x0804052C
	ldr r3, _0804054C @ =0xB60B60B7
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x59
	add r1, r1, r0
	rsb r1, r2, r1, asr #6
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_0804054C: .4byte 0xB60B60B7

	thumb_func_start sub_8040550
sub_8040550: @ 0x08040550
	bx pc
	.align 2, 0

	arm_func_start sub_8040554
sub_8040554: @ 0x08040554
	ldr r3, _08040570 @ =0x2AAAAAAB
	asr r2, r0, #0x1f
	smull ip, r1, r3, r0
	mvn r3, #0x5f
	rsb r1, r2, r1, asr #4
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040570: .4byte 0x2AAAAAAB

	thumb_func_start sub_8040574
sub_8040574: @ 0x08040574
	bx pc
	.align 2, 0

	arm_func_start sub_8040578
sub_8040578: @ 0x08040578
	ldr r3, _08040590 @ =0xCCCCCCCD
	umull r1, r2, r3, r0
	mvn r3, #9
	lsr r1, r2, #3
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040590: .4byte 0xCCCCCCCD

	thumb_func_start sub_8040594
sub_8040594: @ 0x08040594
	bx pc
	.align 2, 0

	arm_func_start sub_8040598
sub_8040598: @ 0x08040598
	ldr r3, _080405B0 @ =0x51EB851F
	umull r1, r2, r3, r0
	mvn r3, #0x63
	lsr r1, r2, #5
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080405B0: .4byte 0x51EB851F

	thumb_func_start sub_80405B4
sub_80405B4: @ 0x080405B4
	bx pc
	.align 2, 0

	arm_func_start sub_80405B8
sub_80405B8: @ 0x080405B8
	ldr r3, _080405D0 @ =0x10624DD3
	umull r1, r2, r3, r0
	ldr r3, _080405D4 @ =0xFFFFFC18
	lsr r1, r2, #6
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080405D0: .4byte 0x10624DD3
_080405D4: .4byte 0xFFFFFC18

	thumb_func_start sub_80405D8
sub_80405D8: @ 0x080405D8
	bx pc
	.align 2, 0

	arm_func_start sub_80405DC
sub_80405DC: @ 0x080405DC
	ldr r3, _080405F4 @ =0xAAAAAAAB
	umull r1, r2, r3, r0
	mvn r3, #0xb
	lsr r1, r2, #3
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080405F4: .4byte 0xAAAAAAAB

	thumb_func_start sub_80405F8
sub_80405F8: @ 0x080405F8
	bx pc
	.align 2, 0

	arm_func_start sub_80405FC
sub_80405FC: @ 0x080405FC
	ldr r3, _08040614 @ =0xFED954B7
	umull r1, r2, r3, r0
	ldr r3, _08040618 @ =0xFFFFBFB6
	lsr r1, r2, #0xe
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040614: .4byte 0xFED954B7
_08040618: .4byte 0xFFFFBFB6

	thumb_func_start sub_804061C
sub_804061C: @ 0x0804061C
	bx pc
	.align 2, 0

	arm_func_start sub_8040620
sub_8040620: @ 0x08040620
	ldr r3, _08040638 @ =0xCCCCCCCD
	umull r1, r2, r3, r0
	ldr r3, _0804063C @ =0xFFFFB000
	lsr r1, r2, #0xe
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040638: .4byte 0xCCCCCCCD
_0804063C: .4byte 0xFFFFB000

	thumb_func_start sub_8040640
sub_8040640: @ 0x08040640
	bx pc
	.align 2, 0

	arm_func_start sub_8040644
sub_8040644: @ 0x08040644
	ldr r3, _0804065C @ =0xAAAAAAAB
	umull r1, r2, r3, r0
	mvn r3, #2
	lsr r1, r2, #1
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_0804065C: .4byte 0xAAAAAAAB

	thumb_func_start sub_8040660
sub_8040660: @ 0x08040660
	bx pc
	.align 2, 0

	arm_func_start sub_8040664
sub_8040664: @ 0x08040664
	ldr r3, _0804067C @ =0x91A2B3C5
	umull r1, r2, r3, r0
	ldr r3, _08040680 @ =0xFFFFF1F0
	lsr r1, r2, #0xb
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_0804067C: .4byte 0x91A2B3C5
_08040680: .4byte 0xFFFFF1F0

	thumb_func_start sub_8040684
sub_8040684: @ 0x08040684
	bx pc
	.align 2, 0

	arm_func_start sub_8040688
sub_8040688: @ 0x08040688
	ldr r3, _080406A0 @ =0xCCCCCCCD
	umull r1, r2, r3, r0
	mvn r3, #4
	lsr r1, r2, #2
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080406A0: .4byte 0xCCCCCCCD

	thumb_func_start sub_80406A4
sub_80406A4: @ 0x080406A4
	bx pc
	.align 2, 0

	arm_func_start sub_80406A8
sub_80406A8: @ 0x080406A8
	ldr r3, _080406C0 @ =0xAAAAAAAB
	umull r1, r2, r3, r0
	mvn r3, #5
	lsr r1, r2, #2
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080406C0: .4byte 0xAAAAAAAB

	thumb_func_start sub_80406C4
sub_80406C4: @ 0x080406C4
	bx pc
	.align 2, 0

	arm_func_start sub_80406C8
sub_80406C8: @ 0x080406C8
	ldr r3, _080406E0 @ =0x88888889
	umull r1, r2, r3, r0
	mvn r3, #0x3b
	lsr r1, r2, #5
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_080406E0: .4byte 0x88888889

	thumb_func_start sub_80406E4
sub_80406E4: @ 0x080406E4
	bx pc
	.align 2, 0

	arm_func_start sub_80406E8
sub_80406E8: @ 0x080406E8
	ldr r3, _08040700 @ =0x80078071
	umull r1, r2, r3, r0
	ldr r3, _08040704 @ =0xFFFF000F
	lsr r1, r2, #0xf
	mla r0, r3, r1, r0
	bx lr
	.align 2, 0
_08040700: .4byte 0x80078071
_08040704: .4byte 0xFFFF000F

	thumb_func_start sub_8040708
sub_8040708: @ 0x08040708
	push {r4, lr}
	ldrh r2, [r1, #4]
	cmp r2, #0x20
	bhs _0804071A
	add r3, pc, #0x8 @ =_0804071C
	adds r3, r3, r2
	ldrh r3, [r3, r2]
	lsls r3, r3, #1
	add pc, r3
_0804071A:
	b _08040954
_0804071C:
	.byte 0x25, 0x00
_0804071E:
	.byte 0x20, 0x00
_08040720:
	.byte 0x20, 0x00
_08040722:
	.byte 0x20, 0x00
_08040724:
	.byte 0x28, 0x00
_08040726:
	.byte 0x35, 0x00
_08040728:
	.byte 0x35, 0x00
_0804072A:
	.byte 0x1C, 0x01
_0804072C:
	.byte 0x3E, 0x00
_0804072E:
	.byte 0x47, 0x00
_08040730:
	.byte 0x35, 0x00
_08040732:
	.byte 0x5B, 0x00
_08040734:
	.byte 0x63, 0x00
_08040736:
	.byte 0x6A, 0x00
_08040738:
	.byte 0x75, 0x00
_0804073A:
	.byte 0xC1, 0x00
_0804073C:
	.byte 0xD2, 0x00
_0804073E:
	.byte 0xE8, 0x00
_08040740:
	.byte 0x1C, 0x01
_08040742:
	.byte 0x1C, 0x01
_08040744:
	.byte 0xFD, 0x00
_08040746:
	.byte 0x0B, 0x01
_08040748:
	.byte 0x1C, 0x01
_0804074A:
	.byte 0x1C, 0x01
_0804074C:
	.byte 0x1C, 0x01
_0804074E:
	.byte 0x1C, 0x01
_08040750:
	.byte 0x1C, 0x01
_08040752:
	.byte 0x0F, 0x01
_08040754:
	.byte 0x1C, 0x01
_08040756:
	.byte 0x1C, 0x01
_08040758:
	.byte 0x1C, 0x01
_0804075A:
	.byte 0x1C, 0x01
loc_804075c:
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	lsls r1, r1, #3
	strh r1, [r0, #0x16]
_08040766:
	pop {r4}
	pop {r3}
	bx r3
loc_804076c:
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	lsrs r2, r1, #4
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r2, #0
	beq _0804077E
	strb r2, [r0, #0x19]
_0804077E:
	cmp r1, #0
	beq _08040766
	strb r1, [r0, #0x1a]
_08040784:
	b _08040766
loc_8040786:
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	rsbs r2, r1, #0
	cmp r1, #0x10
	blo _08040794
	lsrs r2, r1, #4
_08040794:
	strb r2, [r0, #0x18]
	b _08040766
loc_8040798:
	ldrh r1, [r1, #6]
	movs r2, #0x10
	lsrs r1, r1, #1
	adds r1, #0xc0
	strb r1, [r0, #0x10]
	ldrh r1, [r0, #4]
	orrs r1, r2
	strh r1, [r0, #4]
_080407A8:
	b _08040766
loc_80407aa:
	ldrb r2, [r1, #1]
	cmp r2, #0
	beq _08040766
	ldrh r1, [r1, #6]
	cmp r1, #0
	beq _08040766
	ldr r2, [r0, #0x48]
	lsls r1, r1, #8
	adds r1, r2, r1
	str r1, [r0, #0x48]
	ldr r2, [r0, #0x3c]
	cmp r1, r2
	bls _08040766
	ldr r3, [r0, #0x30]
_080407C6:
	ldr r1, [r0, #0x48]
	subs r1, r1, r3
	str r1, [r0, #0x48]
	cmp r1, r2
	bhi _080407C6
	b _08040766
loc_80407d2:
	ldrh r1, [r1, #6]
	ldr r0, _08040968 @ =gUnknown_03003BC8
	adds r1, #0xff
	strb r1, [r0, #7]
	ldr r1, [r0, #0x28]
	ldr r1, [r1]
	strh r1, [r0, #0xc]
_080407E0:
	b _08040766
loc_80407e2:
	ldrh r1, [r1, #6]
	movs r2, #0x10
	strb r1, [r0, #0xf]
	ldrh r1, [r0, #4]
	orrs r1, r2
	strh r1, [r0, #4]
	b _08040766
loc_80407f0:
	ldrh r0, [r1, #6]
	lsrs r1, r0, #4
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	lsls r1, r1, #1
	adds r0, r1, r0
	bl sub_8040C38
	b _08040766
loc_8040806:
	ldrh r1, [r1, #6]
	lsrs r4, r1, #4
	cmp r4, #0xf
	bhs _0804088E
	add r3, pc, #0x8 @ =_08040818
	ldrb r3, [r3, r4]
	lsls r3, r3, #1
	add pc, r3
	.align 2, 0
_08040818:
	.byte 0x3B
_08040819:
	.byte 0x3B
_0804081A:
	.byte 0x3B
_0804081B:
	.byte 0x3B
_0804081C:
	.byte 0x3B
_0804081D:
	.byte 0x08
_0804081E:
	.byte 0x3B
_0804081F:
	.byte 0x3B
_08040820:
	.byte 0x3B
_08040821:
	.byte 0x3B
_08040822:
	.byte 0x0C
_08040823:
	.byte 0x1C
_08040824:
	.byte 0x3B
_08040825:
	.byte 0x2B
_08040826:
	.byte 0x36, 0x00
loc_8040828:
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strh r1, [r0, #0x12]
_0804082E:
	b _08040766
loc_8040830:
	ldrb r2, [r0, #0xf]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r0, #0xf]
	cmp r1, #0x40
	ble _08040846
	movs r1, #0x40
	strb r1, [r0, #0xf]
_08040846:
	ldrh r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0, #4]
	b _08040766
loc_8040850:
	ldrb r2, [r0, #0xf]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	subs r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strb r1, [r0, #0xf]
	bpl _08040864
	movs r1, #0
	strb r1, [r0, #0xf]
_08040864:
	ldrh r1, [r0, #4]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0, #4]
_0804086C:
	b _08040766
loc_804086e:
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strb r1, [r0, #6]
	beq _08040784
	ldrh r2, [r0, #4]
	movs r3, #1
	orrs r2, r3
	strh r2, [r0, #4]
	adds r1, #0xff
	strb r1, [r0, #6]
	b _08040766
loc_8040884:
	lsls r0, r1, #0x1c
	ldr r1, _08040968 @ =gUnknown_03003BC8
	lsrs r0, r0, #0x1c
	strb r0, [r1, #5]
	b _08040766
_0804088E:
	ldr r0, _08040968 @ =gUnknown_03003BC8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080407A8
	adds r0, r2, #0
	bl sub_803B8CE
	b _08040766
loc_804089e:
	ldrh r0, [r1, #6]
	cmp r0, #0x10
	bhs _080408AA
	ldr r1, _08040968 @ =gUnknown_03003BC8
	strb r0, [r1, #4]
	b _08040766
_080408AA:
	ldr r4, _08040968 @ =gUnknown_03003BC8
	ldr r3, _0804096C @ =0x00333333
	strb r0, [r4, #0xb]
	muls r0, r3, r0
	lsrs r1, r0, #0x17
	ldr r0, _08040970 @ =gUnknown_03003520
	ldrh r0, [r0, #0x18]
	bl sub_803D46C
	strh r0, [r4, #0xe]
	b _08040766
loc_80408c0:
	ldrh r1, [r1, #6]
	ldr r3, _08040968 @ =gUnknown_03003BC8
	movs r2, #0
	strh r2, [r3, #0x12]
	strh r1, [r3, #0x16]
	ldr r1, _08040970 @ =gUnknown_03003520
	ldr r0, _08040974 @ =gUnknown_030037A0
	adds r1, #0x10
	ldrb r1, [r1, #0xf]
	cmp r1, #0
	beq _080407E0
	movs r3, #0x10
_080408D8:
	ldrh r2, [r0, #4]
	lsls r4, r2, #0x1f
	bmi _080408E2
	orrs r2, r3
	strh r2, [r0, #4]
_080408E2:
	subs r1, #1
	adds r0, #0x4c
	cmp r1, #0
	bne _080408D8
	b _08040766
loc_80408ec:
	ldrh r1, [r1, #6]
	rsbs r0, r1, #0
	cmp r1, #0x10
	blo _080408F6
	lsrs r0, r1, #4
_080408F6:
	ldr r2, _08040968 @ =gUnknown_03003BC8
	movs r3, #0xff
	ldrh r1, [r2, #0x16]
	adds r3, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r2, #0x16]
	cmp r1, r3
	bls _0804082E
	movs r1, #0
	cmp r0, #0
	blt _08040912
	adds r1, r3, #0
_08040912:
	strh r1, [r2, #0x16]
	b _08040766
loc_8040916:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0804092C
	ldrb r1, [r1, #0x14]
	cmp r1, #0
	beq _0804092C
	ldrh r1, [r0, #4]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0, #4]
	b _08040766
_0804092C:
	movs r1, #1
	strh r1, [r0, #4]
	b _08040766
loc_8040932:
	ldrh r1, [r1, #6]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x20]
	b _08040766
loc_804093a:
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	strb r1, [r0, #7]
	beq _08040948
	adds r1, #0xff
	strb r1, [r0, #7]
_08040948:
	ldr r1, [r0, #8]
	adds r1, #0x7c
	str r1, [r0, #0x48]
	movs r1, #0
	str r1, [r0, #0x40]
	b _08040766
_08040954:
	ldr r0, _08040968 @ =gUnknown_03003BC8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0804086C
	ldrh r1, [r1, #6]
	adds r0, r2, #0
	bl sub_803B8CE
	b _08040766
	.align 2, 0
_08040968: .4byte gUnknown_03003BC8
_0804096C: .4byte 0x00333333
_08040970: .4byte gUnknown_03003520
_08040974: .4byte gUnknown_030037A0

	thumb_func_start sub_8040978
sub_8040978: @ 0x08040978
	push {r4}
	ldrh r1, [r0, #4]
	lsls r2, r1, #0x1c
	bpl _080409A6
	movs r3, #0xe
	ldrsb r4, [r0, r3]
	ldrb r2, [r0, #0xc]
	movs r3, #0x12
	adds r2, r2, r4
	ldrsh r4, [r0, r3]
	lsls r2, r2, #7
	movs r3, #0x14
	adds r2, r2, r4
	ldrsh r4, [r0, r3]
	ldr r3, _080409D8 @ =gUnknown_0804AF2C
	adds r2, r2, r4
	lsls r2, r2, #1
	ldrh r2, [r3, r2]
	ldr r3, _080409DC @ =gUnknown_03003520
	ldrh r3, [r3, #0x1a]
	muls r3, r2, r3
	lsrs r2, r3, #8
	str r2, [r0, #0x44]
_080409A6:
	lsls r2, r1, #0x1b
	bpl _080409CE
	movs r3, #0xf
	ldrsb r4, [r0, r3]
	ldr r3, _080409E0 @ =gUnknown_03003BC8
	ldrh r2, [r0, #0x22]
	ldrh r3, [r3, #0x16]
	muls r4, r3, r4
	asrs r3, r4, #8
	lsls r4, r1, #0x1d
	bpl _080409C8
	muls r3, r2, r3
	ldr r2, [r0, #0x1c]
	muls r3, r2, r3
	lsrs r2, r3, #0x16
	str r2, [r0, #0x38]
	b _080409CE
_080409C8:
	muls r3, r2, r3
	lsrs r2, r3, #6
	str r2, [r0, #0x38]
_080409CE:
	movs r2, #0x18
	bics r1, r2
	strh r1, [r0, #4]
	pop {r4}
	bx lr
	.align 2, 0
_080409D8: .4byte gUnknown_0804AF2C
_080409DC: .4byte gUnknown_03003520
_080409E0: .4byte gUnknown_03003BC8

	thumb_func_start sub_80409E4
sub_80409E4: @ 0x080409E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _08040C28 @ =gUnknown_03003530
	ldr r5, _08040C30 @ =gUnknown_03003BF8
	ldrb r6, [r0, #0xf]
	ldr r4, _08040C2C @ =gUnknown_030037A0
	cmp r6, #0
	beq _08040A86
_080409F2:
	ldrh r0, [r5, #4]
	cmp r0, #5
	beq _08040AC4
	bgt _08040A16
	cmp r0, #5
	bhs _08040A08
	add r3, pc, #0xC @ =_08040A0C
	adds r3, r3, r0
	ldrh r3, [r3, r0]
	lsls r3, r3, #1
	add pc, r3
_08040A08:
	b _08040A76
	.align 2, 0
_08040A0C:
	.byte 0x41, 0x00
_08040A0E:
	.byte 0x63, 0x00
_08040A10:
	.byte 0x6D, 0x00
_08040A12:
	.byte 0x89, 0x00
_08040A14:
	.byte 0xB2, 0x00
_08040A16:
	cmp r0, #0xa
	beq _08040AE2
	bgt _08040A4E
	cmp r0, #6
	beq _08040AF6
	cmp r0, #7
	bne _08040A76
	ldrb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x19]
	ldr r3, _08040C34 @ =gUnknown_0804AEAC
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x19
	ldrh r0, [r3, r0]
	ldrb r1, [r4, #0x1a]
	muls r1, r0, r1
	asrs r0, r1, #5
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble _08040B2C
	movs r0, #0x40
	strb r0, [r4, #0xf]
	b _08040BD6
_08040A4E:
	cmp r0, #0xe
	beq _08040B2E
	cmp r0, #0x1b
	bne _08040A76
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08040A70
	ldr r0, [r4, #8]
	adds r0, #0x7c
	str r0, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x40]
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r4, #7]
	beq _08040A76
_08040A70:
	ldrb r0, [r4, #7]
	adds r0, #0xff
	strb r0, [r4, #7]
_08040A76:
	adds r0, r4, #0
	bl sub_8040978
	subs r6, #1
	adds r4, #0x4c
	adds r5, #8
	cmp r6, #0
	bne _080409F2
_08040A86:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
loc_8040a8c:
	ldrh r7, [r5, #6]
	cmp r7, #0
	beq _08040A76
	ldr r0, _08040C30 @ =gUnknown_03003BF8
	subs r0, #0x30
	ldrb r0, [r0, #3]
	movs r1, #3
	bl sub_803D470
	cmp r0, #0
	beq _08040ABE
	cmp r0, #1
	beq _08040AC6
	cmp r0, #2
	bne _08040AB4
	ldrb r0, [r4, #0xd]
	lsls r1, r7, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r0, r1
	strb r0, [r4, #0xc]
_08040AB4:
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040ABE:
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	b _08040AB4
_08040AC4:
	b _08040AF8
_08040AC6:
	ldrb r0, [r4, #0xd]
	lsrs r1, r7, #4
	adds r0, r0, r1
	strb r0, [r4, #0xc]
	b _08040AB4
loc_8040ad0:
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040AE2:
	b _08040BE0
loc_8040ae4:
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x16]
	subs r0, r0, r1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040AF6:
	b _08040B90
_08040AF8:
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040B0C
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040B14
_08040B0C:
	cmp r0, #0x40
	ble _08040B14
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040B14:
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
loc_8040b1c:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08040A76
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0xd]
	cmp r1, r2
	beq _08040A76
	b _08040B30
_08040B2C:
	b _08040BCE
_08040B2E:
	b _08040C06
_08040B30:
	lsls r7, r1, #7
	mov ip, r7
	lsls r7, r2, #7
	movs r3, #0x14
	ldrsh r2, [r4, r3]
	adds r3, r7, r2
	mov r7, ip
	subs r3, r7, r3
	rsbs r7, r3, #0
	cmp r3, #0
	blt _08040B48
	adds r7, r3, #0
_08040B48:
	cmp r7, r0
	ble _08040B5C
	cmp r3, #0
	ble _08040B56
	adds r0, r2, r0
	strh r0, [r4, #0x14]
	b _08040B64
_08040B56:
	subs r0, r2, r0
	strh r0, [r4, #0x14]
	b _08040B64
_08040B5C:
	movs r0, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0xd]
_08040B64:
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
_08040B6C:
	b _08040A76
loc_8040b6e:
	ldrb r0, [r4, #0x1b]
	ldr r3, _08040C34 @ =gUnknown_0804AEAC
	ldrb r1, [r4, #0x1a]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	ldrsh r2, [r3, r2]
	muls r1, r2, r1
	asrs r1, r1, #5
	strh r1, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	ldrh r0, [r4, #4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040B90:
	ldrb r0, [r4, #0x1b]
	ldr r3, _08040C34 @ =gUnknown_0804AEAC
	ldrb r1, [r4, #0x1a]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x19
	ldrsh r2, [r3, r2]
	muls r1, r2, r1
	asrs r1, r1, #5
	strh r1, [r4, #0x14]
	ldrb r1, [r4, #0x19]
	adds r0, r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040BBC
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040BC4
_08040BBC:
	cmp r0, #0x40
	ble _08040BC4
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040BC4:
	ldrh r0, [r4, #4]
	movs r1, #0x18
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040BCE:
	cmp r0, #0
	bge _08040BD6
	movs r0, #0
	strb r0, [r4, #0xf]
_08040BD6:
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040BE0:
	ldrb r0, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040BF4
	movs r0, #0
	strb r0, [r4, #0xf]
	b _08040BFC
_08040BF4:
	cmp r0, #0x40
	ble _08040BFC
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040BFC:
	ldrh r0, [r4, #4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040A76
_08040C06:
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	cmp r0, #0xd
	bne _08040B6C
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08040B6C
	adds r0, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #6]
	bne _08040B6C
	ldrh r0, [r4, #4]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	strh r0, [r4, #4]
	b _08040A76
	.align 2, 0
_08040C28: .4byte gUnknown_03003530
_08040C2C: .4byte gUnknown_030037A0
_08040C30: .4byte gUnknown_03003BF8
_08040C34: .4byte gUnknown_0804AEAC

	thumb_func_start sub_8040C38
sub_8040C38: @ 0x08040C38
	ldr r2, _08040C74 @ =gUnknown_03003BC8
	ldrb r1, [r2, #7]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strb r1, [r2, #7]
	ldrb r3, [r2, #8]
	cmp r1, r3
	bls _08040C62
	ldrh r1, [r2]
	lsls r3, r1, #0x17
	bmi _08040C5C
	ldrb r1, [r2, #0xa]
	adds r1, #1
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #9]
	strb r1, [r2, #7]
	b _08040C62
_08040C5C:
	movs r3, #8
	orrs r1, r3
	strh r1, [r2]
_08040C62:
	strh r0, [r2, #0xc]
	ldrb r1, [r2, #7]
	ldr r0, [r2, #0x18]
	ldrb r0, [r0, r1]
	ldr r1, [r2, #0x24]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r2, #0x28]
	bx lr
	.align 2, 0
_08040C74: .4byte gUnknown_03003BC8

	thumb_func_start sub_8040C78
sub_8040C78: @ 0x08040C78
	ldr r2, _08041010 @ =gUnknown_03003BC8
	push {r4, r5, r6, r7, lr}
	ldrb r0, [r2, #5]
	sub sp, #0xc
	cmp r0, #0
	beq _08040C90
	adds r0, #0xff
	strb r0, [r2, #5]
_08040C88:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08040C90:
	ldr r2, _08041010 @ =gUnknown_03003BC8
	ldr r6, _08041010 @ =gUnknown_03003BC8
	ldrh r0, [r2, #0xc]
	adds r6, #0x30
	ldr r4, _08041018 @ =gUnknown_030037A0
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	ldr r1, [r2, #0x28]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, _08041014 @ =gUnknown_03003530
	cmp r0, #0
	str r1, [sp, #8]
	beq _08040D92
	ldrb r3, [r2, #6]
	ldr r1, [r2, #0x1c]
	adds r3, r3, r0
	adds r5, r1, r0
	adds r7, r1, r3
	movs r1, #0
	movs r0, #0x80
	str r0, [sp, #4]
	str r1, [sp]
	ldrb r0, [r2, #2]
	cmp r0, #0
	bls _08040D94
_08040CC6:
	ldrb r2, [r5]
	ldr r3, [sp, #4]
	movs r1, #0
	adds r0, r1, #0
	ands r2, r3
	beq _08040CD6
	ldrb r0, [r7]
	adds r7, #1
_08040CD6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r6]
	mov lr, r0
	ldr r0, [sp, #4]
	cmp r0, #1
	bls _08040CEA
	ldr r0, [sp, #4]
	lsrs r0, r0, #1
	b _08040CEE
_08040CEA:
	movs r0, #0x80
	adds r5, #1
_08040CEE:
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq _08040CFA
	ldrb r2, [r7]
	adds r7, #1
_08040CFA:
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	strb r2, [r6, #1]
	mov ip, r2
	cmp r0, #1
	bls _08040D0A
	lsrs r0, r0, #1
	b _08040D0E
_08040D0A:
	movs r0, #0x80
	adds r5, #1
_08040D0E:
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq _08040D1A
	ldrb r2, [r7]
	adds r7, #1
_08040D1A:
	strh r2, [r6, #2]
	cmp r0, #1
	bls _08040D24
	lsrs r0, r0, #1
	b _08040D28
_08040D24:
	movs r0, #0x80
	adds r5, #1
_08040D28:
	ldrb r3, [r5]
	adds r2, r1, #0
	ands r3, r0
	beq _08040D34
	ldrb r2, [r7]
	adds r7, #1
_08040D34:
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r2, #0
	cmp r0, #1
	strh r2, [r6, #4]
	bls _08040D44
	lsrs r0, r0, #1
	b _08040D48
_08040D44:
	movs r0, #0x80
	adds r5, #1
_08040D48:
	ldrb r2, [r5]
	movs r1, #0
	ands r2, r0
	beq _08040D54
	ldrb r1, [r7]
	adds r7, #1
_08040D54:
	strh r1, [r6, #6]
	cmp r0, #1
	bls _08040D60
	lsrs r0, r0, #1
	str r0, [sp, #4]
	b _08040D66
_08040D60:
	movs r0, #0x80
	str r0, [sp, #4]
	adds r5, #1
_08040D66:
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xf]
	ldr r1, [sp]
	cmp r0, r1
	bls _08040E3A
	mov r0, ip
	cmp r0, #0
	mov ip, r3
	mov r1, lr
	beq _08040DFC
	ldr r2, _08041010 @ =gUnknown_03003BC8
	lsls r0, r0, #2
	ldr r2, [r2, #0x20]
	adds r0, r2, r0
	subs r0, #0x40
	ldr r0, [r0, #0x3c]
	str r0, [r4, #8]
	ldrb r2, [r0, #0xc]
	strb r2, [r4, #0xf]
	ldrb r2, [r0, #0xd]
	lsrs r2, r2, #1
	b _08040D96
_08040D92:
	b _08040FB6
_08040D94:
	b _08040FF8
_08040D96:
	adds r2, #0xc0
	strb r2, [r4, #0x10]
	ldrh r2, [r4, #4]
	movs r3, #0x10
	orrs r2, r3
	strh r2, [r4, #4]
	ldrb r2, [r0, #0xf]
	cmp r1, #0
	strb r2, [r4, #0xe]
	beq _08040DE0
	mov r2, ip
	cmp r2, #3
	beq _08040E18
	mov r2, ip
	cmp r2, #5
	beq _08040E18
	ldr r2, [r0, #8]
	adds r1, r0, #0
	adds r1, #0x7c
	cmp r2, #0
	str r2, [r4, #0x30]
	beq _08040DCC
	adds r3, r0, #4
	ldm r3, {r2, r3}
	adds r2, r2, r3
	adds r2, r2, r1
	b _08040DD0
_08040DCC:
	ldr r2, [r0]
	adds r2, r2, r1
_08040DD0:
	movs r3, #0xe
	ldrsb r0, [r0, r3]
	strh r0, [r4, #0x12]
	str r1, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x40]
	str r2, [r4, #0x3c]
	b _08040E18
_08040DE0:
	ldr r0, _0804101C @ =0x0000FFFF
	movs r1, #0
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	movs r0, #0x40
	strh r0, [r4, #0x22]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x28]
	movs r0, #0x20
	strh r0, [r4, #0x2a]
	strh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	b _08040E18
_08040DFC:
	cmp r1, #0
	beq _08040E18
	cmp r1, #0x61
	beq _08040E18
	mov r2, ip
	cmp r2, #0
	bne _08040E18
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08040E18
	adds r0, #0x7c
	str r0, [r4, #0x48]
	movs r1, #0
	str r1, [r4, #0x40]
_08040E18:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08040E7C
	ldrh r1, [r6, #4]
	cmp r0, #0x61
	bne _08040E42
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08040E3C
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _08040E3C
	ldrh r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040E7C
_08040E3A:
	b _08040FA0
_08040E3C:
	movs r0, #1
	strh r0, [r4, #4]
	b _08040E7C
_08040E42:
	cmp r1, #3
	beq _08040E7A
	cmp r1, #5
	beq _08040E7A
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	movs r1, #0
	strh r1, [r4, #0x14]
	ldr r0, _0804101C @ =0x0000FFFF
	strb r1, [r4, #0x1b]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	movs r0, #0x40
	strh r0, [r4, #0x22]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x28]
	movs r0, #0x20
	strh r0, [r4, #0x2a]
	strh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	ldrh r0, [r4, #4]
	movs r1, #5
	bics r0, r1
	movs r1, #0x18
	orrs r0, r1
	strh r0, [r4, #4]
	b _08040E7C
_08040E7A:
	strb r0, [r4, #0x11]
_08040E7C:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _08040F06
	adds r1, r0, #0
	subs r1, #0x10
	cmp r1, #0x40
	bhi _08040E96
	strb r1, [r4, #0xf]
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F06
_08040E96:
	adds r1, r0, #0
	subs r1, #0x61
	cmp r1, #0xe
	bhi _08040EBC
	ldrb r1, [r4, #0xf]
	adds r0, #0x20
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040EB2
	movs r1, #0
	strb r1, [r4, #0xf]
_08040EB2:
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F06
_08040EBC:
	adds r1, r0, #0
	subs r1, #0x71
	cmp r1, #0xe
	bhi _08040EE4
	ldrb r1, [r4, #0xf]
	adds r0, #0x10
	lsls r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble _08040EDA
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040EDA:
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F06
_08040EE4:
	adds r1, r0, #0
	subs r1, #0x81
	cmp r1, #0xe
	bhi _08040F08
	ldrb r1, [r4, #0xf]
	adds r0, #0x80
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	bpl _08040EFE
	movs r1, #0
	strb r1, [r4, #0xf]
_08040EFE:
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
_08040F06:
	b _08040F92
_08040F08:
	adds r1, r0, #0
	subs r1, #0x91
	cmp r1, #0xe
	bhi _08040F2E
	ldrb r1, [r4, #0xf]
	adds r0, r1, r0
	adds r0, #0x70
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0xf]
	cmp r0, #0x40
	ble _08040F24
	movs r0, #0x40
	strb r0, [r4, #0xf]
_08040F24:
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F92
_08040F2E:
	adds r1, r0, #0
	subs r1, #0xc0
	cmp r1, #0xf
	bhi _08040F46
	lsls r0, r1, #3
	adds r0, #0xc0
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F92
_08040F46:
	adds r1, r0, #0
	subs r1, #0xd1
	cmp r1, #0xe
	bhi _08040F6E
	ldrb r1, [r4, #0x10]
	adds r0, #0x30
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x3f
	mvns r1, r1
	cmp r0, r1
	strb r0, [r4, #0x10]
	bge _08040F64
	strb r1, [r4, #0x10]
_08040F64:
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
	b _08040F92
_08040F6E:
	adds r1, r0, #0
	subs r1, #0xe1
	cmp r1, #0xe
	bhi _08040F92
	ldrb r1, [r4, #0x10]
	adds r0, r1, r0
	adds r0, #0x20
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r4, #0x10]
	cmp r0, #0x40
	ble _08040F8A
	movs r0, #0x40
	strb r0, [r4, #0x10]
_08040F8A:
	ldrh r0, [r4, #4]
	movs r3, #0x10
	orrs r0, r3
	strh r0, [r4, #4]
_08040F92:
	adds r1, r6, #0
	adds r0, r4, #0
	bl sub_8040708
	adds r0, r4, #0
	bl sub_8040978
_08040FA0:
	ldr r1, [sp]
	ldr r2, _08041010 @ =gUnknown_03003BC8
	adds r1, #1
	str r1, [sp]
	ldrb r0, [r2, #2]
	adds r6, #8
	adds r4, #0x4c
	cmp r0, r1
	bls _08040FB4
	b _08040CC6
_08040FB4:
	b _08040FF8
_08040FB6:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08041010 @ =gUnknown_03003BC8
	movs r1, #5
	ldrb r0, [r0, #2]
	lsls r1, r1, #0x18
	lsls r0, r0, #3
	lsrs r0, r0, #2
	orrs r0, r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl sub_803D468
	ldr r0, [sp, #8]
	movs r3, #0x4c
	ldrb r0, [r0, #0xf]
	muls r0, r3, r0
	adds r0, r0, r4
	cmp r0, r4
	bls _08040FF8
	adds r5, r4, #0
_08040FE2:
	adds r0, r4, #0
	bl sub_8040978
	ldr r0, [sp, #8]
	movs r3, #0x4c
	ldrb r0, [r0, #0xf]
	adds r4, #0x4c
	muls r0, r3, r0
	adds r0, r0, r5
	cmp r0, r4
	bhi _08040FE2
_08040FF8:
	ldr r2, _08041010 @ =gUnknown_03003BC8
	ldr r1, [r2, #0x28]
	ldrh r0, [r2, #0xc]
	ldr r1, [r1]
	cmp r0, r1
	bhs _08041006
	b _08040C88
_08041006:
	movs r0, #0
	bl sub_8040C38
	b _08040C88
	.align 2, 0
_08041010: .4byte gUnknown_03003BC8
_08041014: .4byte gUnknown_03003530
_08041018: .4byte gUnknown_030037A0
_0804101C: .4byte 0x0000FFFF

	thumb_func_start sub_8041020
sub_8041020: @ 0x08041020
	push {r3, lr}
	cmp r0, #0
	bne _0804102C
	movs r0, #8
	bl sub_803D9F8
_0804102C:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0

	thumb_func_start sub_8041034
sub_8041034: @ 0x08041034
	push {r3, lr}
	ldr r2, _08041050 @ =gUnknown_0803ECB8
	ldr r3, _08041054 @ =gUnknown_03003E7C
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041048
	bl sub_803DA18
_08041048:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041050: .4byte gUnknown_0803ECB8
_08041054: .4byte gUnknown_03003E7C

	thumb_func_start sub_8041058
sub_8041058: @ 0x08041058
	push {r3, lr}
	ldr r2, _08041074 @ =gUnknown_0803ECBC
	ldr r3, _08041078 @ =gUnknown_03003E80
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0804106C
	bl sub_803DA18
_0804106C:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041074: .4byte gUnknown_0803ECBC
_08041078: .4byte gUnknown_03003E80

	thumb_func_start sub_804107C
sub_804107C: @ 0x0804107C
	push {r3, lr}
	ldr r2, _08041098 @ =gUnknown_0803ECC0
	ldr r3, _0804109C @ =gUnknown_03003E84
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041090
	bl sub_803DA18
_08041090:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041098: .4byte gUnknown_0803ECC0
_0804109C: .4byte gUnknown_03003E84

	thumb_func_start sub_80410A0
sub_80410A0: @ 0x080410A0
	push {r3, lr}
	ldr r2, _080410BC @ =gUnknown_0803ECC4
	ldr r3, _080410C0 @ =gUnknown_03003E88
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080410B4
	bl sub_803DA18
_080410B4:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_080410BC: .4byte gUnknown_0803ECC4
_080410C0: .4byte gUnknown_03003E88

	thumb_func_start sub_80410C4
sub_80410C4: @ 0x080410C4
	push {r3, lr}
	ldr r2, _080410E0 @ =gUnknown_0803ECC8
	ldr r3, _080410E4 @ =gUnknown_03003E8C
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080410D8
	bl sub_803DA18
_080410D8:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_080410E0: .4byte gUnknown_0803ECC8
_080410E4: .4byte gUnknown_03003E8C

	thumb_func_start sub_80410E8
sub_80410E8: @ 0x080410E8
	push {r3, lr}
	ldr r2, _08041104 @ =gUnknown_0803ECCC
	ldr r3, _08041108 @ =gUnknown_03003E90
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080410FC
	bl sub_803DA18
_080410FC:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041104: .4byte gUnknown_0803ECCC
_08041108: .4byte gUnknown_03003E90

	thumb_func_start sub_804110C
sub_804110C: @ 0x0804110C
	push {r3, lr}
	ldr r2, _08041128 @ =gUnknown_0803ECD0
	ldr r3, _0804112C @ =gUnknown_03003E94
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041120
	bl sub_803DA18
_08041120:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041128: .4byte gUnknown_0803ECD0
_0804112C: .4byte gUnknown_03003E94

	thumb_func_start sub_8041130
sub_8041130: @ 0x08041130
	push {r3, lr}
	ldr r2, _0804114C @ =gUnknown_0803ECD4
	ldr r3, _08041150 @ =gUnknown_03003E98
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041144
	bl sub_803DA18
_08041144:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_0804114C: .4byte gUnknown_0803ECD4
_08041150: .4byte gUnknown_03003E98

	thumb_func_start sub_8041154
sub_8041154: @ 0x08041154
	push {r3, lr}
	ldr r2, _08041170 @ =gUnknown_0803ECD8
	ldr r3, _08041174 @ =gUnknown_03003E9C
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041168
	bl sub_803DA18
_08041168:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041170: .4byte gUnknown_0803ECD8
_08041174: .4byte gUnknown_03003E9C

	thumb_func_start sub_8041178
sub_8041178: @ 0x08041178
	push {r3, lr}
	ldr r2, _08041194 @ =gUnknown_0803ECDC
	ldr r3, _08041198 @ =gUnknown_03003EA0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0804118C
	bl sub_803DA18
_0804118C:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041194: .4byte gUnknown_0803ECDC
_08041198: .4byte gUnknown_03003EA0

	thumb_func_start sub_804119C
sub_804119C: @ 0x0804119C
	push {r3, lr}
	ldr r2, _080411B8 @ =gUnknown_0803ECE0
	ldr r3, _080411BC @ =gUnknown_03003EA4
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080411B0
	bl sub_803DA18
_080411B0:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_080411B8: .4byte gUnknown_0803ECE0
_080411BC: .4byte gUnknown_03003EA4

	thumb_func_start sub_80411C0
sub_80411C0: @ 0x080411C0
	push {r3, lr}
	ldr r2, _080411DC @ =gUnknown_0803ECE4
	ldr r3, _080411E0 @ =gUnknown_03003EA8
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080411D4
	bl sub_803DA18
_080411D4:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_080411DC: .4byte gUnknown_0803ECE4
_080411E0: .4byte gUnknown_03003EA8

	thumb_func_start sub_80411E4
sub_80411E4: @ 0x080411E4
	push {r3, lr}
	ldr r2, _08041200 @ =gUnknown_0803ECE8
	ldr r3, _08041204 @ =gUnknown_03003EAC
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _080411F8
	bl sub_803DA18
_080411F8:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041200: .4byte gUnknown_0803ECE8
_08041204: .4byte gUnknown_03003EAC

	thumb_func_start sub_8041208
sub_8041208: @ 0x08041208
	push {r3, lr}
	ldr r2, _08041224 @ =gUnknown_0803ECEC
	ldr r3, _08041228 @ =gUnknown_03003EB0
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _0804121C
	bl sub_803DA18
_0804121C:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041224: .4byte gUnknown_0803ECEC
_08041228: .4byte gUnknown_03003EB0

	thumb_func_start sub_804122C
sub_804122C: @ 0x0804122C
	push {r3, lr}
	ldr r2, _08041248 @ =gUnknown_0803ECF0
	ldr r3, _0804124C @ =gUnknown_03003EB8
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041240
	bl sub_803DA18
_08041240:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_08041248: .4byte gUnknown_0803ECF0
_0804124C: .4byte gUnknown_03003EB8

	thumb_func_start sub_8041250
sub_8041250: @ 0x08041250
	push {r3, lr}
	ldr r2, _0804126C @ =gUnknown_0803ECF4
	ldr r3, _08041270 @ =gUnknown_03003EBC
	str r2, [r0]
	movs r2, #0
	str r2, [r3]
	cmp r1, #0
	beq _08041264
	bl sub_803DA18
_08041264:
	add sp, #4
	pop {r3}
	bx r3
	.align 2, 0
_0804126C: .4byte gUnknown_0803ECF4
_08041270: .4byte gUnknown_03003EBC

	thumb_func_start sub_8041274
sub_8041274: @ 0x08041274
	adds r2, r0, #0
	adds r0, r1, #0
	push {r4, lr}
	beq _0804129C
	ldr r4, _080412A4 @ =gUnknown_030033E8
	movs r1, #3
	mvns r1, r1
	str r2, [r4]
	ldr r1, [r1, r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	bne _08041294
	bl sub_803DA4C
	b _08041298
_08041294:
	bl sub_803DA18
_08041298:
	movs r0, #0
	str r0, [r4]
_0804129C:
	pop {r4}
	pop {r3}
	bx r3
	.align 2, 0
_080412A4: .4byte gUnknown_030033E8

	thumb_func_start sub_80412A8
sub_80412A8: @ 0x080412A8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	sub sp, #0x80
	add r0, sp, #0x24
	adds r7, r2, #0
	bl sub_803E17C
	add r0, sp, #0x24
	bl sub_803E188
	adds r2, r0, #0
	ldr r0, _08041418 @ =gUnknown_03003E84
	adds r2, #0x48
	movs r3, #0
	subs r1, r6, #4
	ldr r0, [r0]
	bl sub_800529A
	adds r4, r0, #0
	adds r5, r0, #4
	adds r0, r5, #4
	bl sub_803C2DC
	adds r0, #4
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r6, r0
	str r1, [sp, #0x20]
	ldr r2, [r4]
	adds r1, r5, r0
	lsls r2, r2, #4
	lsrs r2, r2, #2
	subs r6, r2, r0
	add r0, sp, #0x24
	bl sub_803E194
	adds r5, r0, #0
	adds r1, r6, #0
	cmp r6, r0
	bhi _080412FC
	adds r1, r5, #0
_080412FC:
	adds r1, #3
	lsrs r0, r1, #2
	lsls r0, r0, #2
	adds r0, #4
	str r0, [sp, #0x1c]
	lsls r0, r7, #0x1f
	bpl _0804131A
	movs r3, #0
	movs r2, #0
	movs r0, #1
	ldr r1, [sp, #0x1c]
	bl sub_803D9C4
	adds r4, r0, #0
	b _08041336
_0804131A:
	ldr r4, [sp, #0x84]
	cmp r4, #0
	bne _08041334
	movs r1, #0
	add r0, sp, #0x24
	ldr r4, [sp, #0x1c]
	bl sub_803E1A0
	adds r0, r4, #0
_0804132C:
	add sp, #0x8c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_08041334:
	ldr r4, [sp, #0x84]
_08041336:
	ldr r0, [sp, #0x1c]
	adds r0, r4, r0
	subs r3, r0, r6
	ldr r0, _08041418 @ =gUnknown_03003E84
	str r3, [sp, #0x18]
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	adds r2, r6, #0
	bl sub_800529A
	bl sub_80081A8
	lsls r0, r7, #0x1e
	bpl _08041360
	movs r2, #0
	movs r1, #0
	ldr r0, _0804141C @ =0x0000146C
	bl sub_803D984
	adds r6, r0, #0
	b _08041362
_08041360:
	ldr r6, _08041420 @ =0x0601606C
_08041362:
	ldr r0, _08041424 @ =gUnknown_03003EB4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804137A
	movs r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r1, r6, #0
	ldr r2, _08041428 @ =0x0500051B
	bl sub_803D468
	b _080413A4
_0804137A:
	lsls r1, r6, #0x1e
	ldr r0, _0804142C @ =0x040000D4
	bpl _08041394
	movs r1, #0
	add r3, sp, #0
	strh r1, [r3, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _08041430 @ =0x81000A36
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080413A4
_08041394:
	movs r1, #0
	str r1, [sp, #0x14]
	add r1, sp, #0x14
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _08041434 @ =0x8500051B
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_080413A4:
	ldr r2, _0804141C @ =0x0000146C
	adds r1, r6, #0
	add r0, sp, #0x24
	bl sub_803E1AC
	mov r0, sp
	bl sub_8008008
	ldr r3, [sp, #0x18]
	movs r0, #0
	str r3, [sp]
	add r3, sp, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r1, #2
	strb r1, [r3, #0xc]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	mov r1, sp
	bl sub_803E1B8
	movs r2, #1
	lsls r2, r2, #0x1e
	adds r1, r5, #0
	add r0, sp, #0x24
	bl sub_803E1C4
	lsls r0, r7, #0x1e
	bpl _080413EC
	movs r2, #0
	movs r1, #0
	adds r0, r6, #0
	bl sub_803D9A8
_080413EC:
	lsls r0, r7, #0x1f
	bpl _0804140A
	ldr r0, [sp, #0x84]
	cmp r0, #0
	beq _0804140A
	adds r2, r5, #0
	adds r1, r4, #0
	ldr r0, [sp, #0x84]
	bl sub_803F3E8
	movs r2, #0
	movs r1, #0
	adds r0, r4, #0
	bl sub_803D9A8
_0804140A:
	movs r1, #0
	add r0, sp, #0x24
	bl sub_803E1A0
	adds r0, r5, #0
	b _0804132C
	.align 2, 0
_08041418: .4byte gUnknown_03003E84
_0804141C: .4byte 0x0000146C
_08041420: .4byte 0x0601606C
_08041424: .4byte gUnknown_03003EB4
_08041428: .4byte 0x0500051B
_0804142C: .4byte 0x040000D4
_08041430: .4byte 0x81000A36
_08041434: .4byte 0x8500051B

	thumb_func_start sub_08041438
sub_08041438: @ 0x08041438
	bx pc
	.align 2, 0

	arm_func_start sub_0804143C
sub_0804143C: @ 0x0804143C
	bx lr

	thumb_func_start sub_08041440
sub_08041440: @ 0x08041440
	bx pc
	.align 2, 0

	arm_func_start sub_08041444
sub_08041444: @ 0x08041444
	b sub_803E294
