	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT __16__rt_memclr_w
	IMPORT gUnknown_03003E84
	IMPORT nullsub_1
	IMPORT strToLower
	IMPORT strcpy
	IMPORT strlen
	IMPORT strstr
	IMPORT sub_800529A
	IMPORT sub_802ED1C

	non_word_aligned_thumb_func_start sub_802EF0A

sub_802EF0A
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	ldr r6, _0802F114
	adds r5, r0, #0
	movs r4, #0
	adds r3, r4, #0
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	sub sp, #0x44
	bl sub_800529A
	ldr r0, [r0, #4]
	lsls r7, r0, #0x18
	lsrs r7, r7, #0x18
	ldr r0, [r6]
	bl nullsub_1
	adds r5, #8
	movs r1, #0x40
	add r0, sp, #4
	bl __16__rt_memclr_w
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq %41
	add r6, sp, #4
	adds r0, r6, #0
	ldr r1, [sp, #0x50]
	bl strcpy
	adds r0, r6, #0
	bl strToLower
	adds r0, r6, #0
	bl sub_802ED1C
41
	movs r0, #0
	mvns r0, r0
	adds r7, r7, r0
	movs r6, #0
	cmp r7, r0
	str r0, [sp]
	beq %56
42
	ldr r0, _0802F114
	movs r3, #0
	movs r2, #0x90
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r4, r0, #0
	ldr r0, [r0]
	ldr r1, [sp, #0x48]
	lsrs r0, r0, #0x1c
	cmp r0, r1
	bne %55
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq %53
	ldr r1, [sp, #0x48]
	movs r0, #0
	cmp r1, #9
	bhs %52
	add r3, pc, #0x4
	ldrb r3, [r3, r1]
	lsls r3, r3, #1
	add pc, r3
43
	DCB 0x0F
44
	DCB 0x04
45
	DCB 0x0F
46
	DCB 0x0F
47
	DCB 0x07
48
	DCB 0x0A
49
	DCB 0x0F
50
	DCB 0x0F
51
	DCB 0x0D, 0x00
loc_802ef9a
	adds r0, r4, #0
	adds r0, #0x10
	b %52
loc_802efa0
	adds r0, r4, #0
	adds r0, #8
	b %52
loc_802efa6
	adds r0, r4, #0
	adds r0, #8
	b %52
loc_802efac
	adds r0, r4, #0
	adds r0, #8
52
	cmp r0, #0
	beq %55
	add r1, sp, #4
	bl strstr
	cmp r0, #0
	beq %55
	bl strlen
	ldr r1, [sp]
	cmp r0, r1
	bhs %55
	str r0, [sp]
	adds r6, r5, #4
	b %55
53
	ldr r0, [sp, #0x4c]
	subs r0, #1
	str r0, [sp, #0x4c]
	adds r3, r0, #1
	bne %55
	ldr r0, _0802F114
	ldr r0, [r0]
	bl nullsub_1
	adds r0, r5, #4
54
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
55
	ldr r0, [r4]
	lsls r0, r0, #4
	lsrs r0, r0, #2
	adds r5, r0, r5
	ldr r0, _0802F114
	adds r5, #4
	ldr r0, [r0]
	bl nullsub_1
	subs r7, #1
	bhs %42
	cmp r6, #0
	beq %56
	adds r0, r6, #0
	b %54
56
	movs r0, #0
	b %54

	ALIGN
_0802F114 DCDU gUnknown_03003E84

	END
