	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EA0
	IMPORT gUnknown_03003EB4
	IMPORT __VTABLE__341dword_803EB3C
	IMPORT __VTABLE__363dword_803ECDC
	IMPORT sub_8000CCE
	IMPORT sub_800B082
	IMPORT sub_8011B28
	IMPORT sub_8011DB2
	IMPORT sub_8011DE4
	IMPORT sub_8011E10
	IMPORT sub_8011E22
	IMPORT sub_8011E3C
	IMPORT sub_8011E52
	IMPORT sub_8011F0E
	IMPORT sub_80120FA
	IMPORT sub_8012126
	IMPORT sub_8012180
	IMPORT sub_80121C4
	IMPORT __16__rt_memclr
	IMPORT __16__rt_memclr_w
	IMPORT CpuSet
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_800B6E0
sub_800B6E0
	push {r3, lr}
	bl sub_8011DB2
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B6EC
sub_800B6EC
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011E52
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B6FA
sub_800B6FA
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8011DE4
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B708
sub_800B708
	push {r3, lr}
	bl sub_8011F0E
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B714
sub_800B714
	push {r3, lr}
	bl sub_8011E22
	cmp r0, #0
	beq %2
	movs r0, #1
1
	add sp, #4
	pop {r3}
	bx r3
2
	movs r0, #0
	b %1

	non_word_aligned_thumb_func_start sub_800B72A
sub_800B72A
	push {r3, lr}
	bl sub_8011E10
	cmp r0, #0
	beq %4
	movs r0, #1
3
	add sp, #4
	pop {r3}
	bx r3
4
	movs r0, #0
	b %3

	thumb_func_start sub_800B740
sub_800B740
	push {r3, lr}
	bl sub_8011E3C
	cmp r0, #0
	beq %6
	movs r0, #1
5
	add sp, #4
	pop {r3}
	bx r3
6
	movs r0, #0
	b %5

	non_word_aligned_thumb_func_start sub_800B756
