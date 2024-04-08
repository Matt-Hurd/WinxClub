    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003EB0
	IMPORT gUnknown_08041448
	IMPORT gUnknown_08041468
	IMPORT gUnknown_08041488
	IMPORT gUnknown_080414A8
	IMPORT sub_8001BB4
	IMPORT sub_80025D6
	IMPORT sub_800263E
	IMPORT sub_8002698
	IMPORT sub_800288A
	IMPORT sub_803B8CE
	IMPORT sub_803BEB0
	IMPORT sub_803BF0C
	IMPORT sub_803C034
	IMPORT sub_803D468
	IMPORT sub_803D5A4
	IMPORT sub_803D984
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT sub_8040490
	
	thumb_func_start sub_800CD98
sub_800CD98 ;@ 0x0800CD98
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r1, #0x10]
	adds r6, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
	cmp r0, #0
	beq _0800CE00
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0800CE00
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r5]
	bl sub_803C034
	ldrb r1, [r4, #0x10]
	movs r0, #0
	cmp r1, #0
	bls _0800CDDE
	movs r3, #0
_0800CDCE
	ldr r2, [r4, #0x14]
	ldr r1, [r5]
	ldrb r2, [r2, r0]
	adds r0, #1
	strb r3, [r1, r2]
	ldrb r1, [r4, #0x10]
	cmp r1, r0
	bhi _0800CDCE
_0800CDDE
	movs r1, #0
	movs r0, #0
_0800CDE2
	ldr r2, [r5]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800CDF6
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
_0800CDF6
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo _0800CDE2
_0800CE00
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0800CE0C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0800CE12
_0800CE0C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0800CE66
_0800CE12
	movs r7, #0xff
	adds r7, #1
	movs r2, #0
	movs r1, #0
	adds r0, r7, #0
	bl sub_803D984
	adds r2, r7, #0
	movs r1, #0xff
	str r0, [r6]
	bl sub_803C034
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0800CE66
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	bls _0800CE48
	movs r1, #0
_0800CE38
	ldr r3, [r4, #0x1c]
	ldr r2, [r6]
	ldrb r3, [r3, r0]
	adds r0, #1
	strb r1, [r2, r3]
	ldrb r2, [r4, #0x18]
	cmp r2, r0
	bhi _0800CE38
_0800CE48
	movs r1, #0
	movs r0, #0
_0800CE4C
	ldr r2, [r6]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800CE60
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r4, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r4, [r2, r0]
_0800CE60
	adds r0, #1
	cmp r0, r7
	blo _0800CE4C
_0800CE66
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800CE6C
sub_800CE6C ;@ 0x0800CE6C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldrb r1, [r2, #3]
	adds r7, r3, #0
	movs r6, #0
	adds r4, r2, #0
	cmp r1, #0
	sub sp, #0x6c
	beq _0800CE8C
	adds r3, r6, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x6c]
	str r0, [r2, #0xc]
_0800CE8C
	movs r6, #0
	adds r3, r6, #0
	movs r1, #0xff
	adds r1, #1
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	adds r3, r6, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x50]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x4c]
	movs r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x6c]
	adds r1, r5, #0
	add r3, sp, #0x44
	add r2, sp, #0x48
	bl sub_800CD98
	ldr r2, [sp, #0x6c]
	ldr r0, [r2, #8]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldrb r1, [r7]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r7, #3]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r7, #1]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r6, r0, r1
	ldm r7!, {r1, r2, r3}
	ldr r0, [sp, #0x40]
	adds r6, #0x14
	stm r0!, {r1, r2, r3}
	ldm r7!, {r2, r3}
	stm r0!, {r2, r3}
	add r1, sp, #0x3c
	ldm r1!, {r0, r1}
	subs r7, #0x14
	str r0, [r1, #4]
	ldrb r0, [r7]
	ldr r1, [sp, #0x3c]
	lsls r3, r0, #3
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x10]
	ldrb r0, [r7]
	ldr r1, [sp, #0x3c]
	lsls r3, r0, #3
	adds r0, r3, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r7, #3]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x40]
	str r0, [r1, #0xc]
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, #0
	bls _0800D01C
	add r7, sp, #0x24
	str r7, [sp, #0x68]
_0800CF3C
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0800CF4A
	ldr r1, [sp, #0x38]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D01E
_0800CF4A
	ldr r0, [sp, #0x3c]
	add r7, sp, #0x10
	str r0, [sp, #0x34]
	adds r0, #0x24
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x38]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x1c]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x1e]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x20]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x22]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x68]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x28]
	ldr r1, [r5]
	add r7, sp, #0x10
	adds r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldm r7!, {r1, r2, r3}
	ldr r0, [sp, #0x34]
	stm r0!, {r1, r2, r3}
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldr r0, [sp, #0x34]
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #0x34]
	ldrh r1, [r1, #0xe]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	ldr r1, [sp, #0x10]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq _0800CFD6
	ldr r1, [sp, #0x34]
	adds r2, r6, #0
	str r6, [r1, #0x18]
	adds r6, r6, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bl sub_803D5A4
_0800CFD6
	ldr r0, [sp, #0x34]
	str r6, [r0, #0x1c]
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r7, r1, r6
	movs r1, #0
	str r1, [sp, #0xc]
	cmp r0, #0
	bls _0800D05E
_0800CFF2
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x2c]
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r6, r2, r1
	ldm r6!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r0!, {r2, r3}
	subs r0, #0x14
	ldr r2, [r0, #8]
	subs r6, #0x14
	lsls r3, r2, #0x15
	lsrs r1, r3, #0x1c
	mov ip, r2
	beq _0800D044
	b _0800D020
_0800D01C
	b _0800D0BC
_0800D01E
	b _0800D0AE
_0800D020
	ldrh r1, [r0, #4]
	ldrh r2, [r0, #6]
	str r7, [r0, #0x10]
	ldr r0, [r6, #0x10]
	muls r1, r2
	mov r2, ip
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	lsls r1, r1, #1
	muls r1, r2
	adds r2, r7, #0
	adds r7, r7, r1
	ldr r1, [r5]
	adds r1, r0, r1
	lsrs r0, r3, #0x1c
	bl sub_803D5A4
	b _0800D04C
_0800D044
	ldr r1, [r0, #0x10]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [r0, #0x10]
_0800D04C
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x34]
	adds r1, #1
	str r1, [sp, #0xc]
	ldr r0, [r0]
	lsls r0, r0, #6
	lsrs r0, r0, #0x1a
	cmp r0, r1
	bhi _0800CFF2
_0800D05E
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D094
	movs r1, #0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0xc]
	cmp r0, #0
	bls _0800D094
	movs r6, #0
_0800D070
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x44]
	strb r6, [r0, r1]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r0, r1
	bhi _0800D070
_0800D094
	ldr r1, [sp, #0x34]
	str r7, [r1, #0x20]
	ldr r0, [sp, #0x34]
	movs r1, #1
	ldr r0, [r0, #8]
	lsls r0, r0, #2
	adds r6, r0, r7
	ldr r0, [sp, #0x34]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
_0800D0AE
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, r1
	bls _0800D0BC
	b _0800CF3C
_0800D0BC
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D0E8
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
_0800D0CA
	ldr r2, [sp, #0x44]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800D0DE
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
_0800D0DE
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo _0800D0CA
_0800D0E8
	movs r1, #0
	str r1, [sp, #0x38]
	ldrb r0, [r4, #3]
	cmp r0, #0
	bls _0800D184
_0800D0F2
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0800D100
	ldr r1, [sp, #0x38]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D178
_0800D100
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x38]
	add r7, sp, #0x24
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r2, [r0]
	str r1, [sp, #0x28]
	str r2, [sp, #0x24]
	ldrh r2, [r0, #8]
	add r3, sp, #0
	strh r2, [r3, #0x2c]
	ldrh r1, [r0, #0xa]
	strh r1, [r3, #0x2e]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x34]
	ldm r7!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r7!, {r2, r3}
	stm r0!, {r2, r3}
	subs r0, #0x14
	ldr r1, [r0]
	movs r2, #0
	mov ip, r1
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq _0800D19A
	cmp r1, #2
	bne _0800D15C
	ldr r1, [r0, #4]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
_0800D15C
	adds r2, #3
	lsrs r1, r2, #2
	mov r3, ip
	lsls r3, r3, #0x18
	lsls r1, r1, #2
	lsrs r2, r3, #0x1c
	beq _0800D178
	adds r2, r6, #0
	str r6, [r0, #0x10]
	adds r6, r6, r1
	ldr r1, [sp, #0x34]
	lsrs r0, r3, #0x1c
	bl sub_803D5A4
_0800D178
	ldr r1, [sp, #0x38]
	adds r1, #1
	str r1, [sp, #0x38]
	ldrb r0, [r4, #3]
	cmp r0, r1
	bhi _0800D0F2
_0800D184
	ldr r0, [sp, #0x40]
	movs r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #0x34]
	str r0, [sp, #0x38]
	ldrb r0, [r4]
	cmp r0, #0
	bls _0800D278
	add r7, sp, #0x24
	str r7, [sp, #0x64]
	b _0800D1B4
_0800D19A
	ldrh r2, [r0, #8]
	ldrh r1, [r0, #0xa]
	mov r3, ip
	lsls r3, r3, #8
	muls r2, r1
	movs r1, #1
	lsls r7, r1, #8
	lsrs r3, r3, #0x10
	cmp r3, r7
	bls _0800D1B0
	movs r1, #2
_0800D1B0
	muls r2, r1
	b _0800D15C
_0800D1B4
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0800D1C2
	ldr r1, [sp, #0x34]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D28E
_0800D1C2
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x34]
	add r7, sp, #0x10
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x1c]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x1e]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x20]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x22]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x64]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x38]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0800D288
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x38]
	movs r7, #0
	ldr r1, [r1, #0x20]
	cmp r0, #0
	str r1, [sp, #8]
	bls _0800D27A
_0800D210
	ldr r0, [sp, #0x30]
	lsls r1, r7, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x60]
	cmp r0, #0
	beq _0800D236
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
	ldr r0, [sp, #0x60]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D26C
_0800D236
	ldr r0, [sp, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	beq _0800D24C
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
	ldr r0, [sp, #0x60]
	ldrb r1, [r0, r1]
	b _0800D254
_0800D24C
	ldr r1, [sp, #4]
	subs r0, r1, r0
	bl sub_8040490
_0800D254
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x40]
	lsls r0, r0, #2
	ldr r1, [r1, #0x10]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	stm r1!, {r0}
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	adds r0, #1
	str r0, [sp, #0xc]
_0800D26C
	ldr r0, [sp, #0x38]
	adds r7, #1
	ldr r0, [r0, #8]
	cmp r0, r7
	bhi _0800D210
	b _0800D27A
_0800D278
	b _0800D29A
_0800D27A
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	cmp r0, #0
	str r0, [r1, #8]
	bne _0800D288
	ldr r1, [sp, #0x38]
	str r0, [r1, #0x20]
_0800D288
	ldr r0, [sp, #0x38]
	adds r0, #0x24
	str r0, [sp, #0x38]
_0800D28E
	ldr r1, [sp, #0x34]
	adds r1, #1
	str r1, [sp, #0x34]
	ldrb r0, [r4]
	cmp r0, r1
	bhi _0800D1B4
_0800D29A
	movs r0, #0
	str r0, [sp, #0x38]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0800D388
_0800D2A4
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x50]
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _0800D2B8
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x50]
	movs r0, #0xff
	strb r0, [r2, r1]
	b _0800D3BC
_0800D2B8
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x38]
	add r7, sp, #0x24
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r7, [sp, #0x3c]
	adds r0, r7, #0
	adds r0, #0x14
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x34]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r7!, {r2, r3}
	subs r7, #0x14
	ldr r0, [r7, #4]
	lsls r1, r0, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	lsls r1, r2
	lsls r2, r0, #2
	lsrs r3, r2, #0x1d
	movs r2, #1
	lsls r2, r3
	muls r1, r2
	lsls r2, r0, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne _0800D310
	lsrs r1, r1, #1
_0800D310
	ldrh r2, [r7]
	lsls r0, r0, #0xc
	muls r1, r2
	ldrh r2, [r7, #2]
	lsls r2, r2, #2
	str r2, [sp, #0x20]
	lsrs r2, r0, #0x1c
	beq _0800D32E
	adds r2, r6, #0
	str r6, [r7, #0xc]
	adds r6, r6, r1
	ldr r1, [sp, #0x30]
	lsrs r0, r0, #0x1c
	bl sub_803D5A4
_0800D32E
	str r6, [r7, #0x10]
	ldr r2, [sp, #0x20]
	ldr r1, [r7, #4]
	adds r0, r6, #0
	adds r6, r6, r2
	lsls r2, r1, #0xc
	lsrs r1, r2, #0x1c
	beq _0800D34C
	lsrs r3, r2, #0x1c
	adds r2, r0, #0
	adds r0, r3, #0
	ldr r1, [sp, #0x34]
	bl sub_803D5A4
	b _0800D354
_0800D34C
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x20]
	bl sub_803BF0C
_0800D354
	ldr r0, [r7, #4]
	movs r1, #0x10
	lsls r0, r0, #8
	lsrs r0, r0, #0x1c
	cmp r0, #9
	beq _0800D362
	movs r1, #1
_0800D362
	mov lr, r1
	ldrh r0, [r7, #2]
	movs r1, #0
	mov ip, r1
	cmp r0, #0
	bls _0800D3AC
	movs r2, #1
_0800D370
	mov r1, ip
	lsls r3, r1, #2
	ldr r0, [r7, #0x10]
	str r3, [sp, #0x5c]
	ldr r0, [r0, r3]
	cmp r0, #0
	blt _0800D3A0
	movs r0, #0
	mov r1, lr
	cmp r1, #0
	bls _0800D3A0
	b _0800D38A
_0800D388
	b _0800D3CC
_0800D38A
	ldr r1, [r7, #0x10]
	ldr r3, [sp, #0x5c]
	ldr r1, [r1, r3]
	ldr r3, [sp, #0x4c]
	lsls r1, r1, #6
	lsrs r1, r1, #0x18
	adds r1, r1, r0
	adds r0, #1
	cmp r0, lr
	strb r2, [r3, r1]
	blo _0800D38A
_0800D3A0
	mov r1, ip
	ldrh r0, [r7, #2]
	adds r1, #1
	mov ip, r1
	cmp r0, r1
	bhi _0800D370
_0800D3AC
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #8]
	subs r0, r7, r0
	bl sub_8040490
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x50]
	strb r1, [r2, r0]
_0800D3BC
	ldr r0, [sp, #0x38]
	adds r0, #1
	str r0, [sp, #0x38]
	ldrb r0, [r4, #1]
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bls _0800D3CC
	b _0800D2A4
_0800D3CC
	ldrb r2, [r4, #2]
	movs r1, #0
	movs r0, #0
	cmp r2, #0
	bls _0800D3FC
	movs r7, #0xff
_0800D3D8
	ldr r2, [sp, #0x4c]
	ldrb r2, [r2, r0]
	cmp r2, #0
	beq _0800D3F0
	adds r2, r1, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0x4c]
	strb r3, [r2, r0]
	b _0800D3F4
_0800D3F0
	ldr r2, [sp, #0x4c]
	strb r7, [r2, r0]
_0800D3F4
	ldrb r2, [r4, #2]
	adds r0, #1
	cmp r2, r0
	bhi _0800D3D8
_0800D3FC
	ldr r0, [sp, #0x40]
	movs r1, #0
	ldr r0, [r0, #4]
	ldrb r2, [r4]
	cmp r2, #0
	bls _0800D434
_0800D408
	ldr r2, [sp, #0x48]
	cmp r2, #0
	beq _0800D414
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq _0800D42C
_0800D414
	ldr r3, [r0]
	ldr r7, [sp, #0x50]
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x18
	ldrb r2, [r7, r2]
	movs r7, #0xff
	lsls r7, r7, #8
	bics r3, r7
	lsls r2, r2, #8
	orrs r2, r3
	str r2, [r0]
	adds r0, #0x24
_0800D42C
	ldrb r2, [r4]
	adds r1, #1
	cmp r2, r1
	bhi _0800D408
_0800D434
	ldr r0, [sp, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0800D48E
_0800D442
	ldr r2, [sp, #0x50]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	beq _0800D482
	ldrh r2, [r1, #2]
	movs r0, #0
	cmp r2, #0
	bls _0800D480
_0800D454
	ldr r2, [r1, #0x10]
	lsls r3, r0, #2
	adds r2, r2, r3
	ldr r3, [r2]
	ldr r7, [sp, #0x4c]
	str r3, [sp, #0x58]
	lsls r3, r3, #6
	lsrs r3, r3, #0x18
	ldrb r3, [r7, r3]
	movs r7, #0xff
	lsls r7, r7, #0x12
	mov lr, r3
	ldr r3, [sp, #0x58]
	adds r0, #1
	bics r3, r7
	mov r7, lr
	lsls r7, r7, #0x12
	orrs r3, r7
	str r3, [r2]
	ldrh r2, [r1, #2]
	cmp r2, r0
	bhi _0800D454
_0800D480
	adds r1, #0x14
_0800D482
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi _0800D442
_0800D48E
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0800D508
	movs r0, #5
	lsls r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r0, _0800D878 ;@ =0x00007C1F
	movs r7, #0
	str r0, [sp, #0x34]
	ldrb r1, [r4, #2]
	cmp r1, #0
	bls _0800D500
	movs r1, #0x27
	ldr r2, [sp, #0x6c]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x54]
_0800D4B0
	ldr r3, [sp, #0x4c]
	ldrb r0, [r3, r7]
	cmp r0, #0xff
	beq _0800D4F8
	ldr r0, [sp, #0x54]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	bpl _0800D4D0
	ldr r0, [r4, #0xc]
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, [sp, #0x38]
	ldr r2, _0800D87C ;@ =0x04000008
	bl sub_803D468
	b _0800D4E4
_0800D4D0
	ldr r0, [r4, #0xc]
	ldr r1, _0800D880 ;@ =0x040000D4
	lsls r2, r7, #5
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, [sp, #0x38]
	str r0, [r1, #4]
	ldr r0, _0800D884 ;@ =0x84000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800D4E4
	ldr r0, [r4, #0xc]
	lsls r1, r7, #5
	ldrh r0, [r0, r1]
	ldr r1, _0800D878 ;@ =0x00007C1F
	cmp r0, r1
	beq _0800D4F2
	str r0, [sp, #0x34]
_0800D4F2
	ldr r0, [sp, #0x38]
	adds r0, #0x20
	str r0, [sp, #0x38]
_0800D4F8
	ldrb r0, [r4, #2]
	adds r7, #1
	cmp r0, r7
	bhi _0800D4B0
_0800D500
	movs r1, #5
	ldr r0, [sp, #0x34]
	lsls r1, r1, #0x18
	strh r0, [r1]
_0800D508
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _0800D532
	movs r0, #0
	cmp r1, #0
	bls _0800D532
_0800D514
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _0800D524
	ldrb r1, [r1, r0]
	ldr r2, [sp, #0x6c]
	ldr r2, [r2, #0xc]
	strb r1, [r2, r0]
	b _0800D52A
_0800D524
	ldr r2, [sp, #0x6c]
	ldr r1, [r2, #0xc]
	strb r0, [r1, r0]
_0800D52A
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi _0800D514
_0800D532
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	beq _0800D570
	ldr r2, [sp, #0x6c]
	movs r1, #0
	str r6, [r2, #0x10]
	ldrb r2, [r0]
	subs r2, #1
	cmp r2, #0
	ble _0800D560
_0800D54A
	ldr r2, [sp, #0x6c]
	lsls r3, r1, #2
	ldr r2, [r2, #0x10]
	adds r1, #1
	adds r4, r2, r3
	adds r4, #4
	str r4, [r2, r3]
	ldrb r2, [r0]
	subs r2, #1
	cmp r2, r1
	bgt _0800D54A
_0800D560
	ldr r2, [sp, #0x6c]
	ldrb r0, [r0]
	ldr r1, [r2, #0x10]
	movs r6, #0
	lsls r0, r0, #2
	adds r0, r1, r0
	subs r0, #0x40
	str r6, [r0, #0x3c]
_0800D570
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0800D57E
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D57E
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0800D58C
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D58C
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x50]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x4c]
	bl sub_803D9A8
	add sp, #0x7c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D5A8
sub_800D5A8 ;@ 0x0800D5A8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r1, #0xff
	adds r3, r7, #0
	adds r1, #1
	movs r2, #0
	movs r6, #0x14
	movs r0, #1
	sub sp, #0x44
	bl sub_803D9C4
	adds r3, r7, #0
	movs r1, #0xff
	adds r1, #1
	str r0, [sp, #0x38]
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	adds r1, r5, #0
	add r3, sp, #0x2c
	add r2, sp, #0x30
	bl sub_800CD98
	movs r1, #0
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, #0
	bls _0800D6D6
	add r7, sp, #0x18
	str r7, [sp, #0x40]
_0800D5F4
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800D602
	ldr r1, [sp, #0x28]
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0800D6D8
_0800D602
	ldr r1, [sp, #0x50]
	add r7, sp, #4
	ldrb r0, [r1]
	adds r6, #0x24
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldm r0!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	subs r0, #0xc
	ldrh r2, [r0, #0xc]
	add r3, sp, #0
	strh r2, [r3, #0x10]
	ldrh r1, [r0, #0xe]
	strh r1, [r3, #0x12]
	ldrh r2, [r0, #0x10]
	strh r2, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	adds r0, #0x14
	strh r1, [r3, #0x16]
	ldm r0!, {r0, r1, r2, r3}
	ldr r7, [sp, #0x40]
	stm r7!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x1c]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq _0800D66C
	add r3, sp, #0
	ldrh r0, [r3, #0x10]
	ldrh r1, [r3, #0x12]
	muls r0, r1
	lsls r0, r0, #1
	adds r0, #3
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r6, r6, r0
_0800D66C
	ldr r0, [sp, #0xc]
	lsls r0, r0, #2
	adds r7, r0, r6
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D6A0
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	bls _0800D6A0
_0800D680
	ldr r0, [sp, #0x24]
	lsls r1, r6, #2
	ldr r0, [r0, r1]
	ldr r1, [r5]
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	subs r0, r0, r1
	bl sub_8040490
	ldr r0, [sp, #0x2c]
	movs r2, #0
	strb r2, [r0, r1]
	ldr r0, [sp, #0xc]
	adds r6, #1
	cmp r0, r6
	bhi _0800D680
_0800D6A0
	ldr r0, [sp, #4]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r7
	movs r0, #0
	cmp r1, #0
	mov ip, r1
	bls _0800D6E4
_0800D6B6
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [sp, #0x20]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #8]
	lsls r3, r2, #0x15
	lsrs r3, r3, #0x1c
	beq _0800D6DE
	ldrh r3, [r1, #4]
	ldrh r1, [r1, #6]
	lsls r2, r2, #0x19
	muls r3, r1
	lsls r1, r3, #1
	lsrs r2, r2, #0x19
	b _0800D6DA
_0800D6D6
	b _0800D6FE
_0800D6D8
	b _0800D6F0
_0800D6DA
	muls r1, r2
	adds r6, r1, r6
_0800D6DE
	adds r0, #1
	cmp ip, r0
	bhi _0800D6B6
_0800D6E4
	ldr r0, [sp, #4]
	movs r1, #1
	ldr r2, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strb r1, [r2, r0]
_0800D6F0
	ldr r1, [sp, #0x28]
	adds r1, #1
	str r1, [sp, #0x28]
	ldrb r0, [r4]
	cmp r0, r1
	bls _0800D6FE
	b _0800D5F4
_0800D6FE
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0800D72A
	movs r1, #0
	movs r0, #0
	movs r2, #0xff
	adds r2, #1
_0800D70C
	ldr r2, [sp, #0x2c]
	ldrb r3, [r2, r0]
	cmp r3, #0xff
	beq _0800D720
	adds r3, r1, #1
	lsls r3, r3, #0x18
	adds r7, r1, #0
	lsrs r3, r3, #0x18
	adds r1, r3, #0
	strb r7, [r2, r0]
_0800D720
	movs r2, #0xff
	adds r2, #1
	adds r0, #1
	cmp r0, r2
	blo _0800D70C
_0800D72A
	ldrb r1, [r4, #3]
	movs r0, #0
	cmp r1, #0
	bls _0800D7A4
_0800D732
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _0800D73E
	ldrb r1, [r1, r0]
	cmp r1, #0xff
	beq _0800D79C
_0800D73E
	ldr r1, [sp, #0x50]
	adds r6, #0x14
	ldrb r1, [r1, #3]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #3]
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r1, [r4, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r2, [r1, #4]
	ldr r3, [r1]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x18]
	ldrh r7, [r1, #8]
	add r3, sp, #0
	strh r7, [r3, #0x20]
	ldrh r2, [r1, #0xa]
	strh r2, [r3, #0x22]
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x10]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r2, [r5]
	adds r1, r1, r2
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	beq _0800D79C
	ldr r1, [sp, #0x18]
	movs r2, #0
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #1
	beq _0800D7B0
	cmp r1, #2
	bne _0800D794
	ldr r1, [sp, #0x1c]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
_0800D794
	adds r2, #3
	lsrs r1, r2, #2
	lsls r1, r1, #2
	adds r6, r6, r1
_0800D79C
	ldrb r1, [r4, #3]
	adds r0, #1
	cmp r1, r0
	bhi _0800D732
_0800D7A4
	movs r0, #0
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bls _0800D876
	b _0800D7CC
_0800D7B0
	add r3, sp, #0
	ldrh r2, [r3, #0x20]
	ldrh r1, [r3, #0x22]
	ldr r3, [sp, #0x18]
	muls r2, r1
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	lsls r7, r1, #8
	cmp r3, r7
	bls _0800D7C8
	movs r1, #2
_0800D7C8
	muls r2, r1
	b _0800D794
_0800D7CC
	ldr r2, [sp, #0x38]
	mov r0, ip
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0800D8A2
	ldr r1, [sp, #0x50]
	adds r0, r6, #0
	ldrb r1, [r1, #1]
	ldr r2, [sp, #0x50]
	add r7, sp, #0x18
	adds r1, #1
	strb r1, [r2, #1]
	mov r2, ip
	lsls r3, r2, #2
	adds r2, r3, r2
	ldr r1, [r4, #8]
	lsls r2, r2, #2
	adds r6, r1, r2
	ldm r6!, {r1, r2, r3}
	stm r7!, {r1, r2, r3}
	ldm r6!, {r2, r3}
	stm r7!, {r2, r3}
	ldr r2, [sp, #0x28]
	ldr r1, [r5]
	adds r0, #0x14
	adds r2, r2, r1
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x24]
	adds r1, r2, r1
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #5
	lsrs r2, r1, #0x1d
	movs r1, #1
	adds r6, r1, #0
	lsls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	lsrs r3, r2, #0x1d
	adds r2, r1, #0
	lsls r2, r3
	muls r6, r2
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #8
	bne _0800D82C
	lsrs r6, r6, #1
_0800D82C
	ldr r3, [sp, #0x1c]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	beq _0800D83C
	add r3, sp, #0
	ldrh r3, [r3, #0x18]
	muls r3, r6
	adds r0, r3, r0
_0800D83C
	add r3, sp, #0
	ldrh r3, [r3, #0x1a]
	lsls r3, r3, #2
	adds r6, r3, r0
	movs r0, #0x10
	cmp r2, #9
	beq _0800D84C
	movs r0, #1
_0800D84C
	add r3, sp, #0
	ldrh r2, [r3, #0x1a]
	mov lr, r0
	movs r0, #0
	cmp r2, #0
	bls _0800D8A2
_0800D858
	lsls r7, r0, #2
	ldr r1, [sp, #0x28]
	str r7, [sp, #0x3c]
	ldr r1, [r1, r7]
	cmp r1, #0
	blt _0800D898
	movs r1, #0
	mov r2, lr
	cmp r2, #0
	bls _0800D898
	movs r3, #1
_0800D86E
	ldr r2, [sp, #0x28]
	ldr r7, [sp, #0x3c]
	ldr r2, [r2, r7]
	b _0800D888
_0800D876
	b _0800D8AE
	ALIGN
_0800D878 DCDU 0x00007C1F
_0800D87C DCDU 0x04000008
_0800D880 DCDU 0x040000D4
_0800D884 DCDU 0x84000008
_0800D888
	lsls r2, r2, #6
	lsrs r2, r2, #0x18
	adds r2, r2, r1
	ldr r7, [sp, #0x34]
	adds r1, #1
	cmp r1, lr
	strb r3, [r7, r2]
	blo _0800D86E
_0800D898
	add r3, sp, #0
	ldrh r1, [r3, #0x1a]
	adds r0, #1
	cmp r1, r0
	bhi _0800D858
_0800D8A2
	mov r0, ip
	adds r0, #1
	mov ip, r0
	ldrb r0, [r4, #1]
	cmp r0, ip
	bhi _0800D7CC
_0800D8AE
	ldrb r1, [r4, #2]
	movs r0, #0
	cmp r1, #0
	bls _0800D8D0
_0800D8B6
	ldr r7, [sp, #0x34]
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _0800D8C8
	ldr r1, [sp, #0x50]
	ldrb r1, [r1, #2]
	ldr r2, [sp, #0x50]
	adds r1, #1
	strb r1, [r2, #2]
_0800D8C8
	ldrb r1, [r4, #2]
	adds r0, #1
	cmp r1, r0
	bhi _0800D8B6
_0800D8D0
	adds r5, #0x20
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r4, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800D8E6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D8E6
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0800D8F4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
_0800D8F4
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x38]
	bl sub_803D9A8
	movs r2, #0
	movs r1, #0
	ldr r0, [sp, #0x34]
	bl sub_803D9A8
	adds r0, r4, #0
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800D912
sub_800D912 ;@ 0x0800D912
	push {r0, r1, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x27
	lsls r0, r0, #6
	adds r6, r4, r0
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	sub sp, #4
	str r0, [r6, #0x3c]
	movs r0, #0x21
	lsls r0, r0, #6
	adds r5, r4, r0
	str r5, [sp]
	ldr r1, [r4, #8]
	movs r0, #0
	movs r7, #0
	cmp r1, #0
	beq _0800D93C
	ldrb r0, [r1]
_0800D93C
	cmp r0, #0
	bls _0800D964
_0800D940
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0800D952
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r0, #0
	str r0, [r5, #0x30]
_0800D952
	ldr r1, [r4, #8]
	adds r7, #1
	adds r5, #0x58
	movs r0, #0
	cmp r1, #0
	beq _0800D960
	ldrb r0, [r1]
_0800D960
	cmp r0, r7
	bhi _0800D940
_0800D964
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _0800D976
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r6, #0x14]
_0800D976
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800D986
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
_0800D986
	ldr r0, _0800DD64 ;@ =gUnknown_03003EB0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800D992
	bl sub_80025D6
_0800D992
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0800D9A4
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #8]
_0800D9A4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0800D9B6
	movs r2, #0
	movs r1, #0
	bl sub_803D9A8
	movs r5, #0
	str r5, [r4, #0xc]
_0800D9B6
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xff
	adds r1, #0x61
	ldr r0, [sp]
	bl sub_803BEB0
	movs r0, #0x13
	lsls r0, r0, #7
	adds r0, r4, r0
	str r5, [r0, #0x20]
	str r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	str r0, [r6, #0x3c]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_800D9E0
sub_800D9E0 ;@ 0x0800D9E0
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0x28]
	movs r1, #0x27
	ldr r2, [sp, #0x44]
	lsls r1, r1, #6
	adds r1, r2, r1
	str r1, [sp, #0x40]
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r1, #0x3c]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #5
	bics r1, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	ldr r0, [sp, #0x44]
	movs r1, #1
	bl sub_800D912
	ldr r1, [sp, #0x48]
	movs r4, #0
	ldr r0, [r1]
	ldr r2, [sp, #0x44]
	str r0, [r2, #4]
	ldr r1, [sp, #0x40]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	movs r0, #0x13
	ldr r2, [sp, #0x44]
	lsls r0, r0, #7
	adds r0, r2, r0
	str r0, [sp, #0x3c]
	str r4, [r0, #0x20]
	ldr r1, [sp, #0x40]
	movs r0, #0
	str r0, [r1, #0x18]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DA4C
	movs r3, #1
	lsls r3, r3, #0x1a
	ldrh r0, [r3]
	movs r1, #0xf
	lsls r1, r1, #8
	bics r0, r1
	strh r0, [r3]
_0800DA4C
	ldr r1, [sp, #0x48]
	add r6, sp, #0x18
	ldr r0, [r1]
	add r5, sp, #4
	ldm r0!, {r1, r2, r3}
	stm r6!, {r1, r2, r3}
	ldm r0!, {r2, r3}
	stm r6!, {r2, r3}
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	movs r3, #0
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x20]
	ldr r1, [r1]
	movs r2, #0
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x24]
	ldr r1, [r1]
	subs r6, #0x14
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x28]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	stm r5!, {r0, r1, r2, r3}
	stm r5!, {r3}
	subs r5, #0x14
	add r1, sp, #0x44
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800D5A8
	adds r1, r0, #0
	adds r3, r4, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r2, [sp, #0x44]
	add r1, sp, #0x44
	str r0, [r2, #8]
	adds r3, r5, #0
	adds r2, r6, #0
	ldm r1!, {r0, r1}
	bl sub_800CE6C
	ldr r2, [sp, #0x44]
	ldr r6, [r2, #8]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DAD4
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1f
	bl sub_800263E
_0800DAD4
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r0, [sp, #0x40]
	str r2, [sp, #0x28]
	ldr r1, [r0, #0x3c]
	ldr r0, _0800DD68 ;@ =0xFF800FFF
	ands r1, r0
	asrs r2, r0, #0xb
	ands r1, r2
	ldr r2, [sp, #0x40]
	str r1, [r2, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0800DB0C
	ldr r2, [sp, #0x28]
	movs r3, #0x80
	ldrh r1, [r2]
	movs r2, #1
	lsls r2, r2, #0xd
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	ldr r2, [sp, #0x28]
	bics r1, r3
	strh r1, [r2]
_0800DB0C
	movs r3, #0
	str r3, [sp, #0x24]
	add r4, sp, #0x14
	movs r1, #0
	movs r2, #0
	stm r4!, {r1, r2, r3}
	stm r4!, {r3}
	ldrb r2, [r6]
	subs r4, #0x10
	cmp r2, #0
	bls _0800DB42
_0800DB22
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r2, [r6, #4]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r2, [r2]
	adds r1, #1
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x1c
	adds r2, r2, r4
	ldrb r3, [r2]
	adds r3, #1
	strb r3, [r2]
	ldrb r2, [r6]
	cmp r2, r1
	bhi _0800DB22
_0800DB42
	ldrb r1, [r6]
	adds r1, #0xff
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	adds r2, r4, #0
_0800DB4E
	ldrb r5, [r2, r1]
	strb r3, [r2, r1]
	adds r1, #1
	subs r3, r3, r5
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r1, #0x10
	blo _0800DB4E
	ldrb r3, [r6]
	movs r1, #0
	cmp r3, #0
	bls _0800DB8A
	add r7, sp, #0x24
_0800DB68
	lsls r3, r1, #3
	adds r3, r3, r1
	ldr r4, [r6, #4]
	lsls r3, r3, #2
	adds r3, r4, r3
	ldr r3, [r3]
	lsls r3, r3, #0xc
	lsrs r3, r3, #0x1c
	adds r3, r3, r2
	ldrb r4, [r3]
	adds r5, r4, #1
	strb r5, [r3]
	strb r1, [r7, r4]
	ldrb r3, [r6]
	adds r1, #1
	cmp r3, r1
	bhi _0800DB68
_0800DB8A
	movs r2, #0
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x44]
	movs r1, #0x21
	lsls r1, r1, #6
	adds r4, r2, r1
	ldr r1, _0800DD6C ;@ =0x04000008
	str r4, [sp, #0x38]
	movs r2, #0x20
	movs r7, #0
	movs r3, #0
	str r3, [sp, #0x10]
	str r7, [sp, #0x20]
	str r2, [sp, #0x18]
	str r1, [sp, #0x14]
	ldrb r1, [r6]
	cmp r1, #0
	bls _0800DC94
_0800DBAE
	ldr r0, [r6, #4]
	ldr r3, [sp, #0x10]
	add r1, sp, #0x24
	ldrb r1, [r1, r3]
	lsls r3, r1, #3
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [r6, #8]
	ldr r1, [r5]
	ldr r2, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	lsls r3, r1, #2
	adds r1, r3, r1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x48]
	subs r2, #1
	str r2, [sp, #0x18]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0800DC42
	ldr r1, [sp, #0x14]
	movs r2, #0xc
	ldrh r1, [r1]
	ldr r3, [sp, #0x10]
	bics r1, r2
	movs r2, #3
	subs r2, r2, r3
	lsls r2, r2, #0x1e
	lsrs r1, r1, #2
	lsls r1, r1, #2
	lsrs r2, r2, #0x1e
	orrs r1, r2
	movs r2, #0x1f
	lsls r2, r2, #8
	bics r1, r2
	ldr r2, [sp, #0x18]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x13
	orrs r1, r2
	movs r2, #3
	lsls r2, r2, #0xe
	bics r1, r2
	movs r2, #0
	orrs r2, r1
	ldr r1, [sp, #0x14]
	strh r2, [r1]
	ldr r3, [r0, #4]
	movs r1, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	cmp r3, #9
	beq _0800DC1E
	movs r1, #0
_0800DC1E
	movs r3, #0x80
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x18
	bics r2, r3
	orrs r1, r2
	movs r2, #0x40
	bics r1, r2
	ldr r2, [sp, #0x14]
	lsls r3, r3, #0x13
	strh r1, [r2]
	ldr r1, [sp, #0x14]
	str r1, [r4, #8]
	ldrh r1, [r3]
	ldr r7, [sp, #0x20]
	lsrs r2, r3, #0x12
	lsls r2, r7
	orrs r1, r2
	strh r1, [r3]
_0800DC42
	ldr r1, [sp, #0x14]
	ldr r7, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x14]
	movs r1, #3
	adds r7, #1
	str r7, [sp, #0x20]
	lsls r1, r1, #0x19
	str r1, [r4, #4]
	ldr r2, [sp, #0x18]
	movs r3, #0
	lsls r2, r2, #0xb
	adds r1, r2, r1
	str r1, [r4]
	ldr r1, [r4, #0x48]
	ldr r2, [sp, #0x18]
	lsrs r1, r1, #0xa
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x16
	lsls r1, r1, #0xa
	orrs r1, r2
	str r1, [r4, #0x48]
	str r3, [r4, #0x38]
	str r3, [r4, #0x3c]
	ldr r2, [r0, #4]
	movs r1, #1
	lsls r2, r2, #8
	lsrs r2, r2, #0x1c
	cmp r2, #9
	beq _0800DC80
	movs r1, #0
_0800DC80
	movs r7, #1
	lsls r7, r7, #0xa
	ldr r2, [r4, #0x48]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x15
	bics r2, r7
	orrs r1, r2
	str r1, [r4, #0x48]
	movs r3, #0
	b _0800DC96
_0800DC94
	b _0800DE22
_0800DC96
	adds r2, r4, #0
	adds r2, #0x40
	strh r3, [r2, #0xa]
	ldr r3, [r0, #4]
	lsls r7, r7, #1
	lsls r3, r3, #8
	lsrs r3, r3, #0x1c
	adds r1, r7, #0
	cmp r3, #9
	beq _0800DCAC
	lsrs r1, r1, #1
_0800DCAC
	strh r1, [r2, #0xc]
	ldr r1, [r4, #0x48]
	bics r1, r7
	str r1, [r4, #0x48]
	ldr r1, [r5, #0x1c]
	str r0, [r4, #0x54]
	str r1, [r4, #0x34]
	str r5, [r4, #0x50]
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r1, r0, #0x1a
	beq _0800DDA8
	lsrs r0, r0, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x50]
	movs r0, #0
	ldr r1, [r1]
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	beq _0800DDB2
_0800DCE4
	lsls r7, r0, #2
	adds r7, r7, r0
	lsls r7, r7, #2
	ldr r1, [r5, #0x1c]
	mov lr, r7
	adds r1, r1, r7
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #8]
	ldr r2, [r4, #0x30]
	lsls r1, r1, #0xf
	lsrs r7, r1, #0x1a
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r2, r1
	str r2, [sp, #0x34]
	mov ip, r3
	movs r3, #0xff
	ldr r2, [r2]
	lsls r3, r3, #7
	bics r2, r3
	lsls r3, r7, #7
	orrs r2, r3
	ldr r3, [sp, #0x34]
	str r2, [r3]
	str r2, [sp, #0x30]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldr r2, [r2, #8]
	lsls r2, r2, #0xf
	lsrs r3, r2, #0x1a
	ldr r2, [r4, #0x30]
	adds r7, r2, r1
	ldr r2, [sp, #0x30]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	orrs r2, r3
	str r2, [r7]
	ldr r3, [r4, #0x30]
	movs r7, #0x40
	bics r2, r7
	adds r3, r3, r1
	str r2, [r3]
	ldr r2, [r5, #0x1c]
	add r2, lr
	ldrh r3, [r2, #4]
	ldrh r7, [r2, #6]
	muls r3, r7
	adds r2, r3, #0
	ldr r3, [r4, #0x30]
	adds r3, r3, r1
	strh r2, [r3, #2]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0xc]
	ldr r2, [r4, #0x30]
	adds r2, r2, r1
	str r2, [sp, #0x2c]
	ldr r3, [r5, #0x1c]
	ldrh r2, [r2, #2]
	add r3, lr
	ldr r3, [r3, #8]
	b _0800DD70
	ALIGN
_0800DD64 DCDU gUnknown_03003EB0
_0800DD68 DCDU 0xFF800FFF
_0800DD6C DCDU 0x04000008
_0800DD70
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x19
	subs r3, #1
	muls r2, r3
	lsls r2, r2, #1
	adds r3, r2, #0
	ldr r2, [sp, #0x2c]
	add r3, ip
	str r3, [r2, #0x10]
	ldr r2, [r4, #0x30]
	mov r3, ip
	adds r2, r2, r1
	str r3, [r2, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r3, [r4, #0x30]
	adds r2, #1
	adds r3, r3, r1
	strh r2, [r3, #4]
	ldr r2, [r4, #0x30]
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r2, [sp, #0x1c]
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x50]
	adds r0, #1
	ldr r1, [r1]
	b _0800DDAA
_0800DDA8
	b _0800DDCA
_0800DDAA
	lsls r1, r1, #6
	lsrs r1, r1, #0x1a
	cmp r1, r0
	bhi _0800DCE4
_0800DDB2
	ldrh r1, [r5, #4]
	ldr r0, [sp, #0x40]
	ldr r2, _0800E15C ;@ =0x007FF000
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0xc
	adds r1, r0, r1
	ands r1, r2
	mvns r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
_0800DDCA
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0800DDDA
	ldr r0, [sp, #0x3c]
	str r4, [r0, #0x20]
_0800DDDA
	movs r7, #0
	ldr r1, _0800E160 ;@ =gUnknown_08041448
	str r7, [r4, #0xc]
	ldr r0, [r1, #4]
	ldr r2, _0800E164 ;@ =gUnknown_08041468
	str r0, [r4, #0x10]
	ldr r0, [r2, #4]
	ldr r3, _0800E168 ;@ =gUnknown_08041488
	str r0, [r4, #0x14]
	ldr r0, [r3, #4]
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	ldr r0, [r1, #0x14]
	adds r1, r5, #0
	str r0, [r4, #0x20]
	ldr r0, [r2, #0x14]
	add r2, sp, #0x44
	str r0, [r4, #0x24]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x28]
	ldr r0, _0800E16C ;@ =gUnknown_080414A8
	ldr r0, [r0, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x50]
	ldr r3, [r0, #0x18]
	ldm r2!, {r0, r2}
	bl sub_8001BB4
	ldr r3, [sp, #0x10]
	adds r4, #0x58
	adds r3, #1
	str r3, [sp, #0x10]
	ldrb r0, [r6]
	cmp r0, r3
	bls _0800DE22
	b _0800DBAE
_0800DE22
	ldr r0, [sp, #0x40]
	ldr r0, [r0, #0x3c]
	lsls r0, r0, #9
	lsrs r1, r0, #0x15
	beq _0800DE46
	lsrs r0, r0, #0x15
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0xc
	movs r3, #0
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x14]
	b _0800DE4C
_0800DE46
	ldr r0, [sp, #0x40]
	movs r3, #0
	str r3, [r0, #0x14]
_0800DE4C
	ldr r0, [sp, #0x40]
	ldr r2, _0800E170 ;@ =0xFFFFF001
	ldr r0, [r0, #0x3c]
	ldr r1, [sp, #0x40]
	ands r0, r2
	str r0, [r1, #0x3c]
	ldr r1, [sp, #0x48]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0800DE90
	ldr r4, _0800E174 ;@ =gUnknown_03003EB0
	ldr r0, [r4]
	bl sub_8002698
	ldrb r0, [r6]
	movs r5, #0
	ldr r7, [sp, #0x38]
	cmp r0, #0
	bls _0800DE86
_0800DE72
	movs r2, #1
	adds r1, r7, #0
	ldr r0, [r4]
	bl sub_800288A
	ldrb r0, [r6]
	adds r5, #1
	adds r7, #0x58
	cmp r0, r5
	bhi _0800DE72
_0800DE86
	ldr r2, [sp, #0x28]
	ldrh r0, [r2]
	lsrs r0, r0, #3
	lsls r0, r0, #3
	strh r0, [r2]
_0800DE90
	ldr r0, [sp, #0x3c]
	movs r5, #1
	ldr r1, [r0, #0x20]
	adds r6, r5, #0
	ldr r0, [r1, #0x50]
	ldr r1, [r1, #0x54]
	ldrh r2, [r0, #0xc]
	ldr r1, [r1, #4]
	ldrh r0, [r0, #0xe]
	lsls r4, r1, #5
	lsls r1, r1, #2
	lsrs r1, r1, #0x1d
	lsls r5, r1
	lsrs r4, r4, #0x1d
	lsls r6, r4
	ldr r1, [sp, #0x3c]
	movs r3, #0
	str r3, [r1, #0x28]
	muls r2, r6
	lsls r2, r2, #0x10
	ldr r1, [sp, #0x3c]
	asrs r2, r2, #0x10
	subs r2, #0xf0
	str r3, [r1, #0x2c]
	lsls r1, r2, #0x10
	ldr r2, [sp, #0x3c]
	muls r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r1, [r2, #0x30]
	ldr r1, [sp, #0x3c]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r1, #0x34]
	movs r0, #1
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #0x13
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x40]
	movs r1, #1
	ldr r0, [r0, #0x3c]
	lsls r1, r1, #0x18
	bics r0, r1
	lsrs r1, r1, #1
	bics r0, r1
	ldr r1, [sp, #0x40]
	str r0, [r1, #0x3c]
	add sp, #0x4c
	pop {r4, r5, r6, r7}
	pop {r3}
	movs r0, #1
	bx r3


	thumb_func_start sub_800DEF8
sub_800DEF8 ;@ 0x0800DEF8
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	movs r2, #0x27
	lsls r2, r2, #6
	adds r1, r0, r2
	sub sp, #0x10
	str r1, [sp, #0xc]
	adds r7, r0, #0
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r1, [sp, #0xc]
	movs r6, #0
	str r0, [r1, #0x3c]
	adds r0, r2, #0
	subs r0, #0xff
	subs r0, #0x81
	adds r4, r7, r0
	ldr r1, [r7, #8]
	movs r0, #0
	cmp r1, #0
	beq _0800DF26
	ldrb r0, [r1]
_0800DF26
	cmp r0, #0
	bls _0800DFFA
_0800DF2A
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	mov ip, r0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0800DF78
	ldr r0, [r4, #0x50]
	ldr r2, [r0]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1e
	cmp r2, #1
	beq _0800DF4A
	cmp r2, #2
	bne _0800DF78
_0800DF4A
	ldr r2, [sp, #0x14]
	ldr r2, [r2]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x10
	ldrsh r5, [r0, r3]
	asrs r2, r2, #8
	muls r2, r5
	add r2, ip
	str r2, [r4, #0x38]
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #4]
	asrs r3, r2, #0x1f
	lsrs r3, r3, #0x18
	adds r2, r3, r2
	movs r3, #0x12
	ldrsh r0, [r0, r3]
	asrs r2, r2, #8
	muls r2, r0
	adds r0, r2, r1
	str r0, [r4, #0x3c]
	b _0800DFA0
_0800DF78
	ldr r0, [r4, #0x50]
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _0800E068
	lsls r0, r6, #2
	movs r1, #0x27
	lsls r1, r1, #6
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _0800DFA0
	adds r1, r4, #0
	adds r1, #0x38
	ldr r2, [r0, #0x2c]
	adds r0, r6, #0
	bl sub_803B8CE
_0800DFA0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x44]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	cmp r1, #3
	bne _0800E00E
	ldr r1, [sp, #4]
	cmp r1, #7
	ble _0800DFD6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #4]
	b _0800DFE6
_0800DFD6
	ldr r1, [sp, #4]
	adds r3, r1, #7
	bge _0800DFE6
	ldrh r0, [r0, #0xc]
	ldr r1, [sp, #4]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #4]
_0800DFE6
	ldr r0, [sp, #8]
	cmp r0, #7
	ble _0800DFFC
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	subs r0, r0, r1
	str r0, [sp, #8]
	b _0800E00E
_0800DFFA
	b _0800E144
_0800DFFC
	ldr r0, [sp, #8]
	adds r3, r0, #7
	bge _0800E00E
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0xe]
	ldr r1, [sp, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #8]
_0800E00E
	ldr r1, [sp, #4]
	movs r5, #0
	movs r0, #0
	cmp r1, #0
	beq _0800E05A
	ldr r1, [r4, #0x40]
	lsls r2, r1, #0xd
	mov ip, r2
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x38]
	bne _0800E02E
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq _0800E036
	movs r5, #1
	b _0800E036
_0800E02E
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _0800E036
	movs r0, #1
_0800E036
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x38]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq _0800E050
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq _0800E048
	movs r0, #1
_0800E048
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq _0800E050
	movs r5, #1
_0800E050
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
_0800E05A
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0800E0AE
	ldr r1, [r4, #0x44]
	lsls r2, r1, #0xd
	mov ip, r2
	b _0800E06A
_0800E068
	b _0800E130
_0800E06A
	lsrs r2, r2, #0x1d
	ldr r2, [r4, #0x3c]
	bne _0800E07C
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	beq _0800E086
	movs r2, #2
	orrs r5, r2
	b _0800E086
_0800E07C
	lsls r2, r2, #0xd
	lsrs r2, r2, #0x1d
	bne _0800E086
	movs r2, #2
	orrs r0, r2
_0800E086
	asrs r2, r1, #0x13
	ldr r1, [r4, #0x3c]
	asrs r3, r1, #0x13
	cmp r2, r3
	beq _0800E0A4
	mov r2, ip
	lsrs r2, r2, #0x1d
	beq _0800E09A
	movs r2, #2
	orrs r0, r2
_0800E09A
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1d
	beq _0800E0A4
	movs r2, #2
	orrs r5, r2
_0800E0A4
	movs r2, #1
	ldr r1, [r4, #0x48]
	lsls r2, r2, #0xb
	orrs r1, r2
	str r1, [r4, #0x48]
_0800E0AE
	cmp r0, #0
	beq _0800E0C8
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _0800E0C8
	ldr r0, _0800E174 ;@ =gUnknown_03003EB0
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_803B8CE
_0800E0C8
	cmp r5, #0
	beq _0800E0E2
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r3, [r0, #0xc]
	cmp r3, #0
	beq _0800E0E2
	ldr r0, _0800E174 ;@ =gUnknown_03003EB0
	add r2, sp, #4
	adds r1, r4, #0
	ldr r0, [r0]
	bl sub_803B8CE
_0800E0E2
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	ldr r2, [r4, #0x38]
	lsls r0, r0, #0x13
	lsls r1, r1, #0x13
	cmp r2, r0
	ble _0800E0FE
	subs r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	subs r0, r2, r0
	str r0, [r4, #0x40]
	b _0800E10E
_0800E0FE
	NEGS r3, r0
	cmp r2, r3
	bge _0800E10E
	adds r2, r2, r0
	str r2, [r4, #0x38]
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	str r0, [r4, #0x40]
_0800E10E
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble _0800E120
	subs r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x44]
	b _0800E130
_0800E120
	NEGS r2, r1
	cmp r0, r2
	bge _0800E130
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0800E130
	ldr r1, [r7, #8]
	adds r6, #1
	adds r4, #0x58
	movs r0, #0
	cmp r1, #0
	beq _0800E13E
	ldrb r0, [r1]
_0800E13E
	cmp r0, r6
	bls _0800E144
	b _0800DF2A
_0800E144
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x3c]
	movs r1, #1
	lsls r1, r1, #0x18
	bics r0, r1
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x3c]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800E15C DCDU 0x007FF000
_0800E160 DCDU gUnknown_08041448
_0800E164 DCDU gUnknown_08041468
_0800E168 DCDU gUnknown_08041488
_0800E16C DCDU gUnknown_080414A8
_0800E170 DCDU 0xFFFFF001
_0800E174 DCDU gUnknown_03003EB0
	END