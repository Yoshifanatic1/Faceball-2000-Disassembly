; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!FB2000_U = $0001

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl GFXPointersStart,(GFXPointersEnd-GFXPointersStart)/$0C
	dl TexturesPointersStart,(TexturesPointersEnd-TexturesPointersStart)/$0C
	dl TilemapPointersStart,(TilemapPointersEnd-TilemapPointersStart)/$0C
	dl PalettesPointersStart,(PalettesPointersEnd-PalettesPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

GFXPointersStart:
	dl $048041,$0495F9,GFX_Layer2_MasterControl,GFX_Layer2_MasterControlEnd
	dl $0495F9,$049AF5,GFX_Layer3_HUDFontAndIndicators,GFX_Layer3_HUDFontAndIndicatorsEnd
	dl $049AF5,$049E9C,GFX_Layer3_WideFont,GFX_Layer3_WideFontEnd
	dl $049E9C,$04A2FC,GFX_Layer3_1PlayerArenaHUD,GFX_Layer3_1PlayerArenaHUDEnd
	dl $04AA3C,$04AD4C,GFX_Layer3_2PlayerArenaHUD,GFX_Layer3_2PlayerArenaHUDEnd
	dl $04B4AD,$04B9F9,GFX_Layer1_TitleScreenLogo,GFX_Layer1_TitleScreenLogoEnd
	dl $04BA1A,$04D8CD,GFX_Layer2_TitleScreenLogo,GFX_Layer2_TitleScreenLogoEnd
	dl $04D8EE,$04E4F4,GFX_Layer2_BlueCatSplashScreen,GFX_Layer2_BlueCatSplashScreenEnd
	dl $058201,$0597AD,GFX_Mode7_EndingSmileyFace,GFX_Mode7_EndingSmileyFaceEnd
	dl $0599AE,$05B785,GFX_Mode7_ZoomInTitleScreen,GFX_Mode7_ZoomInTitleScreenEnd
	dl $05B785,$05BCF5,GFX_Layer3_1PlayerCyberzoneHUD,GFX_Layer3_1PlayerCyberzoneHUDEnd
	dl $05C435,$05C7F5,GFX_Layer3_2PlayerCyberzoneHUD,GFX_Layer3_2PlayerCyberzoneHUDEnd
	dl $05CF35,$05E735,GFX_Sprite_HUDIcons,GFX_Sprite_HUDIconsEnd
	dl $0E8041,$0E8B25,GFX_Layer2_CityZone,GFX_Layer2_CityZoneEnd
	dl $0E8B66,$0E9AC1,GFX_Layer2_AsteroidZone,GFX_Layer2_AsteroidZoneEnd
	dl $0E9B02,$0EABAC,GFX_Layer2_IceZone,GFX_Layer2_IceZoneEnd
	dl $0EABED,$0EBD6C,GFX_Layer2_DesertZone,GFX_Layer2_DesertZoneEnd
	dl $0EBDAD,$0EC836,GFX_Layer2_MarsZone,GFX_Layer2_MarsZoneEnd
	dl $0EC877,$0ED395,GFX_Layer2_SpaceZone,GFX_Layer2_SpaceZoneEnd
	dl $0ED3D6,$0EE1ED,GFX_Layer2_CyberZone,GFX_Layer2_CyberZoneEnd
	dl $0EE22E,$0EE943,GFX_Layer2_StarZone,GFX_Layer2_StarZoneEnd
	dl $0EE984,$0EFCBD,GFX_Layer2_Arena,GFX_Layer2_ArenaEnd
GFXPointersEnd:

;--------------------------------------------------------------------

TexturesPointersStart:
	dl $038F0F,$038FCF,DATA_038F0F,DATA_038F0FEnd
	dl $038FDB,$03909B,DATA_038FDB,DATA_038FDBEnd
	dl $0390A7,$039167,DATA_0390A7,DATA_0390A7End
	dl $039173,$039233,DATA_039173,DATA_039173End
	dl $03923F,$0392FF,DATA_03923F,DATA_03923FEnd
	dl $03930B,$0393CB,DATA_03930B,DATA_03930BEnd
	dl $0393D7,$039497,DATA_0393D7,DATA_0393D7End
	dl $0394A3,$039563,DATA_0394A3,DATA_0394A3End
	dl $06800C,$06818C,DATA_06800C,DATA_06800CEnd
	dl $06818C,$06830C,DATA_06818C,DATA_06818CEnd
	dl $06830C,$06848C,DATA_06830C,DATA_06830CEnd
	dl $06848C,$06860C,DATA_06848C,DATA_06848CEnd
	dl $068618,$068798,DATA_068618,DATA_068618End
	dl $068798,$068918,DATA_068798,DATA_068798End
	dl $068918,$068A98,DATA_068918,DATA_068918End
	dl $068A98,$068C18,DATA_068A98,DATA_068A98End
	dl $068C24,$068DA4,DATA_068C24,DATA_068C24End
	dl $068DA4,$068F24,DATA_068DA4,DATA_068DA4End
	dl $068F24,$0690A4,DATA_068F24,DATA_068F24End
	dl $0690A4,$069224,DATA_0690A4,DATA_0690A4End
	dl $069230,$0693B0,DATA_069230,DATA_069230End
	dl $0693B0,$069530,DATA_0693B0,DATA_0693B0End
	dl $069530,$0696B0,DATA_069530,DATA_069530End
	dl $0696B0,$069E3C,DATA_0696B0,DATA_0696B0End
	dl $069E48,$069FC8,DATA_069E48,DATA_069E48End
	dl $069FC8,$06A148,DATA_069FC8,DATA_069FC8End
	dl $06A148,$06A2C8,DATA_06A148,DATA_06A148End
	dl $06A2C8,$06A448,DATA_06A2C8,DATA_06A2C8End
	dl $06A454,$06A5D4,DATA_06A454,DATA_06A454End
	dl $06A5D4,$06A754,DATA_06A5D4,DATA_06A5D4End
	dl $06A754,$06A8D4,DATA_06A754,DATA_06A754End
	dl $06A8D4,$06AA54,DATA_06A8D4,DATA_06A8D4End
	dl $06AA60,$06ABE0,DATA_06AA60,DATA_06AA60End
	dl $06ABE0,$06AD60,DATA_06ABE0,DATA_06ABE0End
	dl $06AD60,$06AEE0,DATA_06AD60,DATA_06AD60End
	dl $06AEE0,$06B060,DATA_06AEE0,DATA_06AEE0End
	dl $06B06C,$06B1EC,DATA_06B06C,DATA_06B06CEnd
	dl $06B1EC,$06B36C,DATA_06B1EC,DATA_06B1ECEnd
	dl $06B36C,$06B4EC,DATA_06B36C,DATA_06B36CEnd
	dl $06B4EC,$06B66C,DATA_06B4EC,DATA_06B4ECEnd
	dl $06B678,$06B7F8,DATA_06B678,DATA_06B678End
	dl $06B7F8,$06B978,DATA_06B7F8,DATA_06B7F8End
	dl $06B978,$06BAF8,DATA_06B978,DATA_06B978End
	dl $06BAF8,$06BC78,DATA_06BAF8,DATA_06BAF8End
	dl $06BC84,$06BE04,DATA_06BC84,DATA_06BC84End
	dl $06BE04,$06BF84,DATA_06BE04,DATA_06BE04End
	dl $06BF84,$06C104,DATA_06BF84,DATA_06BF84End
	dl $06C104,$06C284,DATA_06C104,DATA_06C104End
	dl $06C290,$06C410,DATA_06C290,DATA_06C290End
	dl $06C410,$06C590,DATA_06C410,DATA_06C410End
	dl $06C590,$06C710,DATA_06C590,DATA_06C590End
	dl $06C710,$06C890,DATA_06C710,DATA_06C710End
	dl $06C89C,$06CA1C,DATA_06C89C,DATA_06C89CEnd
	dl $06CA1C,$06CB9C,DATA_06CA1C,DATA_06CA1CEnd
	dl $06CB9C,$06CD1C,DATA_06CB9C,DATA_06CB9CEnd
	dl $06CD1C,$06CE9C,DATA_06CD1C,DATA_06CD1CEnd
	dl $06CEA8,$06D028,DATA_06CEA8,DATA_06CEA8End
	dl $06D028,$06D1A8,DATA_06D028,DATA_06D028End
	dl $06D1A8,$06D328,DATA_06D1A8,DATA_06D1A8End
	dl $06D328,$06D4A8,DATA_06D328,DATA_06D328End
	dl $06D4B4,$06D634,DATA_06D4B4,DATA_06D4B4End
	dl $06D634,$06D7B4,DATA_06D634,DATA_06D634End
	dl $06D7B4,$06D934,DATA_06D7B4,DATA_06D7B4End
	dl $06D934,$06DAB4,DATA_06D934,DATA_06D934End
	dl $06DAC0,$06DC40,DATA_06DAC0,DATA_06DAC0End
	dl $06DC40,$06DDC0,DATA_06DC40,DATA_06DC40End
	dl $06DDC0,$06DF40,DATA_06DDC0,DATA_06DDC0End
	dl $06DF40,$06E0C0,DATA_06DF40,DATA_06DF40End
TexturesPointersEnd:

;--------------------------------------------------------------------

TilemapPointersStart:
	dl $04A2FC,$04A9FC,TM_Layer3_1PlayerArenaHUD,TM_Layer3_1PlayerArenaHUDEnd
	dl $04AD4C,$04B44C,TM_Layer3_2PlayerArenaHUD,TM_Layer3_2PlayerArenaHUDEnd
	dl $05BCF5,$05C3F5,TM_Layer3_1PlayerCyberzoneHUD,TM_Layer3_1PlayerCyberzoneHUDEnd
	dl $05C7F5,$05CEF5,TM_Layer3_2PlayerCyberzoneHUD,TM_Layer3_2PlayerCyberzoneHUDEnd
TilemapPointersEnd:

;--------------------------------------------------------------------

PalettesPointersStart:
	dl $039594,$039694,PAL_GlobalFGandBG,PAL_GlobalFGandBGEnd
	dl $039694,$039794,PAL_GlobalSprite,PAL_GlobalSpriteEnd
	dl $048000,$048040,PAL_MasterControl,PAL_MasterControlEnd
	dl $04A9FC,$04AA3C,PAL_Layer3_1PlayerArenaHUD,PAL_Layer3_1PlayerArenaHUDEnd
	dl $04B44C,$04B48C,PAL_Layer3_2PlayerArenaHUD,PAL_Layer3_2PlayerArenaHUDEnd
	dl $04B48C,$04B4AC,PAL_Layer1_TitleScreenLogo,PAL_Layer1_TitleScreenLogoEnd
	dl $04B9F9,$04BA19,PAL_Layer2_TitleScreenLogo,PAL_Layer2_TitleScreenLogoEnd
	dl $04D8CD,$04D8ED,PAL_Layer2_BlueCatSplashScreen,PAL_Layer2_BlueCatSplashScreenEnd
	dl $058000,$058200,PAL_Mode7_EndingSmileyFace,PAL_Mode7_EndingSmileyFaceEnd
	dl $0597AD,$0599AD,PAL_Mode7_ZoomInTitleScreen,PAL_Mode7_ZoomInTitleScreenEnd
	dl $05C3F5,$05C435,PAL_Layer3_1PlayerCyberzoneHUD,PAL_Layer3_1PlayerCyberzoneHUDEnd
	dl $05CEF5,$05CF35,PAL_Layer3_2PlayerCyberzoneHUD,PAL_Layer3_2PlayerCyberzoneHUDEnd
	dl $0E8000,$0E8040,PAL_Layer2_CityZone,PAL_Layer2_CityZoneEnd
	dl $0E8B25,$0E8B65,PAL_Layer2_AsteroidZone,PAL_Layer2_AsteroidZoneEnd
	dl $0E9AC1,$0E9B01,PAL_Layer2_IceZone,PAL_Layer2_IceZoneEnd
	dl $0EABAC,$0EABEC,PAL_Layer2_DesertZone,PAL_Layer2_DesertZoneEnd
	dl $0EBD6C,$0EBDAC,PAL_Layer2_MarsZone,PAL_Layer2_MarsZoneEnd
	dl $0EC836,$0EC876,PAL_Layer2_SpaceZone,PAL_Layer2_SpaceZoneEnd
	dl $0ED395,$0ED3D5,PAL_Layer2_CyberZone,PAL_Layer2_CyberZoneEnd
	dl $0EE1ED,$0EE22D,PAL_Layer2_StarZone,PAL_Layer2_StarZoneEnd
	dl $0EE943,$0EE983,PAL_Layer2_Arena,PAL_Layer2_ArenaEnd
PalettesPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $088000,$08A1A2,Music_AsteroidZone,Music_AsteroidZoneEnd
	dl $08A1A2,$08CF4C,Music_IceZone,Music_IceZoneEnd
	dl $08CF4C,$08EC0A,Music_SpaceZone,Music_SpaceZoneEnd
	dl $08EC0A,$08F45A,Music_TitleScreen,Music_TitleScreenEnd
	dl $098000,$09AB98,Music_MarsZone,Music_MarsZoneEnd
	dl $09AB98,$09D405,Music_StarZone,Music_StarZoneEnd
	dl $0BB4C9,$0BD659,Music_CityZone,Music_CityZoneEnd
	dl $0BD659,$0BFA47,Music_DesertZone,Music_DesertZoneEnd
MusicPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $0A8057,$0A873E,BRRSample00,BRRSample00End
	dl $0A873E,$0A89C0,BRRSample01,BRRSample01End
	dl $0A89C0,$0A954B,BRRSample02,BRRSample02End
	dl $0A954B,$0AA382,BRRSample03,BRRSample03End
	dl $0AA382,$0AAD1E,BRRSample04,BRRSample04End
	dl $0AAD1E,$0AB37E,BRRSample05,BRRSample05End
	dl $0AB37E,$0AB8BE,BRRSample06,BRRSample06End
	dl $0AB8BE,$0AC4F4,BRRSample07,BRRSample07End
	dl $0AC4F4,$0ACB81,BRRSample08,BRRSample08End
	dl $0ACB81,$0AD190,BRRSample09,BRRSample09End
	dl $0AD190,$0AE327,BRRSample0A,BRRSample0AEnd
	dl $0AE327,$0AF4BE,BRRSample0B,BRRSample0BEnd
	dl $0AF4BE,$0B89AC,BRRSample0C,BRRSample0CEnd
	dl $0B89AC,$0B9468,BRRSample0D,BRRSample0DEnd
	dl $0B9468,$0BABCC,BRRSample0E,BRRSample0EEnd
	dl $0BABCC,$0BABE1,BRRSample0F,BRRSample0FEnd
	dl $0BABE1,$0BABED,BRRSample10,BRRSample10End
	dl $0BABED,$0BAC02,BRRSample11,BRRSample11End
	dl $0BAC02,$0BB4C4,BRRSample12,BRRSample12End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Layer3_1PlayerCyberzoneHUD:
	db "GFX_Layer3_1PlayerCyberzoneHUD.bin"
GFX_Layer3_1PlayerCyberzoneHUDEnd:
GFX_Layer3_2PlayerCyberzoneHUD:
	db "GFX_Layer3_2PlayerCyberzoneHUD.bin"
GFX_Layer3_2PlayerCyberzoneHUDEnd:
GFX_Sprite_HUDIcons:
	db "GFX_Sprite_HUDIcons.bin"
GFX_Sprite_HUDIconsEnd:
GFX_Layer2_MasterControl:
	db "GFX_Layer2_MasterControl.rnc"
GFX_Layer2_MasterControlEnd:
GFX_Layer3_HUDFontAndIndicators:
	db "GFX_Layer3_HUDFontAndIndicators.rnc"
GFX_Layer3_HUDFontAndIndicatorsEnd:
GFX_Layer3_WideFont:
	db "GFX_Layer3_WideFont.rnc"
GFX_Layer3_WideFontEnd:
GFX_Layer3_1PlayerArenaHUD:
	db "GFX_Layer3_1PlayerArenaHUD.bin"
GFX_Layer3_1PlayerArenaHUDEnd:
GFX_Layer3_2PlayerArenaHUD:
	db "GFX_Layer3_2PlayerArenaHUD.bin"
GFX_Layer3_2PlayerArenaHUDEnd:
GFX_Layer1_TitleScreenLogo:
	db "GFX_Layer1_TitleScreenLogo.rnc"
GFX_Layer1_TitleScreenLogoEnd:
GFX_Layer2_TitleScreenLogo:
	db "GFX_Layer2_TitleScreenLogo.rnc"
GFX_Layer2_TitleScreenLogoEnd:
GFX_Layer2_BlueCatSplashScreen:
	db "GFX_Layer2_BlueCatSplashScreen.rnc"
GFX_Layer2_BlueCatSplashScreenEnd:
GFX_Mode7_EndingSmileyFace:
	db "GFX_Mode7_EndingSmileyFace.rnc"
GFX_Mode7_EndingSmileyFaceEnd:
GFX_Mode7_ZoomInTitleScreen:
	db "GFX_Mode7_ZoomInTitleScreen.rnc"
GFX_Mode7_ZoomInTitleScreenEnd:
GFX_Layer2_CityZone:
	db "GFX_Layer2_CityZone.rnc"
GFX_Layer2_CityZoneEnd:
GFX_Layer2_AsteroidZone:
	db "GFX_Layer2_AsteroidZone.rnc"
GFX_Layer2_AsteroidZoneEnd:
GFX_Layer2_IceZone:
	db "GFX_Layer2_IceZone.rnc"
GFX_Layer2_IceZoneEnd:
GFX_Layer2_DesertZone:
	db "GFX_Layer2_DesertZone.rnc"
GFX_Layer2_DesertZoneEnd:
GFX_Layer2_MarsZone:
	db "GFX_Layer2_MarsZone.rnc"
GFX_Layer2_MarsZoneEnd:
GFX_Layer2_SpaceZone:
	db "GFX_Layer2_SpaceZone.rnc"
GFX_Layer2_SpaceZoneEnd:
GFX_Layer2_CyberZone:
	db "GFX_Layer2_CyberZone.rnc"
GFX_Layer2_CyberZoneEnd:
GFX_Layer2_StarZone:
	db "GFX_Layer2_StarZone.rnc"
GFX_Layer2_StarZoneEnd:
GFX_Layer2_Arena:
	db "GFX_Layer2_Arena.rnc"
GFX_Layer2_ArenaEnd:

;--------------------------------------------------------------------

DATA_038F0F:
	db "DATA_038F0F.bin"
DATA_038F0FEnd:
DATA_038FDB:
	db "DATA_038FDB.bin"
DATA_038FDBEnd:
DATA_0390A7:
	db "DATA_0390A7.bin"
DATA_0390A7End:
DATA_039173:
	db "DATA_039173.bin"
DATA_039173End:
DATA_03923F:
	db "DATA_03923F.bin"
DATA_03923FEnd:
DATA_03930B:
	db "DATA_03930B.bin"
DATA_03930BEnd:
DATA_0393D7:
	db "DATA_0393D7.bin"
DATA_0393D7End:
DATA_0394A3:
	db "DATA_0394A3.bin"
DATA_0394A3End:
DATA_06800C:
	db "DATA_06800C.bin"
DATA_06800CEnd:
DATA_06818C:
	db "DATA_06818C.bin"
DATA_06818CEnd:
DATA_06830C:
	db "DATA_06830C.bin"
DATA_06830CEnd:
DATA_06848C:
	db "DATA_06848C.bin"
DATA_06848CEnd:
DATA_068618:
	db "DATA_068618.bin"
DATA_068618End:
DATA_068798:
	db "DATA_068798.bin"
DATA_068798End:
DATA_068918:
	db "DATA_068918.bin"
DATA_068918End:
DATA_068A98:
	db "DATA_068A98.bin"
DATA_068A98End:
DATA_068C24:
	db "DATA_068C24.bin"
DATA_068C24End:
DATA_068DA4:
	db "DATA_068DA4.bin"
DATA_068DA4End:
DATA_068F24:
	db "DATA_068F24.bin"
DATA_068F24End:
DATA_0690A4:
	db "DATA_0690A4.bin"
DATA_0690A4End:
DATA_069230:
	db "DATA_069230.bin"
DATA_069230End:
DATA_0693B0:
	db "DATA_0693B0.bin"
DATA_0693B0End:
DATA_069530:
	db "DATA_069530.bin"
DATA_069530End:
DATA_0696B0:
	db "DATA_0696B0.bin"
DATA_0696B0End:
DATA_069E48:
	db "DATA_069E48.bin"
DATA_069E48End:
DATA_069FC8:
	db "DATA_069FC8.bin"
DATA_069FC8End:
DATA_06A148:
	db "DATA_06A148.bin"
DATA_06A148End:
DATA_06A2C8:
	db "DATA_06A2C8.bin"
DATA_06A2C8End:
DATA_06A454:
	db "DATA_06A454.bin"
DATA_06A454End:
DATA_06A5D4:
	db "DATA_06A5D4.bin"
DATA_06A5D4End:
DATA_06A754:
	db "DATA_06A754.bin"
DATA_06A754End:
DATA_06A8D4:
	db "DATA_06A8D4.bin"
DATA_06A8D4End:
DATA_06AA60:
	db "DATA_06AA60.bin"
DATA_06AA60End:
DATA_06ABE0:
	db "DATA_06ABE0.bin"
DATA_06ABE0End:
DATA_06AD60:
	db "DATA_06AD60.bin"
DATA_06AD60End:
DATA_06AEE0:
	db "DATA_06AEE0.bin"
DATA_06AEE0End:
DATA_06B06C:
	db "DATA_06B06C.bin"
DATA_06B06CEnd:
DATA_06B1EC:
	db "DATA_06B1EC.bin"
DATA_06B1ECEnd:
DATA_06B36C:
	db "DATA_06B36C.bin"
DATA_06B36CEnd:
DATA_06B4EC:
	db "DATA_06B4EC.bin"
DATA_06B4ECEnd:
DATA_06B678:
	db "DATA_06B678.bin"
DATA_06B678End:
DATA_06B7F8:
	db "DATA_06B7F8.bin"
DATA_06B7F8End:
DATA_06B978:
	db "DATA_06B978.bin"
DATA_06B978End:
DATA_06BAF8:
	db "DATA_06BAF8.bin"
DATA_06BAF8End:
DATA_06BC84:
	db "DATA_06BC84.bin"
DATA_06BC84End:
DATA_06BE04:
	db "DATA_06BE04.bin"
DATA_06BE04End:
DATA_06BF84:
	db "DATA_06BF84.bin"
DATA_06BF84End:
DATA_06C104:
	db "DATA_06C104.bin"
DATA_06C104End:
DATA_06C290:
	db "DATA_06C290.bin"
DATA_06C290End:
DATA_06C410:
	db "DATA_06C410.bin"
DATA_06C410End:
DATA_06C590:
	db "DATA_06C590.bin"
DATA_06C590End:
DATA_06C710:
	db "DATA_06C710.bin"
DATA_06C710End:
DATA_06C89C:
	db "DATA_06C89C.bin"
DATA_06C89CEnd:
DATA_06CA1C:
	db "DATA_06CA1C.bin"
DATA_06CA1CEnd:
DATA_06CB9C:
	db "DATA_06CB9C.bin"
DATA_06CB9CEnd:
DATA_06CD1C:
	db "DATA_06CD1C.bin"
DATA_06CD1CEnd:
DATA_06CEA8:
	db "DATA_06CEA8.bin"
DATA_06CEA8End:
DATA_06D028:
	db "DATA_06D028.bin"
DATA_06D028End:
DATA_06D1A8:
	db "DATA_06D1A8.bin"
DATA_06D1A8End:
DATA_06D328:
	db "DATA_06D328.bin"
DATA_06D328End:
DATA_06D4B4:
	db "DATA_06D4B4.bin"
DATA_06D4B4End:
DATA_06D634:
	db "DATA_06D634.bin"
DATA_06D634End:
DATA_06D7B4:
	db "DATA_06D7B4.bin"
DATA_06D7B4End:
DATA_06D934:
	db "DATA_06D934.bin"
DATA_06D934End:
DATA_06DAC0:
	db "DATA_06DAC0.bin"
DATA_06DAC0End:
DATA_06DC40:
	db "DATA_06DC40.bin"
DATA_06DC40End:
DATA_06DDC0:
	db "DATA_06DDC0.bin"
DATA_06DDC0End:
DATA_06DF40:
	db "DATA_06DF40.bin"
DATA_06DF40End:

;--------------------------------------------------------------------

TM_Layer3_1PlayerArenaHUD:
	db "Layer3_1PlayerArenaHUD.bin"
TM_Layer3_1PlayerArenaHUDEnd:
TM_Layer3_2PlayerArenaHUD:
	db "Layer3_2PlayerArenaHUD.bin"
TM_Layer3_2PlayerArenaHUDEnd:
TM_Layer3_1PlayerCyberzoneHUD:
	db "Layer3_1PlayerCyberzoneHUD.bin"
TM_Layer3_1PlayerCyberzoneHUDEnd:
TM_Layer3_2PlayerCyberzoneHUD:
	db "Layer3_2PlayerCyberzoneHUD.bin"
TM_Layer3_2PlayerCyberzoneHUDEnd:

;--------------------------------------------------------------------

PAL_GlobalFGandBG:
	db "GlobalFGandBG.bin"
PAL_GlobalFGandBGEnd:
PAL_GlobalSprite:
	db "GlobalSprite.bin"
PAL_GlobalSpriteEnd:
PAL_MasterControl:
	db "Layer2_MasterControl.bin"
PAL_MasterControlEnd:
PAL_Layer3_1PlayerArenaHUD:
	db "Layer3_1PlayerArenaHUD.bin"
PAL_Layer3_1PlayerArenaHUDEnd:
PAL_Layer3_2PlayerArenaHUD:
	db "Layer3_2PlayerArenaHUD.bin"
PAL_Layer3_2PlayerArenaHUDEnd:
PAL_Layer1_TitleScreenLogo:
	db "Layer1_TitleScreenLogo.bin"
PAL_Layer1_TitleScreenLogoEnd:
PAL_Layer2_TitleScreenLogo:
	db "Layer2_TitleScreenLogo.bin"
PAL_Layer2_TitleScreenLogoEnd:
PAL_Layer2_BlueCatSplashScreen:
	db "Layer2_BlueCatSplashScreen.bin"
PAL_Layer2_BlueCatSplashScreenEnd:
PAL_Mode7_EndingSmileyFace:
	db "Mode7_EndingSmileyFace.bin"
PAL_Mode7_EndingSmileyFaceEnd:
PAL_Mode7_ZoomInTitleScreen:
	db "Mode7_ZoomInTitleScreen.bin"
PAL_Mode7_ZoomInTitleScreenEnd:
PAL_Layer3_1PlayerCyberzoneHUD:
	db "Layer3_1PlayerCyberzoneHUD.bin"
PAL_Layer3_1PlayerCyberzoneHUDEnd:
PAL_Layer3_2PlayerCyberzoneHUD:
	db "Layer3_2PlayerCyberzoneHUD.bin"
PAL_Layer3_2PlayerCyberzoneHUDEnd:
PAL_Layer2_CityZone:
	db "Layer2_CityZone.bin"
PAL_Layer2_CityZoneEnd:
PAL_Layer2_AsteroidZone:
	db "Layer2_AsteroidZone.bin"
PAL_Layer2_AsteroidZoneEnd:
PAL_Layer2_IceZone:
	db "Layer2_IceZone.bin"
PAL_Layer2_IceZoneEnd:
PAL_Layer2_DesertZone:
	db "Layer2_DesertZone.bin"
PAL_Layer2_DesertZoneEnd:
PAL_Layer2_MarsZone:
	db "Layer2_MarsZone.bin"
PAL_Layer2_MarsZoneEnd:
PAL_Layer2_SpaceZone:
	db "Layer2_SpaceZone.bin"
PAL_Layer2_SpaceZoneEnd:
PAL_Layer2_CyberZone:
	db "Layer2_CyberZone.bin"
PAL_Layer2_CyberZoneEnd:
PAL_Layer2_StarZone:
	db "Layer2_StarZone.bin"
PAL_Layer2_StarZoneEnd:
PAL_Layer2_Arena:
	db "Layer2_Arena.bin"
PAL_Layer2_ArenaEnd:

;--------------------------------------------------------------------

Music_AsteroidZone:
	db "AsteroidZone.bin"
Music_AsteroidZoneEnd:
Music_IceZone:
	db "IceZone.bin"
Music_IceZoneEnd:
Music_SpaceZone:
	db "SpaceZone.bin"
Music_SpaceZoneEnd:
Music_TitleScreen:
	db "TitleScreen.rnc"
Music_TitleScreenEnd:
Music_MarsZone:
	db "MarsZone.bin"
Music_MarsZoneEnd:
Music_StarZone:
	db "StarZone.bin"
Music_StarZoneEnd:
Music_CityZone:
	db "CityZone.bin"
Music_CityZoneEnd:
Music_DesertZone:
	db "DesertZone.bin"
Music_DesertZoneEnd:

;--------------------------------------------------------------------

BRRSample00:
	db "00.brr"
BRRSample00End:
BRRSample01:
	db "01.brr"
BRRSample01End:
BRRSample02:
	db "02.brr"
BRRSample02End:
BRRSample03:
	db "03.brr"
BRRSample03End:
BRRSample04:
	db "04.brr"
BRRSample04End:
BRRSample05:
	db "05.brr"
BRRSample05End:
BRRSample06:
	db "06.brr"
BRRSample06End:
BRRSample07:
	db "07.brr"
BRRSample07End:
BRRSample08:
	db "08.brr"
BRRSample08End:
BRRSample09:
	db "09.brr"
BRRSample09End:
BRRSample0A:
	db "0A.brr"
BRRSample0AEnd:
BRRSample0B:
	db "0B.brr"
BRRSample0BEnd:
BRRSample0C:
	db "0C.brr"
BRRSample0CEnd:
BRRSample0D:
	db "0D.brr"
BRRSample0DEnd:
BRRSample0E:
	db "0E.brr"
BRRSample0EEnd:
BRRSample0F:
	db "0F.brr"
BRRSample0FEnd:
BRRSample10:
	db "10.brr"
BRRSample10End:
BRRSample11:
	db "11.brr"
BRRSample11End:
BRRSample12:
	db "12.brr"
BRRSample12End:

;--------------------------------------------------------------------
