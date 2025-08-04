	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB8
	IMPORT __VTABLE__350dword_803EC78
	IMPORT __VTABLE__368dword_803ECF0
	IMPORT nullsub_3
	IMPORT sub_8000532
	IMPORT sub_8000C7C
	IMPORT sub_8000CC6
	IMPORT sub_8000CCA
	IMPORT GetEWRAMStart
	IMPORT sub_800B7DC
	IMPORT sub_800B8A4
	IMPORT sub_800B8CE
	IMPORT sub_800B916
	IMPORT sub_800B9B6
	IMPORT __nw__FUi
	IMPORT sub_803DA18
	IMPORT __da__FPv
	IMPORT sub_803DA9C
	IMPORT sub_8040550

	thumb_func_start g3003448__Init
g3003448__Init
	push {r4, lr}
	adds r4, r0, #0
	bne %2
	movs r0, #0xdf
	lsls r0, r0, #5
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	pop {r4}
	pop {r3}
	bx r3
2
	ldr r0, _08001044
	str r0, [r4]
	ldr r0, _08001048
	str r4, [r0]
	ldr r0, _0800104C
	str r0, [r4]
	adds r0, r4, #4
	bl sub_800B7DC
	movs r0, #0x33
	lsls r0, r0, #7
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r4, r0
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	movs r0, #0x67
	lsls r0, r0, #6
	adds r0, r4, r0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r1, [r0, #0x10]
	ldr r2, _08001050
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x28]
	bics r1, r2
	adds r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	bics r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #0x28]
	adds r0, r4, #0
	b %1

	non_word_aligned_thumb_func_start sub_8000DE6
