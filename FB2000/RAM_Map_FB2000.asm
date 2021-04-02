
!RAM_FB2000_Level_MasterDeathTimerLo = $0003A3
!RAM_FB2000_Level_MasterDeathTimerHi = !RAM_FB2000_Level_MasterDeathTimerLo+$01

!RAM_FB2000_Level_LevelNum = $0003CE

!RAM_FB2000_Level_Smiloids_SpriteTableStart = $000B9A



struct FB2000_Level_Smiloid $000000 ; !RAM_FB2000_Level_Smiloids_SpriteTableStart
			skip $04
	.XPosLo		skip $01	; $04
	.XPosHi		skip $01	; $05
			skip $01
	.YPosLo		skip $01	; $07
	.YPosHi		skip $01	; $08
			skip $03
	.FacingAngle	skip $01	; $0C
			skip $03
	.HPRegenTimer	skip $01	; $10
			skip $05
	.HPLo		skip $01	; $16
	.HPHi		skip $01	; $17
	.MaxHPRegenLo	skip $01	; $18
	.MaxHPRegenHi	skip $01	; $19
	.MaxHPLo	skip $01	; $1A
	.MaxHPHi	skip $01	; $1B
			skip $08
	.ShotDelayLo	skip $01	; $24
	.ShotDelayHi	skip $01	; $25
	.MaxShotDelayLo	skip $01	; $26
	.MaxShotDelayHi	skip $01	; $27
	.ActiveShotsLo	skip $01	; $28
	.ActiveShotsHi	skip $01	; $29
	.MaxShotsLo	skip $01	; $2A
	.MaxShotsHi	skip $01	; $2B
			skip $04
	.MaxTurnSpeed	skip $01	; $30
			skip $16
	.ShieldTimerLo	skip $01	; $47
	.ShieldTimerHi	skip $01	; $48
			skip $02
	.FreezeTimerLo	skip $01	; $4B
	.FreezeTimerHi	skip $01	; $4C
	.StealthTimerLo	skip $01	; $4D
	.StealthTimerHi	skip $01	; $4E
			skip $02
	.Name		skip $0B	; $51-$5B
	.ExitLevelFlag			;\ $5C
	.GameOverFlag	skip $01	;/
			skip $03
	.IDLo		skip $01	; $60
	.IDHi		skip $01	; $61
endstruct align $70