sub_800B756
	push {r3, lr}
	movs r0, #5
	bl sub_8011B28
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B764
sub_800B764
	push {r3, lr}
	movs r0, #3
	bl sub_8011B28
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B772
sub_800B772
	push {r3, lr}
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_80120FA
	add sp, #4
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B782
sub_800B782
	push {r3, lr}
	adds r0, r1, #0
	bl sub_8012180
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800B790
sub_800B790
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [r4, #8]
	lsls r3, r3, #0x1b
	bmi %7
	bl sub_8012126
7
	pop {r4}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B7AA
sub_800B7AA
	push {r3, lr}
	adds r0, r1, #0
	bl sub_80121C4
	cmp r0, #0
	beq %9
	movs r0, #1
8
	add sp, #4
	pop {r3}
	bx r3
9
	movs r0, #0
	b %8

	non_word_aligned_thumb_func_start sub_800B7C2
sub_800B7C2
	ldr r2, [r0, #8]
	movs r3, #0x10
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1b
	bics r2, r3
	orrs r1, r2
	str r1, [r0, #8]
	bx lr

	non_word_aligned_thumb_func_start sub_800B7D2
sub_800B7D2
	ldr r0, [r0, #8]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr
	ALIGN

	thumb_func_start sub_800B7DC
sub_800B7DC
	push {r4, lr}
	adds r4, r0, #0
	bne %11
	ldr r0, _0800BB94
	bl __nw__FUi
	adds r4, r0, #0
	bne %11
	adds r0, r4, #0
10
	pop {r4}
	pop {r3}
	bx r3
11
	ldr r0, _0800BB98
	adds r1, r4, #0
	str r0, [r4]
	ldr r0, _0800BB9C
	adds r1, #0x60
	str r4, [r0]
	ldr r0, _0800BBA0
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	ldr r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	str r1, [r4, #0x78]
	movs r1, #0x13
	lsls r1, r1, #8
	adds r1, r4, r1
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	movs r1, #0x3c
	adds r0, r4, #4
	bl __16__rt_memclr_w
	movs r1, #0x19
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0x80
	bl __16__rt_memclr_w
	movs r0, #0x1d
	lsls r0, r0, #5
	movs r1, #0x22
	adds r0, r4, r0
	bl __16__rt_memclr_w
	ldr r1, _0800BBA4
	adds r0, r1, #0
	subs r0, #0x47
	adds r0, r4, r0
	bl __16__rt_memclr
	ldr r0, _0800BBAC
	ldr r1, _0800BBA8
	adds r0, r4, r0
	bl __16__rt_memclr_w
	ldr r0, _0800BBB4
	ldr r1, _0800BBB0
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r1, #0xff
	ldr r0, _0800BBB8
	adds r1, #0x8d
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #0xbd
	lsls r0, r0, #4
	movs r1, #0x80
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r1, #0x1b
	movs r0, #0xc5
	lsls r0, r0, #4
	lsls r1, r1, #6
	adds r0, r4, r0
	bl __16__rt_memclr_w
	adds r0, r4, #0
	b %10

	thumb_func_start sub_800B8A4
sub_800B8A4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0800BBA0
	adds r5, r1, #0
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8000CCE
	ldr r0, _0800BB98
	ldr r1, _0800BB9C
	str r0, [r4]
	movs r0, #0
	str r0, [r1]
	cmp r5, #0
	beq %12
	adds r0, r4, #0
	bl sub_803DA18
12
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800B8CE
sub_800B8CE
	movs r1, #0xbd
	lsls r1, r1, #4
	adds r2, r0, r1
	movs r1, #0x13
	lsls r1, r1, #8
	adds r1, r0, r1
	push {r4}
	str r2, [r1, #0x10]
	movs r2, #0xc5
	lsls r2, r2, #4
	adds r2, r0, r2
	str r2, [r1, #0x14]
	movs r1, #0xcd
	lsls r1, r1, #5
	adds r1, r0, r1
	ldrb r1, [r1, #0xd]
	movs r4, #0
	cmp r1, #0
	beq %14
	ldr r1, _0800BBB8
	adds r1, r0, r1
	movs r2, #0x1f
13
	strb r4, [r1, #0xb]
	adds r1, #0xc
	subs r2, #1
	bhs %13
14
	movs r1, #3
	lsls r1, r1, #0xb
	adds r1, r0, r1
	str r4, [r1, #0x18]
	movs r1, #0x33
	lsls r1, r1, #7
	adds r0, r0, r1
	str r4, [r0, #0x24]
	pop {r4}
	bx lr

	non_word_aligned_thumb_func_start sub_800B916
sub_800B916
	push {r4, r5, r6, r7}
	movs r3, #1
	lsls r3, r3, #9
	movs r0, #7
	lsls r0, r0, #0x18
	adds r4, r3, #0
	adds r4, #0xff
	adds r1, r0, #0
	movs r2, #0
	adds r4, #1
	add r5, pc, #0x290
15
	ldm r5!, {r6, r7}
	stm r1!, {r6, r7}
	ldr r6, [r0]
	subs r1, #8
	bics r6, r4
	adds r6, r6, r3
	str r6, [r0]
	adds r0, #8
	adds r1, #8
	subs r5, #8
	adds r2, #1
	cmp r2, #0x80
	blt %15
	pop {r4, r5, r6, r7}
	bx lr

	non_word_aligned_thumb_func_start sub_800B94A
sub_800B94A
	ldr r0, _0800BBC4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_800B082
	ldr r1, _0800BBCC
	cmp r0, #3
	ldr r0, [r1]
	ldr r3, _0800BBC8
	blo %18
	ldr r1, _0800BBD0
	cmp r0, #0
	beq %17
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	ldr r2, _0800BBD4
	bl CpuSet
16
	add sp, #4
	pop {r3}
	bx r3
17
	adds r2, r1, #0
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r3]
	adds r0, r3, #0
	str r2, [r0, #4]
	ldr r1, _0800BBD8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %16
18
	ldr r1, _0800BBDC
	cmp r0, #0
	beq %19
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	ldr r2, _0800BBE0
	bl CpuSet
	b %16
19
	adds r2, r1, #0
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	str r1, [r3]
	adds r0, r3, #0
	str r2, [r0, #4]
	ldr r1, _0800BBE4
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b %16

	non_word_aligned_thumb_func_start sub_800B9B6
sub_800B9B6
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800B94A
	movs r1, #0x19
	lsls r1, r1, #5
	adds r0, r4, #0
	adds r0, #0x80
	bl __16__rt_memclr_w
	movs r0, #0
	movs r3, #0x1d
	lsls r3, r3, #5
20
	adds r1, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #0
	cmp r1, #0x10
	blt %20
	movs r0, #0xf
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r0, #0
	movs r5, #0x1f
	lsls r5, r5, #6
21
	adds r1, r0, #1
	movs r5, #0x1f
	lsls r5, r5, #6
	adds r0, r4, r0
	adds r0, r0, r5
	strb r1, [r0, #2]
	adds r0, r1, #0
	cmp r1, #8
	blt %21
	movs r0, #0
	mov lr, r0
22
	mov r0, lr
	lsls r0, r0, #7
	ldr r1, _0800BBE8
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	lsrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, #8
	orrs r1, r2
	strb r1, [r0]
	adds r0, #1
	movs r2, #1
23
	subs r6, r2, #1
	movs r5, #1
	movs r1, #8
	subs r3, r1, r2
	lsls r5, r6
	movs r1, #0
	cmp r5, #0
	mov ip, r5
	bls %25
	lsls r6, r3, #0x1d
	lsrs r6, r6, #0x1d
	lsls r5, r6, #3
24
	ldrb r3, [r0]
	movs r7, #0x38
	adds r1, #1
	lsrs r3, r3, #3
	lsls r3, r3, #3
	orrs r3, r6
	bics r3, r7
	orrs r3, r5
	movs r7, #0x40
	orrs r3, r7
	movs r7, #0x80
	orrs r3, r7
	strb r3, [r0]
	adds r0, #1
	cmp ip, r1
	bhi %24
25
	adds r2, #1
	cmp r2, #8
	blo %23
	mov r0, lr
	adds r0, #1
	mov lr, r0
	cmp r0, #8
	blt %22
	ldr r0, _0800BBC4
	ldr r0, [r0]
	bl sub_800B082
	movs r1, #0x1f
	lsls r1, r1, #6
	adds r1, r4, r1
	cmp r0, #3
	blo %26
	movs r0, #4
	strb r0, [r1, #0xa]
	b %27
26
	movs r5, #0
	strb r5, [r1, #0xa]
27
	movs r1, #1
	ldr r0, _0800BBAC
	lsls r1, r1, #0xa
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r1, #0xff
	lsls r1, r1, #0x10
	movs r0, #0
	movs r5, #0x1f
	lsls r5, r5, #6
28
	lsls r2, r0, #3
	adds r2, r2, r4
	adds r2, r2, r5
	ldr r3, [r2, #0x10]
	adds r0, #1
	lsls r3, r3, #8
	lsrs r3, r3, #8
	lsls r6, r0, #0x18
	orrs r3, r6
	orrs r3, r1
	str r3, [r2, #0x10]
	cmp r0, #0x80
	blt %28
	movs r0, #0x2f
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r5, #0
	strb r5, [r0, #0xc]
	movs r1, #0xff
	strb r1, [r0, #0xd]
	strb r5, [r0, #0xe]
	ldr r0, _0800BBB4
	movs r1, #5
	lsls r1, r1, #8
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #7
	lsls r0, r0, #0x18
	adds r1, r0, #0
	movs r2, #0
	movs r6, #3
	lsls r6, r6, #8
29
	add r7, pc, #0xD4
	ldm r7!, {r3, r7}
	stm r1!, {r3, r7}
	ldr r3, [r0]
	movs r7, #1
	lsls r7, r7, #9
	bics r3, r6
	adds r3, r3, r7
	str r3, [r0]
	subs r1, #8
	adds r1, #8
	adds r0, #8
	adds r2, #1
	cmp r2, #0x80
	blt %29
	movs r0, #0
	movs r1, #0xff
30
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #1
	movs r3, #0x13
	lsls r3, r3, #8
	adds r2, r2, r4
	adds r3, r2, r3
	ldrh r6, [r3, #0x18]
	movs r7, #3
	lsls r7, r7, #8
	bics r6, r7
	subs r7, #0xff
	subs r7, #1
	adds r6, r6, r7
	strh r6, [r3, #0x18]
	ldr r3, _0800BBEC
	adds r0, #1
	adds r3, r2, r3
	strb r0, [r3, #0xf]
	movs r3, #0x99
	lsls r3, r3, #5
	adds r2, r2, r3
	strb r1, [r2]
	cmp r0, #0x80
	blt %30
	ldr r0, _0800BBF0
	movs r7, #0xc1
	adds r0, r4, r0
	strb r5, [r0, #0xe]
	strb r1, [r0, #0xf]
	lsls r7, r7, #5
	adds r0, r4, r7
	strb r5, [r0]
	adds r6, r1, #0
	movs r1, #0xff
	strb r5, [r0, #1]
	adds r0, r7, #4
	adds r1, #0x81
	adds r0, r4, r0
	bl __16__rt_memclr_w
	movs r0, #0
	movs r1, #0xff
	adds r1, #1
31
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r4
	adds r2, r2, r7
	strh r1, [r2, #4]
	strh r5, [r2, #6]
	strh r5, [r2, #8]
	strh r1, [r2, #0xa]
	adds r0, #1
	strb r5, [r2, #0xc]
	strb r0, [r2, #0xd]
	strb r6, [r2, #0xe]
	cmp r0, #0x20
	blt %31
	movs r0, #0xcd
	lsls r0, r0, #5
	adds r0, r4, r0
	strb r5, [r0, #0xa]
	strb r6, [r0, #0xb]
	strb r5, [r0, #0xd]
	adds r0, r4, #0
	bl sub_800B8CE
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_0800BB94 DCDU 0x000019B0
_0800BB98 DCDU __VTABLE__363dword_803ECDC
_0800BB9C DCDU gUnknown_03003EA0
_0800BBA0 DCDU __VTABLE__341dword_803EB3C
_0800BBA4 DCDU 0x00000409
_0800BBA8 DCDU 0x00000404
_0800BBAC DCDU 0x000007CC
_0800BBB0 DCDU 0x0000050C
_0800BBB4 DCDU 0x00001318
_0800BBB8 DCDU 0x00001824
_0800BBBC DCDU 0x00000000
_0800BBC0 DCDU 0x00000000
_0800BBC4 DCDU gUnknown_03003E98
_0800BBC8 DCDU REG_DMA3
_0800BBCC DCDU gUnknown_03003EB4
_0800BBD0 DCDU 0x06014000
_0800BBD4 DCDU 0x05001000
_0800BBD8 DCDU 0x85001000
_0800BBDC DCDU 0x06010000
_0800BBE0 DCDU 0x05002000
_0800BBE4 DCDU 0x85002000
_0800BBE8 DCDU 0x000003C2
_0800BBEC DCDU 0x00001310
_0800BBF0 DCDU 0x00001810
	END
