
macro FB2000_GameSpecificAssemblySettings()
	!ROM_FB2000_U = $0001							; These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!

	%SetROMToAssembleForHack(FB2000_U, !ROMID)
endmacro

macro FB2000_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_FB2000.asm
	incsrc ../RAM_Map_FB2000.asm
	incsrc ../Routine_Macros_FB2000.asm
	incsrc ../SNES_Macros_FB2000.asm
endmacro

macro FB2000_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_FB2000.asm
	incsrc ../Misc_Defines_FB2000.asm
	incsrc ../SPC700/SPC700_Macros_FB2000.asm
endmacro

macro FB2000_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro FB2000_LoadGameSpecificMSU1Files()
endmacro

macro FB2000_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Bullet-Proof Software"
	!Define_Global_DeveloperName = "Xanth Software F/X"
	!Define_Global_ReleaseDate = "July 31, 1992"
	!Define_Global_BaseROMMD5Hash = "f67294affb35c2cf8acab2e7cdd5caa3"

	!Define_Global_MakerCode = "8B"
	!Define_Global_GameCode = "Axxx"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "FACEBALL 2000       "
	!Define_Global_ROMLayout = !ROMLayout_LoROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_512KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $8B
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $1D5E
	!UnusedNativeModeVector1 = $FFFF
	!UnusedNativeModeVector2 = $FFFF
	!NativeModeCOPVector = CODE_00B8EC
	!NativeModeBRKVector = CODE_00B8ED
	!NativeModeAbortVector = CODE_00B8F0
	!NativeModeNMIVector = CODE_008268
	!NativeModeResetVector = CODE_00B8F1
	!NativeModeIRQVector = CODE_00AA30
	!UnusedEmulationModeVector1 = CODE_00B8F1
	!UnusedEmulationModeVector2 = CODE_00B8F1
	!EmulationModeCOPVector = CODE_00B8EC
	!EmulationModeBRKVector = CODE_00B8F1
	!EmulationModeAbortVector = CODE_00B8F0
	!EmulationModeNMIVector = CODE_008268
	!EmulationModeResetVector = CODE_00B8F1
	!EmulationModeIRQVector = CODE_00B8F4
	%LoadExtraRAMFile("SRAM_Map_FB2000.asm")
endmacro

macro FB2000_LoadROMMap()
	%FB2000Bank00Macros(!BANK_00, !BANK_00)
	%FB2000Bank01Macros(!BANK_01, !BANK_01)
	%FB2000Bank02Macros(!BANK_02, !BANK_02)
	%FB2000Bank03Macros(!BANK_03, !BANK_03)
	%FB2000Bank04Macros(!BANK_04, !BANK_04)
	%FB2000Bank05Macros(!BANK_05, !BANK_05)
	%FB2000Bank06Macros(!BANK_06, !BANK_06)
	%FB2000Bank07Macros(!BANK_07, !BANK_07)
	%FB2000Bank08Macros(!BANK_08, !BANK_08)
	%FB2000Bank09Macros(!BANK_09, !BANK_09)
	%FB2000Bank0AMacros(!BANK_0A, !BANK_0A)
	%FB2000Bank0BMacros(!BANK_0B, !BANK_0B)
	%FB2000Bank0CMacros(!BANK_0C, !BANK_0C)
	%FB2000Bank0DMacros(!BANK_0D, !BANK_0D)
	%FB2000Bank0EMacros(!BANK_0E, !BANK_0E)
	%FB2000Bank0FMacros(!BANK_0F, !BANK_0F)
endmacro
