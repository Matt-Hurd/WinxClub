	non_word_aligned_thumb_func_start maybeInitGame
maybeInitGame
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, sp, #0x18
	adds r0, r5, #0
	bl sub_8031578
	ldr r4, _0800ECD0
	ldr r1, _0800ECD4
	ldr r0, [r4]
	bl sub_80315FC
	movs r1, #3
	ldr r0, [r4]
	bl sub_80315CE
	ldr r0, [r4]
	ldr r2, _0800ECD8
	ldr r1, _0800ECDC
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #0
	ldr r2, _0800ECE4
	ldr r3, _0800ECE0
	bl sub_8031600
	ldr r0, [r4]
	ldr r2, _0800ECE8
	ldr r1, _0800ECEC
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #1
	ldr r2, _0800ECF4
	ldr r3, _0800ECF0
	bl sub_8031600
	ldr r0, [r4]
	ldr r2, _0800ECF8
	ldr r1, _0800ECFC
	str r2, [sp, #4]
	str r1, [sp]
	movs r1, #2
	ldr r2, _0800ED04
	ldr r3, _0800ED00
	bl sub_8031600
	movs r1, #1
	adds r0, r5, #0
	bl sub_8031622
	movs r1, #1
	ldr r0, _0800ED08
	bl SetGlobalFunction
	movs r1, #0
	ldr r0, _0800ED0C
	bl SetGlobalFunction
	movs r1, #0x10
	ldr r0, _0800ED10
	bl SetGlobalFunction
	movs r1, #0x13
	ldr r0, _0800ED14
	bl SetGlobalFunction
	movs r1, #0x11
	ldr r0, _0800ED18
	bl SetGlobalFunction
	movs r1, #0x12
	ldr r0, _0800ED1C
	bl SetGlobalFunction
	movs r1, #0x14
	ldr r0, _0800ED20
	bl SetGlobalFunction
	movs r1, #2
	ldr r0, _0800ED24
	bl SetGlobalFunction
	movs r1, #0xf
	ldr r0, _0800ED28
	bl SetGlobalFunction
	movs r1, #0x15
	ldr r0, _0800ED2C
	bl SetGlobalFunction
	movs r1, #3
	ldr r0, _0800ED30
	bl SetGlobalFunction
	movs r1, #4
	ldr r0, _0800ED34
	bl SetGlobalFunction
	movs r1, #5
	ldr r0, _0800ED38
	bl SetGlobalFunction
	movs r1, #6
	ldr r0, _0800ED3C
	bl SetGlobalFunction
	movs r1, #7
	ldr r0, _0800ED40
	bl SetGlobalFunction
	movs r1, #8
	ldr r0, _0800ED44
	bl SetGlobalFunction
	movs r1, #9
	ldr r0, _0800ED48
	bl SetGlobalFunction
	movs r1, #0xa
	ldr r0, _0800ED4C
	bl SetGlobalFunction
	movs r1, #0xd
	ldr r0, _0800ED50
	bl SetGlobalFunction
	movs r1, #0x16
	ldr r0, _0800ED54
	bl SetGlobalFunction
	movs r1, #0x17
	ldr r0, _0800ED58
	bl SetGlobalFunction
	movs r1, #0xb
	ldr r0, _0800ED5C
	bl SetGlobalFunction
	movs r1, #0xc
	ldr r0, _0800ED60
	bl SetGlobalFunction
	ldr r0, _0800ED64
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0800ED68
	strb r4, [r0]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl SomehowInitEWRAMLinkedList
	ldr r6, _0800ED6C
	str r0, [r6, #0x30]
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #1
	adds r3, r4, #0
	movs r2, #0
	lsls r0, r0, #0xb
	bl sub_803DA9C
	movs r1, #1
	lsls r1, r1, #0xb
	bl SomehowInitEWRAMLinkedList
	str r0, [r6, #0x34]
	movs r0, #0
	bl InitKeyinputIE
	bl sub_802363C
	movs r2, #0x4b
	lsls r2, r2, #0xa
	mvns r1, r4
	movs r0, #3
	lsls r0, r0, #0x19
	bl __16__rt_memset
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	add r5, sp, #0xc
	adds r0, r5, #0
	bl sub_8004716
	movs r2, #0
	movs r1, #1
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r4, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	movs r1, #0xce
	ldr r0, [r6, #0x1c]
	bl sub_8017884
	ldr r2, _0800ED6C
	movs r0, #8
	adds r2, #0x40
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
42
	movs r0, #1
	bl SetNextGlobalFunction
	bl MainLoop
	cmp r0, #0
	bne %42
	bl sub_800E53C
	ldr r0, _0800ED70
	ldr r0, [r0]
	bl sub_803DA18
	movs r1, #0
	add r0, sp, #0x18
	bl sub_80315A2
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r3}
	bx r3

