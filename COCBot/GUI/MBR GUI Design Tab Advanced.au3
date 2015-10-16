; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GKevinOD (2014)
; Modified ......: DkEd, Hervidero (2015), Promac (2015)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

;~ -------------------------------------------------------------
;~ Attack Advanced Tab
;~ -------------------------------------------------------------
 $tabAttackAdv = GUICtrlCreateTabItem(getLocaleString("tabAttackAdv"))
	Local $x = 30, $y = 150
	$grpAtkOptions = GUICtrlCreateGroup(getLocaleString("grpAtkOptions"), $x - 20, $y - 20, 450, 85)
		$chkAttackNow = GUICtrlCreateCheckbox(getLocaleString("chkAttackNow"), $x - 10, $y, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkAttackNow",1))
			GUICtrlSetOnEvent(-1, "chkAttackNow")
		$y +=22
		$lblAttackNow = GUICtrlCreateLabel(getLocaleString("lbAttackNow"), $x - 10, $y + 4, -1, -1, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipLbAttackNow"))
			GUICtrlSetState(-1, $GUI_DISABLE)
		$cmbAttackNowDelay = GUICtrlCreateCombo("", $x + 20, $y + 1, 35, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipLbAttackNow"))
			GUICtrlSetData(-1, "5|4|3|2|1","3") ; default value 3
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblAttackNowSec = GUICtrlCreateLabel(getLocaleString("lbAttackNowSec"), $x + 57, $y + 4, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipLbAttackNow"))
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y +=22
		$chkAttackTH = GUICtrlCreateCheckbox(getLocaleString("chkAttackTH"), $x - 10, $y, -1, -1)
            GUICtrlSetTip(-1, getLocaleString("tipChkAttackTH",1))

	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 30, $y = 260
    $grpTHSnipeAttackCombo = GUICtrlCreateGroup(getLocaleString("grpTHSnipeAtkCombo"), $x - 20, $y - 20, 225, 285)
		$y -= 5
		$chkTrophyMode = GUICtrlCreateCheckbox(getLocaleString("chkTrophyMode"), $x - 10, $y, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkTrophyMode"))
			GUICtrlSetOnEvent(-1, "chkSnipeMode")
		$y+= 25
		$lblTHadd = GUICtrlCreateLabel( getLocaleString("lblTHadd"), $x -10, $y+5, -1, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTHaddtiles",1))
		$lblTHaddtiles = GUICtrlCreateLabel( getLocaleString("lbTHaddtiles"), $x + 57, $y+5, -1, 17)
		    GUICtrlSetTip(-1, getLocaleString("tipTHaddtiles",1))
		$txtTHaddtiles = GUICtrlCreateInput("2", $x + 20, $y, 35, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipTHaddtiles",1))
			GUICtrlSetLimit(-1, 1)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y+= 30
		$lblAttackTHType = GUICtrlCreateLabel(getLocaleString("lbAttackTHType"), $x - 23 , $y + 5 , -1, 17, $SS_RIGHT)
		$cmbAttackTHType = GUICtrlCreateCombo("",  $x + 80, $y, 120, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, getLocaleString("cmbAttackTHType"), getLocaleString("cmbAttackTHTypeDef"))
			GUICtrlSetTip(-1, getLocaleString("tipCmbAttackTHType",1))
			GUICtrlSetState(-1, $GUI_DISABLE)
        $y +=25
		$lblAttackBottomType = GUICtrlCreateLabel(getLocaleString("lblAttackBottomType"), $x - 23 , $y + 5, -1, 17, $SS_RIGHT)
		$cmbAttackbottomType = GUICtrlCreateCombo("",  $x + 80, $y, 120, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, getLocaleString("cmbAttackBottomType"), getLocaleString("cmbAttackBottomTypeDef"))
			GUICtrlSetTip(-1, getLocaleString("tipAttackBottomType",1))
			GUICtrlSetState(-1, $GUI_DISABLE)

		$y += 30
		GUICtrlCreateIcon($pIconLib, $eIcnKing, $x - 16 , $y, 24, 24)
		$chkUseKingTH = GUICtrlCreateCheckbox(getLocaleString("chkUseKingTH"), $x + 12 , $y+1, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipUseKingTH",1))
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnLightSpell, $x + 102 , $y, 24, 24)
		$chkUseLSpellsTH = GUICtrlCreateCheckbox(getLocaleString("chkUseLSpellsTH"), $x + 130 , $y+1, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipUseLSpellsTH",1))
			GUICtrlSetState(-1, $GUI_DISABLE)

		$y += 27
		GUICtrlCreateIcon($pIconLib, $eIcnQueen, $x - 16 , $y, 24, 24)
		$chkUseQueenTH = GUICtrlCreateCheckbox(getLocaleString("chkUseQueenTH"), $x + 12 , $y+1, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipUseQueenTH",1))
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnRageSpell, $x + 102 , $y, 24, 24)
		$chkUseRSpellsTH = GUICtrlCreateCheckbox(getLocaleString("chkUseRSpellsTH"), $x + 130 , $y+1, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipUseRSpellsTH",1))
			GUICtrlSetState(-1, $GUI_DISABLE)

		$y += 27
		GUICtrlCreateIcon($pIconLib, $eIcnCC, $x - 16, $y, 24, 24)
		$chkUseClastleTH = GUICtrlCreateCheckbox(getLocaleString("chkUseCastleTH"), $x + 12 , $y+1, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipUseCastleTH",1))
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnHealSpell, $x + 102 , $y, 24, 24)
		$chkUseHSpellsTH = GUICtrlCreateCheckbox(getLocaleString("chkUseHSpellsTH"), $x + 130 , $y+1, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipUseHSpellsTH",1))
			GUICtrlSetState(-1, $GUI_DISABLE)
    GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 260, $y = 240
	$grpBullyAtkCombo = GUICtrlCreateGroup(getLocaleString("grpBullyAtkCombo"), $x - 20, $y - 20, 220, 110)
	    $y -= 5
		$x -= 10
		$chkBullyMode = GUICtrlCreateCheckbox(getLocaleString("chkBullyMode"), $x, $y, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkBullyMode"))
			GUICtrlSetOnEvent(-1, "chkBullyMode")
		$txtATBullyMode = GUICtrlCreateInput("150", $x + 95, $y, 35, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetTip(-1, getLocaleString("tipATBullyMode"))
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblATBullyMode = GUICtrlCreateLabel(getLocaleString("lbATBullyMode",1), $x + 135, $y - 3, -1, -1)
		$y +=25
		$lblATBullyMode = GUICtrlCreateLabel(getLocaleString("lblATBullyMode",1), $x + 10, $y + 3, -1, -1, $SS_RIGHT)
		$cmbYourTH = GUICtrlCreateCombo("", $x + 95, $y, 50, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipLblATBullyMode"))
			GUICtrlSetData(-1, "4-6|7|8|9|10", "4-6")
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y += 24
		GUICtrlCreateLabel(getLocaleString("lbAttackStyle"), $x + 10, $y, -1, -1, $SS_RIGHT)
		$y += 14
		$radUseDBAttack = GUICtrlCreateRadio(getLocaleString("radUseDBAttack"), $x + 20, $y, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipRadUseDBAttack"))
			GUICtrlSetState(-1, $GUI_CHECKED)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$radUseLBAttack = GUICtrlCreateRadio(getLocaleString("radUseLBAttack"), $x + 115, $y, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipRadUseLBAttack"))
			GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 260, $y = 355
	$grpDefenseFarming = GUICtrlCreateGroup(getLocaleString("grpDefenseFarming"), $x - 20, $y - 20, 220, 170)
		$chkUnbreakable = GUICtrlCreateCheckbox(getLocaleString("chkUnbreakable"), $x, $y, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkUnbreakable"))
			GUICtrlSetOnEvent(-1, "chkUnbreakable")
		$y += 23
		$lblUnbreakable1 = GUICtrlCreateLabel(getLocaleString("lbUnbreakable1"), $x , $y + 3, -1, -1, $SS_LEFT)
		$txtUnbreakable = GUICtrlCreateInput("5", $x + 80, $y, 30, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnbreakable1"))
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblUnbreakable2 = GUICtrlCreateLabel(getLocaleString("lbUnbreakable2"), $x + 113, $y+3, -1, -1)
		$y += 28
		$lblUnBreakableFarm = GUICtrlCreateLabel(getLocaleString("lbUnBreakableFarm"), $x + 25 , $y, -1, -1)
		$lblUnBreakableSave = GUICtrlCreateLabel(getLocaleString("lbUnBreakableSave"), $x + 115 , $y, -1, -1)
		$y += 16
		$txtUnBrkMinGold = GUICtrlCreateInput("50000", $x + 20, $y, 58, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnBrkMinGold",1))
			GUICtrlSetLimit(-1, 7)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnGold, $x + 80, $y + 2, 16, 16)
		$txtUnBrkMaxGold = GUICtrlCreateInput("600000", $x + 110, $y, 58, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnBrkMaxGold",1))
			GUICtrlSetLimit(-1, 7)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnGold, $x + 170, $y + 2, 16, 16)
		$y += 26
		$txtUnBrkMinElixir = GUICtrlCreateInput("50000", $x + 20, $y, 58, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnBrkMinElixir",1))
			GUICtrlSetLimit(-1, 7)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x + 80, $y, 16, 16)
		$txtUnBrkMaxElixir = GUICtrlCreateInput("600000", $x + 110, $y, 58, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnBrkMaxElixir",1))
			GUICtrlSetLimit(-1, 7)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x + 170, $y, 16, 16)
		$y += 24
		$txtUnBrkMinDark = GUICtrlCreateInput("5000", $x + 20, $y, 58, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnBrkMinDark",1))
			GUICtrlSetLimit(-1, 6)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnDark, $x + 80, $y, 16, 16)
		$txtUnBrkMaxDark = GUICtrlCreateInput("6000", $x + 110, $y, 58, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipUnBrkMaxDark",1))
			GUICtrlSetLimit(-1, 6)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateIcon($pIconLib, $eIcnDark, $x + 170, $y, 16, 16)
    GUICtrlCreateGroup("", -99, -99, 1, 1)

GUICtrlCreateTabItem("")
