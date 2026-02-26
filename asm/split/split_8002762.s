	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT CpuSet

	non_word_aligned_thumb_func_start sub_8002762

sub_8002762
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #1
	lsls r2, r2, #0xb
	adds r4, r0, r2
	ldr r2, [r4, #0x28]
	lsls r2, r2, #0x1f
	bmi %19
	adds r5, r0, #0
	movs r3, #3
	lsls r3, r3, #0x19
	adds r5, #0x1c
	movs r6, #1
	cmp r1, #0
	ldr r0, [r4, #0x1c]
	beq %20
	cmp r0, r5
	beq %19
18
	ldr r0, [r4, #0x1c]
	subs r0, #8
	str r0, [r4, #0x1c]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	lsls r2, r1, #0x12
	lsrs r3, r2, #0x1d
	adds r2, r6, #0
	lsls r2, r3
	asrs r7, r2, #0x1f
	lsrs r7, r7, #0x1e
	adds r2, r7, r2
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x15
	asrs r2, r2, #2
	lsls r2, r2, #0xb
	lsls r1, r3
	movs r7, #1
	lsls r7, r7, #0x1a
	movs r3, #3
	lsrs r2, r2, #0xb
	adds r2, r2, r7
	lsls r3, r3, #0x19
	adds r1, r1, r3
	bl CpuSet
	ldr r0, [r4, #0x1c]
	cmp r0, r5
	bne %18
19
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
20
	cmp r0, r5
	beq %19
	ldr r0, _08002820
21
	ldr r1, [r4, #0x1c]
	subs r1, #8
	str r1, [r4, #0x1c]
	ldr r1, [r1, #4]
	str r1, [r0]
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	lsls r2, r1, #0x15
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x1d
	lsrs r2, r2, #0x15
	lsls r2, r1
	adds r1, r2, r3
	str r1, [r0, #4]
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	lsls r1, r1, #0x12
	lsrs r2, r1, #0x1d
	adds r1, r6, #0
	lsls r1, r2
	asrs r2, r1, #0x1f
	lsrs r2, r2, #0x1e
	adds r1, r2, r1
	asrs r1, r1, #2
	movs r2, #0x21
	lsls r2, r2, #0x1a
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, [r4, #0x1c]
	cmp r1, r5
	bne %21
	b %19
	ALIGN

	ALIGN
_08002820 DCDU REG_DMA3

	END
