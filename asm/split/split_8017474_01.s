	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT GetEWRAMStart
	IMPORT __VTABLE__325dword_803E864
	IMPORT __VTABLE__357dword_803ECC4
	IMPORT __nw__FUi
	IMPORT gUnknown_03003440
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003E88
	IMPORT sub_8004FFC
	IMPORT sub_80050FA
	IMPORT sub_80164A8
	IMPORT sub_801669C
	IMPORT sub_803DA80
	IMPORT sub_803DA9C
	IMPORT sub_803F464

	thumb_func_start InitScriptData

InitScriptData
	push {r0, r1, r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	bne %2
	movs r0, #0x67
	lsls r0, r0, #4
	bl __nw__FUi
	adds r4, r0, #0
	bne %2
	adds r0, r4, #0
1
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3
2
	ldr r0, _080177A0
	movs r2, #0
	str r0, [r4]
	ldr r0, _080177A4
	movs r1, #0x54
	str r4, [r0]
	ldr r0, _080177A8
	str r0, [r4]
	ldr r0, _080177AC
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0xff
	movs r0, #0x53
	lsls r0, r0, #3
	adds r1, #1
	movs r2, #0
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0xff
	movs r0, #0x73
	lsls r0, r0, #3
	adds r1, #1
	movs r2, #0
	adds r0, r4, r0
	bl sub_803F464
	movs r0, #0xb3
	lsls r0, r0, #3
	movs r2, #0
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803F464
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0
	movs r1, #0x80
	adds r0, #0x19
	bl sub_803F464
	adds r0, r4, #0
	adds r0, #0xff
	movs r2, #0
	movs r1, #0x80
	adds r0, #0x99
	bl sub_803F464
	movs r0, #0x43
	lsls r0, r0, #3
	movs r2, #0
	movs r1, #0x80
	adds r0, r4, r0
	bl sub_803F464
	movs r1, #0x61
	lsls r1, r1, #4
	adds r1, r4, r1
	movs r0, #4
	strb r0, [r1, #8]
	movs r1, #9
	movs r7, #0
	lsls r1, r1, #7
	adds r1, r4, r1
	strb r7, [r4, #0x14]
	add r0, pc, #0x298
	str r0, [r1, #0x18]
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq %3
	adds r0, r5, #0
	bl sub_801669C
3
	str r5, [r4, #0xc]
	bl GetEWRAMStart
	adds r1, r0, #0
	adds r3, r7, #0
	movs r2, #0
	movs r0, #0x18
	bl sub_803DA80
	adds r5, r0, #0
	beq %4
	adds r0, r5, #0
	bl sub_80164A8
4
	ldr r0, _080177C8
	str r5, [r4, #0x10]
	str r7, [r4, #4]
	ldr r0, [r0]
	bl sub_80050FA
	bl GetEWRAMStart
	movs r5, #1
	lsls r5, r5, #0xb
	adds r3, r7, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_803DA9C
	str r0, [r4, #0x18]
	movs r0, #0xff
	adds r0, #0x99
	strh r5, [r0, r4]
	movs r5, #1
	lsls r6, r5, #9
5
	bl GetEWRAMStart
	adds r3, r7, #0
	movs r2, #0
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_803DA9C
	lsls r1, r5, #2
	adds r1, r1, r4
	str r0, [r1, #0x18]
	lsls r0, r5, #1
	adds r0, r0, r4
	adds r0, #0xff
	adds r5, #1
	lsls r5, r5, #0x18
	adds r0, #0x81
	lsrs r5, r5, #0x18
	cmp r5, #4
	strh r6, [r0, #0x18]
	blo %5
	movs r0, #4
6
	lsls r1, r0, #2
	adds r0, #1
	lsls r0, r0, #0x18
	adds r1, r1, r4
	lsrs r0, r0, #0x18
	cmp r0, #0x40
	str r7, [r1, #0x18]
	blo %6
	movs r0, #0
	bl sub_80050FA
	ldr r0, [sp, #8]
	cmp r0, #0
	beq %7
	ldr r0, _080177CC
	ldr r1, [sp, #8]
	ldr r0, [r0]
	bl sub_8004FFC
	str r0, [r4, #8]
7
	adds r0, r4, #0
	b %1

	ALIGN
_080177A0 DCDU __VTABLE__357dword_803ECC4
_080177A4 DCDU gUnknown_03003E88
_080177A8 DCDU __VTABLE__325dword_803E864
_080177AC DCDU 0x0000061C
_080177C8 DCDU gUnknown_03003468
_080177CC DCDU gUnknown_03003440

	END
