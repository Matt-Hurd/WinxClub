	INCLUDE asm/macros.inc
	AREA text, CODE

	IMPORT eeprom
	IMPORT eeprom_list
	IMPORT gUnknown_08051750

	thumb_func_start IdentifyEeprom
IdentifyEeprom
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _0803B4F4
	ldr r1, _0803B4EC
	ldr r0, _0803B4F0
	str r0, [r1]
	b _0803B510
	ALIGN
_0803B4EC DCDU eeprom
_0803B4F0 DCDU eeprom_list
_0803B4F4
	cmp r0, #0x40
	bne _0803B508
	ldr r1, _0803B500
	ldr r0, _0803B504
	str r0, [r1]
	b _0803B510
	ALIGN
_0803B500 DCDU eeprom
_0803B504 DCDU gUnknown_08051750
_0803B508
	ldr r1, _0803B518
	ldr r0, _0803B51C
	str r0, [r1]
	movs r2, #1
_0803B510
	adds r0, r2, #0
	pop {r1}
	bx r1
	ALIGN
_0803B518 DCDU eeprom
_0803B51C DCDU eeprom_list
	END
