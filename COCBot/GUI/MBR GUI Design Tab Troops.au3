; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GKevinOD (2014)
; Modified ......: DkEd, Hervidero (2015)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

;~ -------------------------------------------------------------
;~ Troops Tab
;~ -------------------------------------------------------------
$tabTroops = GUICtrlCreateTabItem(getLocaleString("tabTroops"))
	Local $x = 30, $y = 150
	$grpTroopComp = GUICtrlCreateGroup(getLocaleString("grpTroopComp"), $x - 20, $y - 20, 145, 55)
		$cmbTroopComp = GUICtrlCreateCombo("", $x - 10, $y, 125, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipCmbTroopComp"))
			GUICtrlSetOnEvent(-1, "cmbTroopComp")
			GUICtrlSetData(-1, getLocaleString("cmbTroopComp"), getLocaleString("cmbTroopCompDefault"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 150
	$grpBarrackMode = GUICtrlCreateGroup(getLocaleString("grpBarrackMode"), $x - 20, $y -20, 150, 123)
		$lblBarrack4 = GUICtrlCreateLabel("1:", $x - 5, $y + 5, -1, -1)
		$cmbBarrack4 = GUICtrlCreateCombo("", $x + 10, $y, 100, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipCmbBarrack1"))
			GUICtrlSetData(-1, getLocaleString("cmbBarrack"), getLocaleString("cmbBarrackDefault1"))
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y += 2
		$lblBarrack3 = GUICtrlCreateLabel("2:", $x - 5, $y + 26, -1, -1)
		$cmbBarrack3 = GUICtrlCreateCombo("", $x + 10, $y + 21, 100, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipCmbBarrack2"))
			GUICtrlSetData(-1, getLocaleString("cmbBarrack"), getLocaleString("cmbBarrackDefault2"))
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y += 2
		$lblBarrack2 = GUICtrlCreateLabel("3:", $x - 5, $y + 47, -1, -1)
		$cmbBarrack2 = GUICtrlCreateCombo("", $x + 10, $y + 42, 100, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipCmbBarrack3"))
			GUICtrlSetData(-1, getLocaleString("cmbBarrack"), getLocaleString("cmbBarrackDefault3"))
			GUICtrlSetState(-1, $GUI_DISABLE)
		$y += 2
		$lblBarrack1 = GUICtrlCreateLabel("4:", $x - 5, $y + 68, -1, -1)
		$cmbBarrack1 = GUICtrlCreateCombo("", $x + 10, $y + 63, 100, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipCmbBarrack4"))
			GUICtrlSetData(-1, getLocaleString("cmbBarrack"), getLocaleString("cmbBarrackDefault4"))
			GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$y += 112
	$grpRaidComp = GUICtrlCreateGroup(getLocaleString("grpRaidComp"), $x - 20, $y - 15, 150, 52)
		$y += 10
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgTarget, $x - 10, $y - 8, 24, 24)
		$lblFullTroop = GUICtrlCreateLabel(getLocaleString("lblFullTroop"),$x + 20, $y , -1, 17)
		$txtFullTroop = GUICtrlCreateInput("99",  $x + 85, $y - 3, 30, 22, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipFullTroop"))
		$lblFullTroop = GUICtrlCreateLabel("%",$x + 117, $y, -1, 17)
			GUICtrlSetLimit(-1, 3)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$y = 150
	$x +=155
	$grpBoosterOptions = GUICtrlCreateGroup(getLocaleString("grpBoosterOptions"), $x - 20, $y - 20, 145, 175)
		$y -= 5
		GUICtrlCreateIcon ($pIconLib, $eIcnBarrackBoost, $x - 10, $y + 8, 24, 24)
		$lblQuantBoostBarracks = GUICtrlCreateLabel(getLocaleString("lblQuantBoostBarracks"), $x + 20, $y + 4 , -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipQuantBoostBarracks"))
		$cmbQuantBoostBarracks = GUICtrlCreateCombo("", $x + 80, $y, 30, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "0|1|2|3|4", "0")
			GUICtrlSetTip(-1, getLocaleString("tipQuantBoostBarracks"))
		$lblBoostBarracks = GUICtrlCreateLabel(getLocaleString("lblBoostLeft"), $x + 20, $y + 27, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipBoostBarracks"))
		$cmbBoostBarracks = GUICtrlCreateCombo("", $x + 80, $y+ 23 , 30, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "0|1|2|3|4|5|6", "0")
			GUICtrlSetTip(-1, getLocaleString("tipBoostBarracks"))
	$y += 50
		GUICtrlCreateIcon ($pIconLib, $eIcnSpellFactoryBoost, $x - 10, $y - 2, 24, 24)
		$lblBoostSpellFactory = GUICtrlCreateLabel(getLocaleString("lblBoostLeft"), $x + 20, $y + 4, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipBoostSpellFactory"))
		$cmbBoostSpellFactory = GUICtrlCreateCombo("", $x + 80, $y, 30, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "0|1|2|3|4|5|6", "0")
			GUICtrlSetTip(-1, getLocaleString("tipBoostSpellFactory"))
 	$y += 25
		GUICtrlCreateIcon ($pIconLib, $eIcnDarkSpellBoost, $x - 10, $y - 2, 24, 24)
		$lblBoostDarkSpellFactory = GUICtrlCreateLabel(getLocaleString("lblBoostLeft"), $x + 20, $y + 4, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipBoostDarkSpellFactory"))
		$cmbBoostDarkSpellFactory = GUICtrlCreateCombo("", $x + 80, $y, 30, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "0|1|2|3|4|5|6", "0")
			GUICtrlSetTip(-1, getLocaleString("tipBoostDarkSpellFactory"))
 	$y += 30
		GUICtrlCreateIcon ($pIconLib, $eIcnKingBoost, $x - 10, $y - 2, 24, 24)
		$lblBoostBarbarianKing = GUICtrlCreateLabel(getLocaleString("lblBoostLeft"), $x + 20, $y + 4, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipBoostBK"))
		$cmbBoostBarbarianKing = GUICtrlCreateCombo("", $x + 80, $y, 30, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "0|1|2|3|4|5|6", "0")
			GUICtrlSetTip(-1, getLocaleString("tipBoostBK"))
 	$y += 25
		GUICtrlCreateIcon ($pIconLib, $eIcnQueenBoost, $x - 10, $y - 2, 24, 24)
		$lblBoostArcherQueen = GUICtrlCreateLabel(getLocaleString("lblBoostLeft"), $x + 20, $y + 4, -1, -1)
 		GUICtrlSetTip(-1, getLocaleString("tipBoostAQ"))
		$cmbBoostArcherQueen = GUICtrlCreateCombo("", $x + 80, $y, 30, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "0|1|2|3|4|5|6", "0")
			GUICtrlSetTip(-1, getLocaleString("tipBoostAQ"))
 	GUICtrlCreateGroup("", -99, -99, 1, 1)


	Local $x = 30, $y = 210
	$grpTroops = GUICtrlCreateGroup(getLocaleString("grpTroops"), $x - 20, $y - 20, 145, 115)
		$y += 2
		GUICtrlCreateIcon ($pIconLib, $eIcnBarbarian, $x - 10, $y - 5, 24, 24)
		$lblBarbarians = GUICtrlCreateLabel(getLocaleString("lblNumBarbarians"), $x + 20, $y, -1, -1)
		$txtNumBarb = GUICtrlCreateInput("30", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipNumBarbarians"))
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetOnEvent(-1, "lblTotalCount")
		$lblPercentBarbarians = GUICtrlCreateLabel("%", $x + 112, $y, -1, -1)
		$y += 25
		GUICtrlCreateIcon ($pIconLib, $eIcnArcher, $x - 10, $y - 5, 24, 24)
		$lblArchers = GUICtrlCreateLabel(getLocaleString("lblNumArchers"), $x + 20, $y, -1, -1)
		$txtNumArch = GUICtrlCreateInput("60", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipNumArchers"))
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetOnEvent(-1, "lblTotalCount")
		$lblPercentArchers = GUICtrlCreateLabel("%", $x + 112, $y, -1, -1)
		$y += 25
		GUICtrlCreateIcon ($pIconLib, $eIcnGoblin, $x - 10, $y - 5, 24, 24)
		$lblGoblins = GUICtrlCreateLabel(getLocaleString("lblNumGoblins"), $x + 20, $y, -1, -1)
		$txtNumGobl = GUICtrlCreateInput("10", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipNumGoblins"))
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetOnEvent(-1, "lblTotalCount")
		$lblPercentGoblins = GUICtrlCreateLabel("%", $x + 112, $y, -1, -1)
		$y += 22
		$lblTotal = GUICtrlCreateLabel(getLocaleString("lblTotal"), $x + 35, $y, -1, -1, $SS_RIGHT)
		$lblTotalCount = GUICtrlCreateLabel("100", $x + 80, $y, 30, 15, $SS_CENTER)
			GUICtrlSetTip(-1, getLocaleString("tipTotal"))
			GUICtrlSetBkColor (-1, $COLOR_MONEYGREEN) ;lime, moneygreen
		$lblPercentTotal = GUICtrlCreateLabel("%", $x + 112, $y, -1, -1)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 30, $y = 330
	$grpOtherTroops = GUICtrlCreateGroup(getLocaleString("grpOtherTroops"), $x - 20, $y - 20, 145, 195)
		GUICtrlCreateIcon ($pIconLib, $eIcnGiant, $x - 10, $y - 5, 24, 24)
		$lblGiants = GUICtrlCreateLabel(getLocaleString("lblNumGiants"), $x + 20, $y, -1, -1)
		$txtNumGiant = GUICtrlCreateInput("4", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumGiants"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesGiants = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnWallBreaker, $x - 10, $y - 5, 24, 24)
		$lblWallBreakers = GUICtrlCreateLabel(getLocaleString("lblNumWallBreakers"), $x + 20, $y, -1, -1)
		$txtNumWall = GUICtrlCreateInput("4", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumWallBreakers"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesWallBreakers = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnBalloon, $x - 10, $y - 5, 24, 24)
		$lblBalloons = GUICtrlCreateLabel(getLocaleString("lblNumBalloons"), $x + 20, $y, -1, -1)
		$txtNumBall = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumBalloons"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesBalloons = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnWizard, $x - 10, $y - 5, 24, 24)
		$lblWizards = GUICtrlCreateLabel(getLocaleString("lblNumWizards"), $x + 20, $y, -1, -1)
		$txtNumWiza = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumWizards"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesWallWizards = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnHealer, $x - 10, $y - 5, 24, 24)
		$lblHealers = GUICtrlCreateLabel(getLocaleString("lblNumHealers"), $x + 20, $y, -1, -1)
		$txtNumHeal = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumHealers"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesHealers = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnDragon, $x - 10, $y - 5, 24, 24)
		$lblDragons = GUICtrlCreateLabel(getLocaleString("lblNumDragons"), $x + 20, $y, -1, -1)
		$txtNumDrag = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumDragons"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesDragons = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnPekka, $x - 10, $y - 5, 24, 24)
		$lblPekka = GUICtrlCreateLabel(getLocaleString("lblNumPekka"), $x + 20, $y, -1, -1)
		$txtNumPekk = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumPekka"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesPekka = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 150
	$y = 330
	$grpDarkTroops = GUICtrlCreateGroup(getLocaleString("grpDarkTroops"), $x - 20, $y - 20, 150, 195)
		GUICtrlCreateIcon ($pIconLib, $eIcnMinion, $x - 10, $y - 5, 24, 24)
		$lblMinion = GUICtrlCreateLabel(getLocaleString("lblNumMinion"), $x + 18, $y, -1, -1)
		$txtNumMini = GUICtrlCreateInput("0", $x + 85, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumMinions"))
			GUICtrlSetLimit(-1, 3)
		$lblTimesMinions = GUICtrlCreateLabel("x", $x + 117, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnHogRider, $x - 10, $y - 5, 24, 24)
		$lblHogRiders = GUICtrlCreateLabel(getLocaleString("lblNumHogRiders"), $x + 18, $y, -1, -1)
		$txtNumHogs = GUICtrlCreateInput("0", $x + 85, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumHogRiders"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesHogRiders = GUICtrlCreateLabel("x", $x + 117, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnValkyrie, $x - 10, $y - 5, 24, 24)
		$lblValkyries = GUICtrlCreateLabel(getLocaleString("lblNumValkyries"), $x + 18, $y, -1, -1)
		$txtNumValk = GUICtrlCreateInput("0", $x + 85, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumValkyries"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesValkyries = GUICtrlCreateLabel("x", $x + 117, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnGolem, $x - 10, $y - 5, 24, 24)
		$lblGolems = GUICtrlCreateLabel(getLocaleString("lblNumGolems"), $x + 18, $y, -1, -1)
		$txtNumGole = GUICtrlCreateInput("0", $x + 85, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumGolems"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesGolems = GUICtrlCreateLabel("x", $x + 117, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnWitch, $x - 10, $y - 5, 24, 24)
		$lblWitches = GUICtrlCreateLabel(getLocaleString("lblNumWitches"), $x + 18, $y, -1, -1)
		$txtNumWitc = GUICtrlCreateInput("0", $x + 85, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumWitches"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesWitches = GUICtrlCreateLabel("x", $x + 117, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnLavaHound, $x - 10, $y - 5, 24, 24)
		$lblLavaHounds = GUICtrlCreateLabel(getLocaleString("lblNumLavaHounds"), $x + 18, $y, -1, -1)
		$txtNumLava = GUICtrlCreateInput("0", $x + 85, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipNumLavaHounds"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesLavaHounds = GUICtrlCreateLabel("x", $x + 117, $y, -1, -1)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 155
	$y = 330
	$grpSpells = GUICtrlCreateGroup(getLocaleString("grpSpells"), $x - 20, $y - 20, 145, 195)
		GUICtrlCreateIcon ($pIconLib, $eIcnLightSpell, $x - 10, $y - 5, 24, 24)
		$lblLightningSpell = GUICtrlCreateLabel(getLocaleString("lblLightningSpell"), $x + 20, $y, -1, -1)
		$txtNumLightningSpell = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipLightningSpell"))
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState($txtNumLightningSpell, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "lblTotalCountSpell")
		$lblTimesLightS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnHealSpell, $x - 10, $y - 5, 24, 24)
		$lblHealSpell = GUICtrlCreateLabel(getLocaleString("lblHealSpell"), $x + 20, $y, -1, -1)
		$txtNumHealSpell = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipHealSpell"))
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState($txtNumHealSpell, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "lblTotalCountSpell")
		$lblTimesHealS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnRageSpell, $x - 10, $y - 5, 24, 24)
		$lblRageSpell = GUICtrlCreateLabel(getLocaleString("lblRageSpell"), $x + 20, $y, -1, -1)
		$txtNumRageSpell = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipRageSpell"))
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState($txtNumRageSpell, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "lblTotalCountSpell")
		$lblTimesRageS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
#cs		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnJumpSpell, $x - 10, $y - 5, 24, 24)
		$lblJumpSpell = GUICtrlCreateLabel(getLocaleString("lblJumpSpell"), $x + 20, $y, -1, -1)
		$txtNumJumpS = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipJumpSpell"))
			GUICtrlSetLimit(-1, 2)
		$lblTimesJumpS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnFreezeSpell, $x - 10, $y - 5, 24, 24)
		$lblFreezeSpell = GUICtrlCreateLabel(getLocaleString("lblFreezeSpell"), $x + 20, $y, -1, -1)
		$txtFreezeS = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipFreezeSpell"))
			GUICtrlSetLimit(-1, 2)
#ce		$lblFreezeS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=50
		GUICtrlCreateIcon ($pIconLib, $eIcnPoisonSpell, $x - 10, $y - 5, 24, 24)
		$lblPoisonSpell = GUICtrlCreateLabel(getLocaleString("lblPoisonSpell"), $x + 20, $y, -1, -1)
		$txtNumPoisonSpell = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipPoisonSpell"))
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState($txtNumPoisonSpell, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "lblTotalCountSpell")
		$lblTimesPoisonS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
#cs		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnEarthquakeSpell, $x - 10, $y - 5, 24, 24)
		$lblEarthquakeSpell = GUICtrlCreateLabel(getLocaleString("lblEarthquakeSpell"), $x + 20, $y, -1, -1)
		$txtNumEarthquakeS = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipEarthquakeSpell"))
			GUICtrlSetLimit(-1, 2)
#ce		$lblTimesEarthquakeS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)
		$y +=25
		GUICtrlCreateIcon ($pIconLib, $eIcnHasteSpell, $x - 10, $y - 5, 24, 24)
		$lblHasteSpell = GUICtrlCreateLabel(getLocaleString("lblHasteSpell"), $x + 20, $y, -1, -1)
		$txtNumHasteSpell = GUICtrlCreateInput("0", $x + 80, $y - 3, 30, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, getLocaleString("tipHasteSpell"))
			GUICtrlSetLimit(-1, 2)
			GUICtrlSetState($txtNumHasteSpell, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "lblTotalCountSpell")
		$lblTimesHasteS = GUICtrlCreateLabel("x", $x + 112, $y, -1, -1)

		$y +=25
		$lblTotal = GUICtrlCreateLabel(getLocaleString("lblTotalSpeels"), $x - 20 , $y + 4, -1, -1, $SS_RIGHT)
		$txtTotalCountSpell = GUICtrlCreateCombo("", $x + 80, $y , 35, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipTotalSpeels"))
			GUICtrlSetBkColor (-1, $COLOR_MONEYGREEN) ;lime, moneygreen
			GUICtrlSetData(-1, "0|2|4|6|7|8|9|10|11", "0")
			GUICtrlSetOnEvent(-1, "lblTotalCountSpell")
	GUICtrlCreateGroup("", -99, -99, 1, 1)


GUICtrlCreateTabItem("")
