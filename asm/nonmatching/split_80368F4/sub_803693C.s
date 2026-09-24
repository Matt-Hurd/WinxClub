	thumb_func_start sub_803693C
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0x2c]
	adds r4, r0, #0
	ldr r0, _08036B68
	movs r7, #0
	ldr r0, [r0]
	ldr r2, [r5, #0x44]
	mvns r7, r7
	adds r1, r7, #0
	cmp r2, #0
	sub sp, #0xc
	beq %3
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r5, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
3
	adds r5, r4, #0
	adds r5, #0xe0
	lsls r0, r1, #0x10
	ldrh r1, [r5]
	lsrs r0, r0, #0x10
	cmp r0, r1
	beq %6
	ldr r0, _08036B6C
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	adds r0, #0x58
	ldr r1, [r0]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #4
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x58
	bl sub_80187A0
	cmp r0, #0x23
	bls %4
	movs r0, #0x1e
	movs r1, #0x7d
	strb r0, [r1, r4]
	ldrh r1, [r5]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %4
	bl sub_8000914
4
	ldr r0, _08036B68
	ldr r6, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r6, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %5
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r6, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
5
	lsls r0, r1, #0x10
	ldrh r1, [r5, #2]
	adds r6, r4, #0
	adds r6, #0x80
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne %7
	ldr r5, _08036B70
	ldr r0, [r5]
	ldr r1, [r6, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne %6
	ldr r0, [r5]
	ldr r1, [r6, #0x30]
	lsls r1, r1, #5
	lsrs r1, r1, #0x18
	lsls r1, r1, #5
	adds r0, r1, r0
	bl sub_8028BE4
	cmp r0, #0
	bne %6
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r2, [r1, #0x58]
	adds r1, r2, r1
	bl __call_via_r1
6
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
7
	ldr r0, _08036B68
	ldr r7, [r4, #0x2c]
	ldr r0, [r0]
	ldr r2, [r7, #0x44]
	movs r1, #0
	mvns r1, r1
	cmp r2, #0
	beq %8
	bl sub_8000D5A
	ldr r0, [r0, #0x24]
	ldr r1, [r7, #0x44]
	subs r0, r1, r0
	asrs r1, r0, #3
8
	lsls r0, r1, #0x10
	ldr r1, [r6, #0x2c]
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1a
	adds r1, r1, r4
	adds r1, #0x80
	ldr r1, [r1, #0x38]
	lsls r1, r1, #0xa
	lsrs r1, r1, #0x16
	cmp r0, r1
	bne %6
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1f
	bne %6
	ldrh r1, [r5, #2]
	movs r2, #0
	bl sub_80007A0
	ldr r0, [r4, #0x2c]
	bl sub_8000914
	b %6
	thumb_func_end sub_803693C

