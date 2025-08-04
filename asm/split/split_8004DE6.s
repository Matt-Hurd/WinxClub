	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E84
	IMPORT gUnknown_03003EA8
	IMPORT __VTABLE__347dword_803EC6C
	IMPORT __VTABLE__365dword_803ECE4
	IMPORT strStartsWith
	IMPORT gameStrlen
	IMPORT strToLower
	IMPORT strchr
	IMPORT sub_800529A
	IMPORT __16__rt_memclr_w
	IMPORT __16__rt_memcpy
	IMPORT sub_803D9A8
	IMPORT sub_803D9C4
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT sub_803DABC

	thumb_func_start nullsub_24
nullsub_24
	bx lr

	non_word_aligned_thumb_func_start LoadFiletable
LoadFiletable
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r0, #0
	cmp r0, #0
	sub sp, #0x14
	bne %2
	movs r0, #0xc
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	ldr r0, _08005034
	movs r1, #0
	str r0, [r4]
	ldr r0, _08005038
	str r4, [r0]
	ldr r0, _0800503C
	str r0, [r4]
	movs r0, #1
	lsls r0, r0, #0x1b
	adds r5, r5, r0
	add r0, sp, #0xc
	movs r2, #0
	stm r0!, {r1, r2}
3
	ldr r0, _08005040
	movs r3, #0
	adds r2, r7, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_800529A
	adds r6, r0, #0
	ldr r0, _08005040
	adds r2, r7, #0
	adds r1, r5, #0
	ldr r0, [r0]
	bl sub_803DABC
	adds r2, r0, #0
	adds r1, r6, #0
4
	ldrb r3, [r1]
	cmp r3, #0x53
	bne %5
	ldrb r3, [r1, #1]
	cmp r3, #0x46
	bne %5
	ldrb r3, [r1, #2]
	cmp r3, #0x43
	bne %5
	ldrb r3, [r1, #3]
	cmp r3, #0x44
	beq %6
5
	adds r1, #4
	subs r0, #4
	cmp r0, #0
	bgt %4
	movs r1, #0
6
	cmp r1, #0
	beq %7
	subs r0, r1, r6
	adds r5, r0, r5
	ldr r0, [r1, #4]
	ldr r2, [r1]
	str r0, [sp, #0x10]
	str r2, [sp, #0xc]
	b %8
7
	adds r5, r5, r2
	subs r7, r7, r2
	bne %3
8
	ldr r6, _08005040
	movs r2, #8
	adds r1, r5, #0
	ldr r0, [r6]
	bl sub_803DABC
	adds r7, r0, #0
	cmp r0, #8
	bhs %9
	adds r1, r5, r7
	movs r3, #0
	movs r2, #8
	ldr r0, [r6]
	bl sub_800529A
	adds r1, r0, #0
	movs r0, #8
	subs r2, r0, r7
	add r0, sp, #0xc
	adds r0, r0, r7
	bl __16__rt_memcpy
9
	ldr r0, [sp, #0x10]
	adds r7, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, #8
	adds r0, r0, r7
	str r0, [r4, #8]
	ldr r0, [sp, #0x10]
	movs r3, #0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, #8
	movs r2, #0
	movs r0, #1
	bl sub_803D9C4
	str r0, [r4, #4]
	add r2, sp, #0xc
	ldm r2!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #4]
	lsls r5, r0, #0x10
	lsrs r5, r5, #0x10
	adds r1, #8
	str r1, [sp, #8]
10
	ldr r6, _08005040
	movs r3, #0
	adds r2, r5, #0
	adds r1, r7, #0
	ldr r0, [r6]
	bl sub_800529A
	str r0, [sp, #4]
	adds r2, r5, #0
	adds r1, r7, #0
	ldr r0, [r6]
	bl sub_803DABC
	adds r6, r0, #0
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl __16__rt_memcpy
	ldr r1, [sp, #8]
	adds r7, r7, r6
	adds r1, r1, r6
	str r1, [sp, #8]
	subs r5, r5, r6
	bne %10
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_8004F12
sub_8004F12
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800503C
	adds r5, r1, #0
	movs r2, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_803D9A8
	ldr r0, _08005034
	movs r1, #0
	stm r4!, {r0, r1}
	ldr r0, _08005038
	subs r4, #8
	cmp r5, #0
	str r1, [r0]
	beq %11
	adds r0, r4, #0
	bl sub_803DA18
11
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8004F42
sub_8004F42
	push {r0, r1, r2, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r0, [sp, #0x48]
	adds r7, r2, #0
	ldr r5, [r0, #4]
	adds r6, r1, #0
	adds r5, #8
12
	movs r4, #0
	movs r1, #0x40
	add r0, sp, #8
	bl __16__rt_memclr_w
	cmp r6, #0
	beq %14
	movs r1, #0x5c
	adds r0, r6, #0
	bl strchr
	adds r4, r0, #0
	bne %13
	movs r1, #0x2f
	adds r0, r6, #0
	bl strchr
	adds r4, r0, #0
	bne %13
	adds r0, r6, #0
	bl gameStrlen
	adds r4, r0, r6
13
	subs r2, r4, r6
	adds r1, r6, #0
	add r6, sp, #8
	adds r0, r6, #0
	bl __16__rt_memcpy
	adds r0, r6, #0
	bl strToLower
14
	ldm r5!, {r0}
	lsls r6, r0, #0x10
	lsrs r6, r6, #0x10
15
	cmp r4, #0
	beq %18
	adds r0, r5, #0
	adds r0, #8
	add r1, sp, #8
	bl strStartsWith
	cmp r0, #0
	beq %18
	ldrb r0, [r4]
	cmp r0, #0
	beq %16
	ldr r0, [r5, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	adds r5, r0, r5
	cmp r6, #0
	beq %20
	adds r6, r4, #1
	b %12
16
	adds r0, r5, #0
17
	add sp, #0x54
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
18
	cmp r7, #0
	beq %19
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #8]
	ldr r1, [r5, #4]
	lsls r1, r1, #3
	lsrs r1, r1, #3
	adds r0, r0, r1
	cmp r0, r7
	bne %19
	adds r0, r5, #0
	b %17
19
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #4]
	bl gameStrlen
	adds r0, #4
	lsrs r0, r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #2
	adds r5, r0, r1
	subs r6, #1
	bne %15
20
	movs r0, #0
	b %17

	thumb_func_start sub_8004FFC
sub_8004FFC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	bl sub_8004F42
	cmp r0, #0
	bne %22
21
	pop {r4}
	pop {r3}
	bx r3
22
	ldr r1, [r4, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	adds r0, r1, r0
	b %21

	thumb_func_start sub_800501C
sub_800501C
	push {r3, lr}
	movs r2, #0
	bl sub_8004F42
	movs r1, #0
	cmp r0, #0
	beq %23
	ldr r1, [r0]
23
	add sp, #4
	pop {r3}
	adds r0, r1, #0
	bx r3
	ALIGN
_08005034 DCDU __VTABLE__365dword_803ECE4
_08005038 DCDU gUnknown_03003EA8
_0800503C DCDU __VTABLE__347dword_803EC6C
_08005040 DCDU gUnknown_03003E84
	END
