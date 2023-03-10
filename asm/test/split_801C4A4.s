    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT gUnknown_03003450
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003478
	IMPORT sub_8001B80
	IMPORT sub_801B332
	IMPORT sub_801BEB6
	IMPORT sub_801C210
	IMPORT sub_801C352
	IMPORT sub_801F4F0
	IMPORT sub_801F65C
	IMPORT sub_801F6DE
	IMPORT sub_802222C
	IMPORT sub_80293D0
	IMPORT sub_803B8CA
	IMPORT sub_803B8D0
	IMPORT sub_803B8D4
	IMPORT sub_803B8D6
	IMPORT sub_803C04C
	IMPORT sub_803F1AC
	IMPORT sub_803F23C
	IMPORT sub_803FD5C
	IMPORT sub_803FF24

	thumb_func_start sub_801C4A4
sub_801C4A4 ;@ 0x0801C4A4
	push {r4, r5, r6, r7, lr}
	mov lr, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r4, [r1, #0x20]
	sub sp, #0x14
	ldr r1, [r4, #0x7c]
	movs r2, #5
	lsls r2, r2, #8
	movs r5, #0
	str r1, [sp, #0x10]
	lsrs r1, r1, #0x1f
	mvns r5, r5
	adds r6, r0, r2
	cmp r1, #0
	beq _0801C5AA
	ldr r2, [r6, #0x1c]
	movs r1, #0
	lsls r2, r2, #0x18
	str r2, [sp, #0xc]
	lsrs r2, r2, #0x19
	beq _0801C5AC
_0801C4D0
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r5, [r2, #0x20]
	ldr r3, [r5, #0x2c]
	ldr r2, [r3]
	mov ip, r3
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1f
	bne _0801C5AE
	movs r2, #0x8c
	ldr r2, [r2, r5]
	lsls r2, r2, #0x13
	lsrs r2, r2, #0x1f
	beq _0801C5AE
	cmp lr, r1
	beq _0801C5AE
	ldr r2, [r4, #0x34]
	movs r6, #0
_0801C4F4
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq _0801C504
	ldr r3, [r3, #4]
	cmp r3, r2
	beq _0801C50E
_0801C504
	adds r6, #1
	cmp r6, #5
	blo _0801C4F4
	movs r6, #0
	mvns r6, r6
_0801C50E
	adds r3, r6, #1
	beq _0801C5C2
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r2, r3
	bne _0801C5AE
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _0801C52A
	cmp r0, #6
	bne _0801C52E
_0801C52A
	movs r1, #1
	b _0801C530
_0801C52E
	movs r1, #0
_0801C530
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq _0801C53C
	cmp r0, #6
	bne _0801C540
_0801C53C
	movs r0, #1
	b _0801C542
_0801C540
	movs r0, #0
_0801C542
	adds r0, r1, r0
	cmp r0, #1
	beq _0801C576
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x34]
	movs r7, #0
	adds r4, r2, r1
	movs r2, #1
	adds r1, r5, #0
	adds r3, r7, #0
	bl sub_803B8D0
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r7, [r0, #0xc]
_0801C56E
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801C576
	lsls r0, r6, #2
	adds r6, r0, r5
	ldr r0, [r6, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x1c]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r3, r0, #0
	ldr r0, [r4]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r7, r1, r0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_803B8D6
	cmp r0, #0
	ldr r0, [r6, #0x38]
	beq _0801C5B2
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C5B0
_0801C5AA
	b _0801C660
_0801C5AC
	b _0801C652
_0801C5AE
	b _0801C646
_0801C5B0
	b _0801C56E
_0801C5B2
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b _0801C56E
_0801C5C2
	ldr r3, [r5, #0x30]
	cmp r2, r3
	beq _0801C5CC
	cmp r2, ip
	bne _0801C646
_0801C5CC
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _0801C5D8
	cmp r0, #6
	bne _0801C5DC
_0801C5D8
	movs r1, #1
	b _0801C5DE
_0801C5DC
	movs r1, #0
_0801C5DE
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq _0801C5EA
	cmp r0, #6
	bne _0801C5EE
_0801C5EA
	movs r0, #1
	b _0801C5F0
_0801C5EE
	movs r0, #0
_0801C5F0
	adds r0, r1, r0
	cmp r0, #1
	beq _0801C61E
	ldr r1, [r4]
	movs r6, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B8D6
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl sub_803B8D6
	b _0801C56E
_0801C61E
	ldr r1, [r4]
	movs r6, #1
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803B8D6
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	adds r3, r6, #0
	adds r7, r2, r1
	movs r2, #0
	adds r1, r4, #0
	bl sub_803B8D6
	b _0801C56E
_0801C646
	ldr r2, [sp, #0xc]
	adds r1, #1
	lsrs r2, r2, #0x19
	cmp r2, r1
	bls _0801C652
	b _0801C4D0
_0801C652
	ldr r1, [sp, #0x10]
	lsls r0, r1, #1
	lsrs r0, r0, #1
	str r0, [r4, #0x7c]
	movs r6, #0
	str r6, [r4, #0x34]
	b _0801C56E
_0801C660
	movs r1, #0
_0801C662
	lsls r2, r1, #2
	adds r2, r2, r4
	ldr r2, [r2, #0x38]
	cmp r2, #0
	beq _0801C674
	ldr r2, [r2, #0x34]
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x1f
	bne _0801C67C
_0801C674
	adds r1, #1
	cmp r1, #5
	blo _0801C662
	adds r1, r5, #0
_0801C67C
	adds r3, r1, #1
	beq _0801C5B0
	lsls r1, r1, #2
	adds r7, r1, r4
	ldr r1, [r7, #0x38]
	ldr r2, [r1, #0xc]
	ldr r3, [r6, #0x1c]
	mov ip, r1
	lsls r3, r3, #0x18
	str r3, [sp, #8]
	movs r1, #0
	lsrs r3, r3, #0x19
	beq _0801C760
_0801C696
	lsls r3, r1, #2
	adds r3, r3, r0
	ldr r5, [r3, #0x20]
	ldr r3, [r5, #0x2c]
	str r3, [sp, #4]
	ldr r3, [r3]
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1f
	bne _0801C770
	movs r3, #0x8c
	ldr r3, [r3, r5]
	lsls r3, r3, #0x13
	lsrs r3, r3, #0x1f
	beq _0801C770
	cmp lr, r1
	beq _0801C770
	movs r6, #0
_0801C6B8
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	cmp r3, #0
	beq _0801C6C8
	ldr r3, [r3, #4]
	cmp r3, r2
	beq _0801C6D2
_0801C6C8
	adds r6, #1
	cmp r6, #5
	blo _0801C6B8
	movs r6, #0
	mvns r6, r6
_0801C6D2
	adds r3, r6, #1
	beq _0801C702
	lsls r3, r6, #2
	adds r3, r3, r5
	ldr r3, [r3, #0x38]
	ldr r3, [r3, #4]
	cmp r3, r2
	bne _0801C770
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x20]
	adds r1, r1, r0
	mov r0, ip
	bl sub_803B8CA
	lsls r0, r6, #2
	adds r0, r0, r5
	ldr r0, [r0, #0x38]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C56E
_0801C702
	ldr r3, [r5, #0x30]
	cmp r3, r2
	beq _0801C70E
	ldr r3, [sp, #4]
	cmp r3, r2
	bne _0801C770
_0801C70E
	movs r0, #0x97
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _0801C71A
	cmp r0, #6
	bne _0801C71E
_0801C71A
	movs r1, #1
	b _0801C720
_0801C71E
	movs r1, #0
_0801C720
	movs r0, #0x97
	ldrb r0, [r0, r5]
	cmp r0, #4
	beq _0801C72C
	cmp r0, #6
	bne _0801C730
_0801C72C
	movs r0, #1
	b _0801C732
_0801C730
	movs r0, #0
_0801C732
	adds r0, r1, r0
	cmp r0, #1
	beq _0801C772
	ldr r1, [r5]
	adds r0, r5, #0
	ldr r2, [r1, #0x34]
	movs r6, #0
	adds r3, r2, r1
	adds r1, r4, #0
	adds r4, r3, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_803B8D0
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq _0801C762
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C56E
_0801C760
	b _0801C7C0
_0801C762
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	str r6, [r0, #0xc]
	b _0801C56E
_0801C770
	b _0801C7B4
_0801C772
	mov r0, ip
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, r1, r0
	mov r0, ip
	bl sub_803B8CA
	adds r3, r0, #0
	ldr r0, [r5]
	movs r2, #1
	ldr r1, [r0, #0x34]
	adds r6, r1, r0
	adds r1, r4, #0
	adds r0, r5, #0
	bl sub_803B8D4
	cmp r0, #0
	ldr r0, [r7, #0x38]
	beq _0801C7A4
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r1, r2, r1
	bl sub_803B8CA
	b _0801C56E
_0801C7A4
	movs r2, #1
	ldr r1, [r0, #0x34]
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b _0801C56E
_0801C7B4
	ldr r3, [sp, #8]
	adds r1, #1
	lsrs r3, r3, #0x19
	cmp r3, r1
	bls _0801C7C0
	b _0801C696
_0801C7C0
	mov r0, ip
	ldr r1, [r0, #0x34]
	movs r2, #1
	lsls r2, r2, #0x14
	bics r1, r2
	str r1, [r0, #0x34]
	movs r6, #0
	str r6, [r0, #0xc]
	b _0801C56E

	non_word_aligned_thumb_func_start sub_801C7D2
sub_801C7D2 ;@ 0x0801C7D2
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x29
	lsls r0, r0, #5
	adds r4, r5, r0
	ldrb r1, [r4]
	subs r0, #0x20
	adds r6, r5, r0
	movs r2, #1
	lsls r2, r2, #9
	cmp r1, #0
	ldr r0, [r6, #0x1c]
	sub sp, #0x1c
	beq _0801C800
	lsls r1, r0, #0x16
	bmi _0801C810
	orrs r0, r2
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F1AC
	b _0801C810
_0801C800
	lsls r1, r0, #0x16
	bpl _0801C810
	bics r0, r2
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F1AC
_0801C810
	ldrb r0, [r4, #1]
	movs r1, #1
	lsls r1, r1, #0xa
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq _0801C82E
	lsls r2, r0, #0x15
	bmi _0801C83E
	orrs r0, r1
	str r0, [r6, #0x1c]
	movs r1, #1
	adds r0, r5, #0
	bl sub_803F23C
	b _0801C83E
_0801C82E
	lsls r2, r0, #0x15
	bpl _0801C83E
	bics r0, r1
	str r0, [r6, #0x1c]
	movs r1, #0
	adds r0, r5, #0
	bl sub_803F23C
_0801C83E
	ldrb r0, [r4, #2]
	movs r1, #1
	lsls r1, r1, #0xb
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq _0801C854
	lsls r2, r0, #0x14
	bmi _0801C85C
	orrs r0, r1
	str r0, [r6, #0x1c]
	b _0801C85C
_0801C854
	lsls r2, r0, #0x14
	bpl _0801C85C
	bics r0, r1
	str r0, [r6, #0x1c]
_0801C85C
	ldr r0, [r6, #0x1c]
	movs r7, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	beq _0801C94E
_0801C866
	lsls r0, r7, #2
	adds r0, r0, r5
	ldr r4, [r0, #0x20]
	cmp r7, #0
	beq _0801C898
	ldr r0, [r4, #0x2c]
	ldr r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1f
	beq _0801C898
	movs r0, #0x94
	ldr r0, [r0, r4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1f
	bne _0801C898
	ldr r0, _0801CB08 ;@ =gUnknown_03003454
	movs r1, #3
	ldr r0, [r0]
	lsls r1, r1, #9
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0801C97E
_0801C898
	ldrh r0, [r4, #4]
	cmp r0, #0x10
	beq _0801C980
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r1, r7, #0
	adds r0, r5, #0
	bl sub_801C4A4
	adds r2, r4, #0
	adds r2, #0x80
	str r2, [sp, #0x18]
	ldr r1, [r2, #4]
	movs r3, #0xff
	lsls r0, r1, #0x18
	lsls r3, r3, #8
	bics r1, r3
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [r2, #4]
	ldr r0, _0801CB0C ;@ =gUnknown_03003450
	ldr r0, [r0]
	ldr r1, [r4, #0x58]
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x10
	adds r1, r2, r1
	movs r2, #0x13
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [r0, #0x20]
	asrs r1, r1, #0x10
	ldr r2, [r0, #0x54]
	ldr r2, [r2, #4]
	lsls r3, r2, #5
	lsrs r3, r3, #0x1d
	asrs r1, r3
	str r1, [sp, #4]
	ldr r1, [r4, #0x5c]
	lsls r2, r2, #2
	asrs r3, r1, #0x1f
	lsrs r3, r3, #0x10
	adds r1, r3, r1
	asrs r1, r1, #0x10
	lsrs r2, r2, #0x1d
	asrs r1, r2
	str r1, [sp, #8]
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	lsls r0, r0, #0x1f
	bpl _0801C916
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0xc]
	bl sub_803C04C
	str r1, [sp, #4]
_0801C916
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x1e
	bpl _0801C928
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldrh r0, [r0, #0xe]
	bl sub_803C04C
	str r1, [sp, #8]
_0801C928
	movs r2, #1
	movs r1, #0
	ldr r0, [sp, #0x10]
	bl sub_8001B80
	ldr r1, [r0]
	movs r2, #0xff
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	adds r2, #1
	cmp r1, r2
	ldr r0, [r0, #0x10]
	bhi _0801C95A
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	b _0801C950
_0801C94E
	b _0801C9F8
_0801C950
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	ldrb r0, [r0, r1]
	b _0801C970
_0801C95A
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [sp, #8]
	ldr r2, [r2, #0x20]
	ldr r2, [r2, #0x50]
	ldrh r2, [r2, #0xc]
	muls r1, r2
	lsls r1, r1, #1
	ldrh r0, [r0, r1]
_0801C970
	ldr r2, [sp, #0x18]
	lsls r0, r0, #0x18
	ldr r1, [r2, #4]
	lsrs r1, r1, #8
	lsls r1, r1, #8
	lsrs r0, r0, #0x18
	b _0801C982
_0801C97E
	b _0801C9D2
_0801C980
	b _0801C9AC
_0801C982
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b _0801C9EA
_0801C9AC
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl sub_803B8CA
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl sub_803B8CA
	adds r0, r4, #0
	bl sub_801F4F0
	adds r0, r4, #0
	bl sub_801F6DE
	b _0801C9EA
_0801C9D2
	ldr r0, [r4, #0x7c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x18
	beq _0801C9EA
	ldr r1, _0801CB10 ;@ =gUnknown_03003478
	movs r0, #8
	ldr r1, [r1]
	ands r1, r0
	beq _0801C9EA
	adds r0, r4, #0
	bl sub_801F65C
_0801C9EA
	ldr r0, [r6, #0x1c]
	adds r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, r7
	bls _0801C9F8
	b _0801C866
_0801C9F8
	adds r0, r5, #0
	bl sub_801C352
	adds r0, r5, #0
	bl sub_801C210
	adds r0, r5, #0
	bl sub_801BEB6
	ldr r0, [r5, #0x20]
	bl sub_802222C
	adds r0, r5, #0
	bl sub_801B332
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801CA1E
sub_801CA1E ;@ 0x0801CA1E
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r0, #5
	lsls r0, r0, #8
	adds r0, r2, r0
	ldm r1!, {r6, r7}
	ldr r0, [r0, #0x1c]
	movs r1, #0
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x19
	sub sp, #0xc
	beq _0801CAAE
_0801CA36
	lsls r0, r1, #2
	adds r4, r0, r2
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #4]
	cmp r5, #0xa
	bne _0801CAB6
	movs r5, #0xac
	ldr r5, [r5, r0]
	lsls r5, r5, #5
	lsrs r5, r5, #0x17
	cmp r5, #0x2c
	bne _0801CAB6
	movs r1, #0x2c
	bl sub_80293D0
	ldr r0, [r4, #0x20]
	ldr r2, _0801CB14 ;@ =0xFFFF000F
	adds r0, #0x80
	ldr r1, [r0, #0x2c]
	movs r3, #0
	ands r1, r2
	movs r2, #0x33
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	str r3, [r0, #0x1c]
	movs r2, #0
	ldr r0, _0801CB0C ;@ =gUnknown_03003450
	str r2, [sp]
	ldr r0, [r0]
	movs r1, #0
	bl sub_803FD5C
	ldr r5, [r4, #0x20]
	cmp r6, #0
	str r6, [r5, #0x58]
	str r7, [r5, #0x5c]
	bne _0801CA9E
	cmp r7, #0
	bne _0801CA9E
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, sp, #4
	bl sub_803FF24
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x30]
	add r1, sp, #4
	bl sub_803FF24
_0801CA9E
	ldr r0, [r4, #0x20]
	movs r2, #1
	adds r0, #0x80
	ldr r1, [r0, #0x14]
	lsls r2, r2, #0xb
	bics r1, r2
	orrs r1, r2
	str r1, [r0, #0x14]
_0801CAAE
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
_0801CAB6
	adds r1, #1
	lsrs r0, r3, #0x19
	cmp r0, r1
	bhi _0801CA36
	b _0801CAAE

	thumb_func_start sub_801CAC0
sub_801CAC0 ;@ 0x0801CAC0
	movs r2, #5
	lsls r2, r2, #8
	adds r2, r0, r2
	push {r4, r5, r6}
	ldr r3, [r2, #0x1c]
	movs r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	beq _0801CB04
	movs r3, #1
	lsls r3, r3, #0xb
	movs r4, #0
_0801CAD8
	lsls r5, r1, #2
	adds r5, r5, r0
	ldr r5, [r5, #0x20]
	ldrh r6, [r5, #4]
	cmp r6, #0xa
	bne _0801CAF8
	adds r5, #0x80
	ldr r6, [r5, #0x2c]
	lsls r6, r6, #5
	lsrs r6, r6, #0x17
	cmp r6, #0x2c
	bne _0801CAF8
	ldr r6, [r5, #0x14]
	bics r6, r3
	orrs r6, r4
	str r6, [r5, #0x14]
_0801CAF8
	ldr r5, [r2, #0x1c]
	adds r1, #1
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x19
	cmp r5, r1
	bhi _0801CAD8
_0801CB04
	pop {r4, r5, r6}
	bx lr
	ALIGN
_0801CB08 DCDU gUnknown_03003454
_0801CB0C DCDU gUnknown_03003450
_0801CB10 DCDU gUnknown_03003478
_0801CB14 DCDU 0xFFFF000F
