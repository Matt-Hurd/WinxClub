	thumb_func_start HandleAlbum
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x58
	add r1, sp, #0xf8
	movs r2, #0x78
	adds r7, r1, #0
	mov r6, sp
	add r0, sp, #8
	ldr r3, _0803546C
	bl __vecmap1c__FPvT1iPFPv_v
	adds r0, r7, #0
	bl sub_80143E0
	adds r0, r6, #0
	adds r0, #0xff
	adds r0, #0x71
	adds r5, r0, #0
	bl sub_80143E0
	adds r0, r6, #0
	bl sub_8034EE0
	adds r4, r5, #0
	adds r4, #0x70
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne %48
39
	ldr r0, _08035470
	movs r1, #0
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	lsls r3, r2, #0x1c
	bmi %40
	ldrh r1, [r0, #6]
40
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r2, #0x1c
	lsls r1, r0, #0x1f
	bpl %41
	movs r0, #6
	strb r0, [r4, #8]
	b %47
41
	lsls r1, r0, #0x1e
	bpl %42
	movs r0, #3
	strb r0, [r4, #8]
	b %47
42
	lsls r1, r0, #0x1d
	bpl %43
	movs r0, #4
	strb r0, [r4, #8]
	b %47
43
	lsls r1, r0, #0x1a
	bpl %44
	movs r1, #0
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8034E4A
	b %47
44
	lsls r1, r0, #0x1b
	bpl %45
	movs r1, #1
	adds r0, r6, #0
	bl sub_8034E4A
	b %47
45
	lsls r1, r0, #0x19
	bpl %46
	movs r1, #3
	mvns r1, r1
	adds r0, r6, #0
	bl sub_8034E4A
	b %47
46
	lsls r0, r0, #0x18
	bpl %47
	movs r1, #4
	adds r0, r6, #0
	bl sub_8034E4A
47
	movs r1, #0
	adds r0, r5, #0
	bl sub_80139AC
	bl sub_800EF2A
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq %39
48
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r6, r0
	ldrb r1, [r0, #2]
	ldrb r0, [r0]
	adds r0, r1, r0
	ldr r1, _08035474
	strb r0, [r1]
	ldr r1, _08035478
	movs r0, #0xb
	strb r0, [r1]
	ldrb r0, [r4, #8]
	cmp r0, #3
	beq %50
	ldr r4, _08035468
	cmp r0, #4
	beq %49
	cmp r0, #6
	bne %51
	movs r0, #0xd
	bl SetNextGlobalFunction
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	b %51
49
	movs r0, #0x11
	bl SetNextGlobalFunction
	movs r2, #0xff
	movs r1, #4
	ldr r0, [r4]
	bl sub_8028A7C
	b %51
50
	movs r0, #4
	bl SetNextGlobalFunction
51
	adds r0, r6, #0
	bl sub_8034D98
	movs r1, #0
	adds r0, r5, #0
	bl sub_8014436
	movs r1, #0
	adds r0, r7, #0
	bl sub_8014436
	movs r2, #0x77
	adds r1, r6, #0
	subs r1, #0x70
	mvns r2, r2
	adds r0, r6, #0
	adds r0, #0x80
	ldr r3, _0803547C
	bl __vecmap1ci__FPvT1iPFPvi_v
	add sp, #0x1fc
	add sp, #0x58
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	thumb_func_end HandleAlbum
