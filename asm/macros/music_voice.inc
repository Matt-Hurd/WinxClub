	.macro voice_directsound base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	DCB 0
	_voice_directsound \base_midi_key, \pan, \sample_data_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_directsound_no_resample base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	DCB 8
	_voice_directsound \base_midi_key, \pan, \sample_data_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_directsound_alt base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	DCB 16
	_voice_directsound \base_midi_key, \pan, \sample_data_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_directsound base_midi_key, pan, sample_data_pointer, attack, decay, sustain, release
	DCB \base_midi_key
	DCB 0
	.if \pan != 0
	DCB (0x80 | \pan)
	.else
	DCB 0
	.endif
	DCDU \sample_data_pointer
	DCB \attack
	DCB \decay
	DCB \sustain
	DCB \release
	.endm

	.macro voice_square_1 sweep, duty_cycle, attack, decay, sustain, release
	_voice_square_1 1, \sweep, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro voice_square_1_alt sweep, duty_cycle, attack, decay, sustain, release
	_voice_square_1 9, \sweep, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_square_1 type, sweep, duty_cycle, attack, decay, sustain, release
	DCB \type, 60, 0
	DCB \sweep
	DCB (\duty_cycle & 0x3)
	DCB 0, 0, 0
	DCB (\attack  & 0x7)
	DCB (\decay   & 0x7)
	DCB (\sustain & 0xF)
	DCB (\release & 0x7)
	.endm

	.macro voice_square_2 duty_cycle, attack, decay, sustain, release
	_voice_square_2 2, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro voice_square_2_alt duty_cycle, attack, decay, sustain, release
	_voice_square_2 10, \duty_cycle, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_square_2 type, duty_cycle, attack, decay, sustain, release
	DCB \type, 60, 0, 0
	DCB (\duty_cycle & 0x3)
	DCB 0, 0, 0
	DCB (\attack  & 0x7)
	DCB (\decay   & 0x7)
	DCB (\sustain & 0xF)
	DCB (\release & 0x7)
	.endm

	.macro voice_programmable_wave wave_samples_pointer, attack, decay, sustain, release
	_voice_programmable_wave 3, \wave_samples_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_programmable_wave_alt wave_samples_pointer, attack, decay, sustain, release
	_voice_programmable_wave 11, \wave_samples_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_programmable_wave type, wave_samples_pointer, attack, decay, sustain, release
	DCB \type, 60, 0, 0
	DCDU \wave_samples_pointer
	DCB (\attack  & 0x7)
	DCB (\decay   & 0x7)
	DCB (\sustain & 0xF)
	DCB (\release & 0x7)
	.endm

	.macro voice_noise unk1, unk2, unk3, period, attack, decay, sustain, release
	_voice_noise 4, \unk1, \unk2, \unk3, \period, \attack, \decay, \sustain, \release
	.endm

	.macro voice_noise_alt unk1, unk2, unk3, period, attack, decay, sustain, release
	_voice_noise 12, \unk1, \unk2, \unk3, \period, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_noise type, unk1, unk2, unk3, period, attack, decay, sustain, release
	DCB \type, \unk1, \unk2, \unk3
	DCB (\period & 0x1)
	DCB 0, 0, 0
	DCB (\attack  & 0x7)
	DCB (\decay   & 0x7)
	DCB (\sustain & 0xF)
	DCB (\release & 0x7)
	.endm

	.macro voice_keysplit voice_group_pointer, keysplit_table_pointer
	DCB 0x40, 0, 0, 0
	DCDU \voice_group_pointer
	DCDU \keysplit_table_pointer
	.endm

	.macro voice_keysplit_all voice_group_pointer
	DCB 0x80, 0, 0, 0
	DCDU \voice_group_pointer
	DCDU 0
	.endm

	.macro cry sample
	DCB 0x20, 60, 0, 0
	DCDU \sample
	DCB 0xff, 0, 0xff, 0
	.endm

	.macro cry2 sample
	DCB 0x30, 60, 0, 0
	DCDU \sample
	DCB 0xff, 0, 0xff, 0
	.endm
