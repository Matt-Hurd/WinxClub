	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT FadeToBlack
	IMPORT __call_via_r2
	IMPORT __call_via_r7
	IMPORT atoi
	IMPORT gScriptDataMetadata
	IMPORT gUnknown_03003EA8
	IMPORT gUnknown_03003EAC
	IMPORT gUnknown_0804AE1E
	IMPORT sub_8004FFC
	IMPORT sub_800B12C
	IMPORT sub_800E5EA
	IMPORT sub_800EC0E
	IMPORT sub_800FE90
	IMPORT sub_800FF00
	IMPORT sub_800FF5E
	IMPORT sub_801006A
	IMPORT sub_8010234
	IMPORT sub_8010278
	IMPORT sub_80137F8
	IMPORT sub_80139AC
	IMPORT sub_8013B76
	IMPORT sub_8013FF8
	IMPORT sub_801402C

	thumb_func_start PlayMovie

PlayMovie
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _0800EFC4
	ldr r0, _0800EFC8
	ldr r2, _0800EFCC
	add sp, r3
	ldr r0, [r0]
	movs r1, #0
	strh r1, [r2, #8]
	movs r3, #1
	movs r2, #0
	bl sub_800B12C
	add r0, sp, #0xb0
	bl sub_8010234
	add r0, sp, #0x88
	bl sub_800FF00
	add r0, sp, #0x68
	bl sub_800FE90
	add r5, sp, #8
	adds r0, r5, #0
	bl sub_8013FF8
	movs r0, #0
	ldr r6, _0800EFD0
	mvns r0, r0
	strh r0, [r6, #4]
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	str r5, [r6, #0x38]
	lsls r0, r4, #1
	ldr r1, _0800EFD4
	str r0, [r3, #0x60]
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq %1
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #0
	adds r0, r5, #0
	bl __call_via_r2
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x28]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #3
	adds r0, r5, #0
	bl __call_via_r2
	ldr r0, [sp, #8]
	movs r2, #0
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #8]
	adds r7, r0, r1
	movs r1, #4
	adds r0, r5, #0
	bl __call_via_r7
	ldr r1, [sp, #8]
	adds r0, r5, #0
	ldr r1, [r1, #0x10]
	ldr r2, [sp, #8]
	adds r7, r1, r2
	movs r2, #0x16
	movs r1, #0xe8
	bl __call_via_r7
	adds r0, r5, #0
	bl sub_8013B76
	ldr r0, _0800EFD8
	movs r1, #0x5c
	str r0, [sp, #0x5c]
	movs r0, #0xa5
	lsls r0, r0, #6
	str r0, [sp, #0x60]
	movs r0, #0xf0
	strh r0, [r1, r5]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #2
	adds r0, r5, #0
	bl __call_via_r2
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x30]
	ldr r1, [sp, #8]
	adds r2, r0, r1
	movs r1, #1
	adds r0, r5, #0
	bl __call_via_r2
	movs r3, #0x2f
	lsls r3, r3, #7
	add r3, sp
	ldr r0, [r3, #0x60]
	ldr r1, _0800EFD4
	ldrh r1, [r1, r0]
	strh r1, [r6, #2]
	ldr r0, [r6, #0x14]
	adds r3, r1, #0
	ldrb r1, [r0, #9]
	ldr r0, [r0, #4]
	ldrh r7, [r0, #4]
	ldr r2, [r0, #8]
	lsls r1, r1, #2
	lsls r3, r7
	adds r2, r2, r3
	ldr r1, [r2, r1]
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	adds r7, r0, r1
	ldr r0, [r7]
	str r0, [sp]
	movs r0, #0
	strb r0, [r3, #4]
	mov r0, sp
	bl atoi
	strh r0, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	movs r2, #0
	adds r1, r7, #5
	ldr r0, [r6, #0x38]
	bl sub_80137F8
	movs r1, #1
	ldr r0, [r6, #0x38]
	bl sub_80139AC
1
	ldr r0, _0800EFDC
	ldr r2, _0800EFD4
	lsls r1, r4, #2
	subs r2, #0xb6
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl sub_8004FFC
	add r7, sp, #0xb0
	str r7, [sp, #0x6c]
	str r0, [sp, #0x68]
	cmp r4, #0
	beq %2
	cmp r4, #1
	bne %3
2
	ldr r0, _0800EFE0
	str r0, [sp, #0x70]
	b %4
3
	movs r0, #1
	lsls r0, r0, #0x13
	str r0, [sp, #0x70]
4
	ldrh r0, [r6, #4]
	ldr r1, _0800EFE4
	cmp r0, r1
	beq %5
	ldr r0, _0800EFE8
	str r0, [sp, #0x84]
	b %6
5
	movs r0, #0
	str r0, [sp, #0x84]
6
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq %7
	add r1, sp, #0x68
	add r0, sp, #0x88
	bl sub_801006A
7
	movs r1, #0
	adds r0, r5, #0
	bl sub_801402C
	movs r1, #0
	add r0, sp, #0x88
	bl sub_800FF5E
	movs r1, #0
	adds r0, r7, #0
	bl sub_8010278
	movs r0, #0
	str r0, [r6, #0x38]
	ldr r0, _0800EFC8
	movs r4, #1
	movs r1, #0
	adds r3, r4, #0
	ldr r2, _0800EFEC
	ldr r0, [r0]
	bl sub_800B12C
	ldr r0, _0800EFCC
	strh r4, [r0, #8]
	bl FadeToBlack
	ldr r3, _0800EFF0
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	bx r3

	ALIGN
_0800EFC4 DCDU 0xFFFFE81C
_0800EFC8 DCDU gUnknown_03003EAC
_0800EFCC DCDU REG_IE
_0800EFD0 DCDU gScriptDataMetadata
_0800EFD4 DCDU gUnknown_0804AE1E
_0800EFD8 DCDU 0x060102C0
_0800EFDC DCDU gUnknown_03003EA8
_0800EFE0 DCDU 0xFFFF0000
_0800EFE4 DCDU 0x0000FFFF
_0800EFE8 DCDU sub_800EC0E
_0800EFEC DCDU sub_800E5EA
_0800EFF0 DCDU 0x000017E4

	END
