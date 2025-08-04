	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_030033F4
	IMPORT gUnknown_03003E8C
	IMPORT gUnknown_03003E94
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_03007FF8
	IMPORT __VTABLE__326dword_803E868
	IMPORT __VTABLE__358dword_803ECC8
	IMPORT nullsub_4
	IMPORT sub_800812A
	IMPORT sub_8008160
	IMPORT sub_80081A8
	IMPORT sub_800B058
	IMPORT sub_800B08E
	IMPORT sub_800B12C
	IMPORT sub_800B148
	IMPORT sub_800B154
	IMPORT sub_800B65E
	IMPORT sub_800B708
	IMPORT sub_800FB96
	IMPORT sub_800FBA0
	IMPORT sub_800FBC0
	IMPORT sub_800FC6C
	IMPORT sub_80103C8
	IMPORT sub_8010604
	IMPORT sub_80106B0
	IMPORT sub_8010920
	IMPORT sub_802EF0A
	IMPORT __call_via_r1
	IMPORT __call_via_r2
	IMPORT __call_via_r3
	IMPORT __call_via_r5
	IMPORT __call_via_r6
	IMPORT __16__rt_memclr
	IMPORT __16__rt_sdiv
	IMPORT __nw__FUi
	IMPORT sub_803DA18

	thumb_func_start sub_800FE90
sub_800FE90
	push {r3, lr}
	cmp r0, #0
	bne %1
	movs r0, #0x20
	bl __nw__FUi
	cmp r0, #0
	beq %2
1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	mvns r1, r1
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
2
	add sp, #4
	pop {r3}
	bx r3

	thumb_func_start sub_800FEBC
sub_800FEBC
	ldr r0, _080101E4
	push {r4, lr}
	ldr r0, [r0]
	adds r0, #8
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _080101E8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq %3
	ldr r1, [r0]
	ldr r2, [r1, #4]
	adds r1, r2, r1
	bl __call_via_r1
3
	ldr r4, _080101EC
	ldr r0, [r4]
	cmp r0, #0
	beq %4
	bl sub_800B65E
	ldr r0, [r4]
	bl sub_800B708
4
	ldr r2, _080101F0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r3}
	bx r3

	thumb_func_start sub_800FF00
sub_800FF00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bne %6
	movs r0, #0x28
	bl __nw__FUi
	adds r4, r0, #0
	bne %6
	adds r0, r4, #0
5
	pop {r4, r5, r6}
	pop {r3}
	bx r3
