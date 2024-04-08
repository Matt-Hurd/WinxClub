    INCLUDE asm/macros.inc
    AREA text, CODE

	IMPORT sub_803D2A0

	arm_func_start sub_803E24C
sub_803E24C ;@ 0x0803E24C
	LDR ip, _0803E254 ;@ =sub_803D2A0
	bx ip
	ALIGN
_0803E254 DCDU sub_803D2A0
	END