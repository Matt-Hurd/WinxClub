	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT gUnknown_0300344C
	IMPORT gUnknown_03003454
	IMPORT gUnknown_03003468
	IMPORT gUnknown_03003D30
	IMPORT gUnknown_03003E98
	IMPORT gUnknown_03003EB4
	IMPORT gUnknown_0804AE30
	IMPORT gUnknown_08050694
	IMPORT sub_80046F8
	IMPORT sub_8004716
	IMPORT sub_800474E
	IMPORT SomehowInitEWRAMLinkedList
	IMPORT GetEWRAMStart
	IMPORT sub_800B058
	IMPORT sub_800E53C
	IMPORT maybeInitTransitionLevelScreen
	IMPORT PlayMovie
	IMPORT sub_800EF2A
	IMPORT maybeLoadOrRenderBgImage
	IMPORT sub_8017B9A
	IMPORT sub_8017CA0
	IMPORT FadeToImage
	IMPORT FadeToBlack
	IMPORT SetNextGlobalFunction
	IMPORT CpuSet
	IMPORT sub_803D680
	IMPORT sub_803D834
	IMPORT sub_803D97C
	IMPORT __da__FPv
	IMPORT sub_803DA9C

	thumb_func_start PlayIntroMovie
PlayIntroMovie
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r0, sp, #8
	bl sub_80046F8
	bl FadeToBlack
	movs r0, #0
	bl sub_800E53C
	ldr r0, _0801803C
	ldr r0, [r0]
	bl sub_8017B9A
	ldr r0, _08018040
	movs r1, #3
	ldr r0, [r0]
	bl sub_800B058
	ldr r0, _08018044
	movs r2, #5
	ldr r0, [r0]
	lsls r2, r2, #0x18
	movs r6, #0
	cmp r0, #0
	beq %1
	movs r0, #0
	ldr r2, _08018048
	str r0, [sp, #4]
	adds r1, r2, #0
	subs r1, #0x20
	add r0, sp, #4
	bl CpuSet
	b %2
1
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0801804C
	add r1, sp, #4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08018050
	str r1, [r0, #8]
	ldr r0, [r0, #8]
2
	add r0, pc, #0x1B8
	bl maybeLoadOrRenderBgImage
	bl FadeToImage
	ldr r4, _0801805C
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne %3
	ldr r1, _08018060
	ldrb r0, [r4]
	ldr r1, [r1]
	strb r0, [r1, #3]
	ldr r1, _08018064
	ldr r1, [r1]
	strb r0, [r1, #9]
3
	ldr r5, _08018068
	ldr r0, [r5]
	bl __da__FPv
	movs r1, #0
	movs r0, #0
	bl PlayMovie
	bl GetEWRAMStart
	adds r1, r0, #0
	movs r0, #0x31
	adds r3, r6, #0
	movs r2, #0
	lsls r0, r0, #0xc
	bl sub_803DA9C
	movs r1, #0x31
	lsls r1, r1, #0xc
	bl SomehowInitEWRAMLinkedList
	str r0, [r5]
	movs r0, #3
	bl maybeInitTransitionLevelScreen
	ldr r0, _0801803C
	ldr r0, [r0]
	bl sub_8017CA0
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq %5
	movs r0, #0xc
	bl SetNextGlobalFunction
4
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
5
	movs r0, #2
	bl SetNextGlobalFunction
	b %4

	non_word_aligned_thumb_func_start PlayIntroLogo
PlayIntroLogo
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r0, #1]
	adds r5, r4, #4
	movs r6, #0
	cmp r0, #0
	sub sp, #0x10
	bne %7
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #3
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	ldrb r0, [r4]
	ldr r1, _0801806C
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl maybeLoadOrRenderBgImage
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
6
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r3}
	bx r3
7
	cmp r0, #1
	bne %8
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq %6
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b %6
8
	cmp r0, #2
	bne %10
	ldrb r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4, #2]
	cmp r0, #0x3c
	bne %6
	ldrb r0, [r4]
	adds r0, #1
	cmp r0, #5
	bhs %9
	movs r2, #0
	movs r1, #4
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0x3f
	movs r1, #2
	adds r3, r6, #0
	adds r0, r5, #0
	bl sub_803D680
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	strb r6, [r4, #2]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	b %6
9
	strb r0, [r4]
	b %6
10
	cmp r0, #3
	bne %6
	adds r0, r5, #0
	bl sub_803D834
	adds r0, r5, #0
	bl sub_800474E
	adds r0, r5, #0
	bl sub_803D97C
	cmp r0, #0
	beq %6
	strb r6, [r4, #2]
	strb r6, [r4, #1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b %6

	thumb_func_start sub_8017FF4
sub_8017FF4
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start HandleIntro
HandleIntro
	push {r4, lr}
	sub sp, #0x10
	mov r4, sp
	add r0, sp, #4
	bl sub_8004716
	movs r0, #0
	add r3, sp, #0
	strb r0, [r3]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	ldrb r0, [r3]
	cmp r0, #5
	bhs %12
11
	adds r0, r4, #0
	bl PlayIntroLogo
	bl sub_800EF2A
	add r3, sp, #0
	ldrb r0, [r3]
	cmp r0, #5
	blo %11
12
	adds r0, r4, #0
	bl PlayIntroMovie
	add sp, #0x10
	pop {r4}
	pop {r3}
	bx r3
	ALIGN
_0801803C DCDU gUnknown_03003454
_08018040 DCDU gUnknown_03003E98
_08018044 DCDU gUnknown_03003EB4
_08018048 DCDU 0x05000020
_0801804C DCDU REG_DMA3
_08018050 DCDU 0x85000020
_08018054 DCDU 0x6F4D6742
_08018058 DCDU 0x00656976
_0801805C DCDU gUnknown_0804AE30
_08018060 DCDU gUnknown_03003D30
_08018064 DCDU gUnknown_0300344C
_08018068 DCDU gUnknown_03003468
_0801806C DCDU gUnknown_08050694
	END