6
	ldr r0, _080101F4
	movs r5, #0
	str r0, [r4]
	ldr r0, _080101E8
	ldr r6, _080101FC
	str r4, [r0]
	ldr r0, _080101F8
	stm r4!, {r0, r5}
	subs r4, #8
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	ldr r0, [r6]
	movs r1, #0
	bl sub_800B148
	str r0, [r4, #0x1c]
	ldr r1, _08010200
	ldr r0, [r6]
	strh r5, [r1, #8]
	movs r3, #1
	movs r1, #0
	ldr r2, _08010204
	bl sub_800B12C
	ldr r0, _080101E4
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	adds r0, r4, #0
	b %5

	non_word_aligned_thumb_func_start sub_800FF5E
sub_800FF5E
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080101F8
	adds r5, r1, #0
	str r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r0, _080101FC
	cmp r2, #0
	beq %7
	ldr r1, _08010208
	cmp r2, r1
	beq %7
	movs r3, #1
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B12C
	b %8
7
	movs r2, #0
	movs r1, #0
	ldr r0, [r0]
	bl sub_800B154
8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %9
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
9
	ldr r0, _080101F4
	movs r1, #0
	str r0, [r4]
	ldr r0, _080101E8
	str r1, [r4, #0x10]
	str r1, [r0]
	cmp r5, #0
	beq %10
	adds r0, r4, #0
	bl sub_803DA18
10
	pop {r3, r4, r5}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_800FFBA
sub_800FFBA
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, [sp, #0x28]
	str r1, [r0, #0x14]
	adds r4, r0, #0
	adds r0, r1, #0
	adds r6, r3, #0
	cmp r3, #0
	beq %11
	cmp r5, #0
	bne %12
11
	ldr r5, [r4, #0x24]
	ldr r6, [r4, #0x20]
12
	movs r3, #0
	movs r2, #0
	str r5, [r4, #0x24]
	str r6, [r4, #0x20]
	movs r1, #2
	bl sub_802EF0A
	adds r7, r0, #0
	beq %14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %13
	adds r0, r7, #0
	bl sub_800FBA0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	bl sub_800FB96
	ldr r1, [sp]
	cmp r1, r0
	beq %14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %13
	ldr r1, [r0]
	ldr r2, [r1]
	adds r2, r2, r1
	movs r1, #1
	bl __call_via_r2
	movs r3, #0
	str r3, [r4, #0x10]
13
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r7, #0
	bl sub_800FBC0
14
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq %15
	adds r1, r5, #0
	adds r0, r6, #0
	bl __16__rt_memclr
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r2, [r1, #0x20]
	adds r3, r2, r1
	adds r2, r5, #0
	adds r1, r6, #0
	bl __call_via_r3
	ldr r1, _0801020C
	movs r2, #0xb
	ldr r0, [r4, #0x10]
	bl sub_800FC6C
	ldr r4, [r4, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_80106B0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	ldr r1, [r0, #4]
	adds r5, r1, r0
	adds r1, r7, #0
	adds r0, r4, #0
	bl __call_via_r5
15
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	non_word_aligned_thumb_func_start sub_801006A
sub_801006A
	push {r4, r5, r6, r7, lr}
	ldr r3, _08010210
	adds r5, r0, #0
	add sp, r3
	ldr r0, [r1]
	adds r4, r1, #0
	movs r1, #1
	movs r7, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_802EF0A
	adds r1, r0, #0
	beq %21
	movs r2, #0
	ldr r0, [r4, #4]
	bl sub_8010920
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x18]
	adds r6, r2, r1
	ldr r2, [r4, #0xc]
	mvns r1, r7
	cmp r2, #0
	beq %16
	ldr r1, [r2]
16
	movs r2, #0
	bl __call_via_r6
	ldr r6, _08010214
	add r6, sp
	adds r0, r6, #0
	bl sub_80103C8
	movs r3, #0xd
	lsls r3, r3, #9
	ldr r0, [r4, #8]
	add r3, sp
	str r0, [r3, #0x18]
	add r0, sp, #0x208
	str r0, [r3, #8]
	ldr r0, _08010218
	adds r1, r6, #0
	str r0, [r3, #0xc]
	ldr r0, _0801021C
	str r0, [r3, #0x14]
	ldr r0, _08010220
	str r0, [r3, #0x10]
	ldr r0, [r4, #0x10]
	strb r0, [r3, #0x1c]
	ldr r0, [r4, #0x14]
	strb r0, [r3, #0x1d]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0x1e]
	ldrh r0, [r4, #0x1a]
	strh r0, [r3, #0x20]
	ldr r0, [r4, #4]
	bl sub_8010604
	ldr r0, [r4, #4]
	bl sub_80106B0
	movs r1, #0xf
	lsls r1, r1, #0x12
	bl __16__rt_sdiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #8]
	movs r2, #1
	lsls r2, r2, #9
	str r7, [r5, #0xc]
	str r2, [sp]
	ldm r4!, {r1, r2}
	adds r0, r5, #0
	subs r4, #8
	add r3, sp, #8
	bl sub_800FFBA
	ldr r0, [r4, #4]
	ldr r1, _08010200
	str r0, [r5, #4]
	movs r0, #1
	strh r0, [r1, #8]
17
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq %18
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #0
	bl __call_via_r6
18
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0xc]
	adds r1, r2, r1
	bl __call_via_r1
	ldr r6, [r4, #0x1c]
	cmp r6, #0
	beq %19
	movs r2, #0
	mvns r2, r2
	movs r1, #0
	movs r0, #1
	bl __call_via_r6
19
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	bl sub_80081A8
	ldr r6, _080101E4
20
	ldr r0, [r6]
	bl sub_800B08E
	ldr r0, [r6]
	ldr r0, [r0, #8]
	ldr r1, [r5, #0xc]
	lsrs r1, r1, #8
	cmp r0, r1
	blo %20
	ldr r0, [r6]
	str r7, [r0, #8]
	ldr r0, [r5, #0xc]
	b %22
21
	b %26
22
	ldr r3, _08010224
	lsrs r0, r0, #8
	ldr r1, _08010228
	muls r0, r3
	adds r0, r0, r1
	bl sub_800812A
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x10]
	adds r1, r2, r1
	bl __call_via_r1
	adds r6, r0, #0
	bne %24
	ldr r0, _0801022C
	ldr r0, [r0]
	cmp r0, #0
	bne %23
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq %23
	ldr r0, [r4, #4]
	ldr r6, [r0, #0x64]
	bl sub_8008160
	adds r1, r0, #0
	adds r2, r6, #0
	movs r0, #2
	ldr r3, [r4, #0x1c]
	bl __call_via_r3
23
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0xc]
	b %19
24
	ldr r0, [r4, #4]
	ldr r1, [r0]
	ldr r2, [r1, #0x14]
	adds r1, r2, r1
	bl __call_via_r1
	cmp r6, #1
	bne %17
	str r7, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq %25
	ldr r1, [r4, #4]
	ldr r1, [r1, #0x6c]
	str r1, [r0]
25
	str r7, [r5, #0x20]
	str r7, [r5, #0x24]
26
	ldr r3, _08010230
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
	ALIGN
_080101E4 DCDU gUnknown_03003E98
_080101E8 DCDU gUnknown_03003E8C
_080101EC DCDU gUnknown_03003E94
_080101F0 DCDU gUnknown_03007FF8
_080101F4 DCDU __VTABLE__358dword_803ECC8
_080101F8 DCDU __VTABLE__326dword_803E868
_080101FC DCDU gUnknown_03003EAC
_08010200 DCDU REG_IE
_08010204 DCDU sub_800FEBC
_08010208 DCDU nullsub_4
_0801020C DCDU 0x060174D8
_08010210 DCDU 0xFFFFE5DC
_08010214 DCDU 0x00001A08
_08010218 DCDU 0x06012C00
_0801021C DCDU 0x06014C00
_08010220 DCDU 0x0601606C
_08010224 DCDU 0x00044940
_08010228 DCDU 0xFFFF63C0
_0801022C DCDU gUnknown_030033F4
_08010230 DCDU 0x00001A24
	END