sub_8000DE6
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x67
	adds r4, r1, #0
	lsls r0, r0, #6
	adds r5, r6, r0
	ldr r0, [r5, #0x28]
	movs r1, #1
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x28]
	ldr r0, [r4]
	bl sub_8000532
	ldr r0, [r4]
	movs r2, #0xff
	ldr r0, [r0, #0x14]
	lsls r2, r2, #0xd
	ldr r1, [r0]
	movs r7, #0
	orrs r1, r2
	str r1, [r0]
	ldr r0, [r4]
	ldr r2, [r0, #0x14]
	movs r0, #0x1f
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r2]
	ldr r1, [r4]
	ldr r2, _08001054
	ldr r1, [r1, #0x14]
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r4]
	movs r2, #0xff
	ldr r1, [r1, #0x14]
	orrs r0, r2
	str r0, [r1]
	ldr r0, [r4]
	str r7, [r0, #0x14]
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r6, #0x1e]
	ldr r1, [r4]
	strh r0, [r1]
	ldr r0, [r4]
	ldr r1, [r5]
	subs r0, r0, r1
	bl sub_8040550
	strh r1, [r6, #0x1e]
	str r7, [r4]
	ldr r0, [r5, #0x28]
	lsrs r1, r0, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0x12
	bics r0, r1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8000E6C
sub_8000E6C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r7, r6, r0
	ldrh r0, [r7, #0x1c]
	movs r1, #0x67
	lsls r1, r1, #6
	adds r4, r6, r1
	movs r5, #1
	cmp r0, #1
	blt %5
3
	lsls r1, r5, #1
	adds r1, r1, r5
	ldr r0, [r4]
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq %4
	mov r1, sp
	adds r0, r6, #0
	bl sub_8000DE6
4
	ldrh r0, [r7, #0x1c]
	adds r5, #1
	cmp r0, r5
	bge %3
5
	movs r6, #1
	ldr r0, [r4, #0x28]
	lsls r6, r6, #0x12
	orrs r0, r6
	str r0, [r4, #0x28]
	ldr r0, [r4]
	bl __da__FPv
	movs r5, #0
	str r5, [r4]
	ldr r0, [r4, #0x10]
	bl __da__FPv
	str r5, [r4, #0x10]
	strh r5, [r7, #0x1c]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	ldr r0, [r4, #0x28]
	ldr r5, _08001058
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r5]
	cmp r0, #0
	beq %6
	bl sub_800B8CE
	ldr r0, [r5]
	bl sub_800B916
6
	ldr r0, [r4, #0x28]
	bics r0, r6
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000EF6
sub_8000EF6
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800104C
	adds r7, r1, #0
	str r0, [r4]
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq %7
	adds r0, r4, #0
	bl sub_8000E6C
7
	ldr r0, [r5, #0x1c]
	movs r6, #0
	cmp r0, #0
	beq %8
	bl __da__FPv
	str r6, [r5, #0x1c]
8
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq %9
	bl __da__FPv
	str r6, [r5, #0x24]
9
	movs r1, #0
	adds r0, r4, #4
	bl sub_800B8A4
	ldr r0, _08001044
	cmp r7, #0
	str r0, [r4]
	ldr r0, _08001048
	str r6, [r0]
	beq %10
	adds r0, r4, #0
	bl sub_803DA18
10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3

	thumb_func_start sub_8000F4C
sub_8000F4C
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x67
	lsls r0, r0, #6
	adds r4, r7, r0
	ldr r0, [r4, #0x1c]
	movs r6, #0
	adds r5, r2, #0
	cmp r0, #0
	sub sp, #4
	beq %11
	bl __da__FPv
	str r6, [r4, #0x1c]
11
	cmp r5, #0
	beq %14
	movs r3, #0
	str r3, [r4, #0x18]
	bl GetEWRAMStart
	adds r1, r0, #0
	lsls r6, r5, #1
	movs r3, #0
	movs r2, #0
	adds r0, r6, #0
	bl sub_803DA9C
	str r0, [r4, #0x1c]
	movs r0, #0
	subs r1, r5, #1
	beq %13
	subs r3, r5, #1
12
	adds r1, r0, #1
	ldr r2, [r4, #0x1c]
	lsls r0, r0, #1
	strh r1, [r2, r0]
	adds r0, r1, #0
	cmp r1, r3
	blo %12
13
	ldr r1, [r4, #0x1c]
	movs r0, #0
	mvns r0, r0
	adds r1, r1, r6
	subs r1, #0x20
	strh r0, [r1, #0x1e]
14
	adds r1, r5, #0
	adds r0, r7, #4
	adds r4, r0, #0
	bl sub_8000CC6
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	bl sub_8000CCA
	adds r0, r4, #0
	ldr r1, [sp, #8]
	bl sub_8000C7C
	adds r0, r4, #0
	bl sub_800B9B6
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_8000FCE
sub_8000FCE
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #4
	bl nullsub_3
	movs r0, #0x67
	lsls r0, r0, #6
	adds r5, r4, r0
	ldr r0, [r5, #0x24]
	movs r7, #0
	cmp r0, #0
	beq %15
	bl __da__FPv
	str r7, [r5, #0x24]
15
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq %18
	adds r6, r4, #0
	adds r6, #0x60
	ldrh r0, [r6, #0x1a]
	str r0, [r5, #0x20]
	bl GetEWRAMStart
	adds r1, r0, #0
	ldr r0, [r4, #0x54]
	lsls r0, r0, #1
	adds r3, r7, #0
	movs r2, #0
	bl sub_803DA9C
	str r0, [r5, #0x24]
	ldr r1, [r4, #0x54]
	movs r0, #0
	subs r1, #1
	beq %17
16
	ldrh r1, [r6, #0x1a]
	ldr r2, [r5, #0x24]
	lsls r3, r0, #1
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r2, r3]
	ldr r1, [r4, #0x54]
	adds r0, #1
	subs r1, #1
	cmp r1, r0
	bhi %16
17
	ldr r2, [r4, #0x54]
	ldr r1, [r5, #0x24]
	movs r0, #0
	lsls r2, r2, #1
	adds r1, r1, r2
	mvns r0, r0
	subs r1, #0x20
	strh r0, [r1, #0x1e]
18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_08001044 DCDU __VTABLE__368dword_803ECF0
_08001048 DCDU gUnknown_03003EB8
_0800104C DCDU __VTABLE__350dword_803EC78
_08001050 DCDU 0x0000FFFF
_08001054 DCDU 0xFFE00000
_08001058 DCDU gUnknown_03003EA0
	END
