; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: GKevinOD (2014)
; Modified ......: DkEd, Hervidero (2015), kaganus (2015)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

;~ -------------------------------------------------------------
;~ This dummy is used in btnStart and btnStop to disable/enable all labels, text, buttons etc. on all tabs.
;~ -------------------------------------------------------------
Global $LastControlToHide = GUICtrlCreateDummy()
Global $iPrevState[$LastControlToHide + 1]
;~ -------------------------------------------------------------

;~ -------------------------------------------------------------
;~ Stats Tab
;~ -------------------------------------------------------------
$tabStats = GUICtrlCreateTabItem(getLocaleString("tabStats"))
Local $x = 30, $y = 145
	$grpResourceOnStart = GUICtrlCreateGroup(getLocaleString("grpResourceOnStart"), $x - 20, $y - 15, 90, 90)
		$lblResultStatsTemp = GUICtrlCreateLabel(getLocaleString("lblResultStatsTemp",1), $x - 15, $y + 5, 100, 65, BITOR($SS_LEFT, $BS_MULTILINE))
		GUICtrlCreateIcon ($pIconLib, $eIcnGold, $x + 50, $y, 16, 16)
		$lblResultGoldStart = GUICtrlCreateLabel("", $x - 10, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipResultGoldStart"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnElixir, $x + 50, $y, 16, 16)
		$lblResultElixirStart = GUICtrlCreateLabel("", $x - 10, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipResultElixirStart"))
		$y +=17
		$picResultDEStart = GUICtrlCreateIcon ($pIconLib, $eIcnDark, $x + 50, $y, 16, 16)
		$lblResultDEStart = GUICtrlCreateLabel("", $x - 10, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipResultDEStart"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnTrophy, $x + 50, $y, 16, 16)
		$lblResultTrophyStart = GUICtrlCreateLabel("", $x - 10, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipResultTrophyStart"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x = 125
	$y = 145
	$grpLastAttack = GUICtrlCreateGroup(getLocaleString("grpLastAttack"), $x - 20, $y - 15, 85, 90)
		$lblLastAttackTemp = GUICtrlCreateLabel(getLocaleString("lblLastAttackTemp",1), $x - 15, $y + 5, 100, 65, BITOR($SS_LEFT, $BS_MULTILINE))
		GUICtrlCreateIcon ($pIconLib, $eIcnGold, $x + 45, $y, 16, 16)
		$lblGoldLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipGoldLastAttack"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnElixir, $x + 45, $y, 16, 16)
		$lblElixirLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipElixirLastAttack"))
		$y +=17
		$picDarkLastAttack = GUICtrlCreateIcon ($pIconLib, $eIcnDark, $x + 45, $y, 16, 16)
		$lblDarkLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDELastAttack"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnTrophy, $x + 45, $y, 16, 16)
		$lblTrophyLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTrophyLastAttack"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x = 215
	$y = 145
	$grpLastAttackBonus = GUICtrlCreateGroup(getLocaleString("grpLastAttackBonus"), $x - 20, $y - 15, 85, 90)
		$lblLastAttackBonusTemp = GUICtrlCreateLabel(getLocaleString("lblLastAttackTemp",1), $x - 15, $y + 5, 100, 65, BITOR($SS_LEFT, $BS_MULTILINE))
		GUICtrlCreateIcon ($pIconLib, $eIcnGold, $x + 45, $y, 16, 16)
		$lblGoldBonusLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipGoldBonusLastAttack"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnElixir, $x + 45, $y, 16, 16)
		$lblElixirBonusLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipElixirBonusLastAttack"))
		$y +=17
		$picDarkBonusLastAttack = GUICtrlCreateIcon ($pIconLib, $eIcnDark, $x + 45, $y, 16, 16)
		$lblDarkBonusLastAttack = GUICtrlCreateLabel("", $x - 15, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDEBonusLastAttack"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x = 305
	$y = 145
    $grpTotalLoot = GUICtrlCreateGroup(getLocaleString("grpTotalLoot"), $x - 20, $y - 15, 90, 90)
		$lblTotalLootTemp = GUICtrlCreateLabel(getLocaleString("lblLastAttackTemp",1), $x - 15, $y + 5, 100, 65, BITOR($SS_LEFT, $BS_MULTILINE))
		GUICtrlCreateIcon ($pIconLib, $eIcnGold, $x + 50, $y, 16, 16)
		$lblGoldLoot =  GUICtrlCreateLabel("", $x - 15, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipGoldLoot",1))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnElixir, $x + 50, $y, 16, 16)
		$lblElixirLoot =  GUICtrlCreateLabel("", $x - 15, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipElixirLoot",1))
		$y +=17
		$picDarkLoot = GUICtrlCreateIcon ($pIconLib, $eIcnDark, $x + 50, $y, 16, 16)
        $lblDarkLoot =  GUICtrlCreateLabel("", $x - 15, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDELoot",1))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnTrophy, $x + 50, $y, 16, 16)
		$lblTrophyLoot = GUICtrlCreateLabel("", $x - 15, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTrophyLoot"))
    GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x = 400
	$y = 145
	$grpHourlyStats = GUICtrlCreateGroup(getLocaleString("grpHourlyStats"), $x - 20, $y - 15, 80, 90)
		$lblHourlyStatsTemp = GUICtrlCreateLabel(getLocaleString("lblLastAttackTemp",1), $x - 15, $y + 5, 100, 65, BITOR($SS_LEFT, $BS_MULTILINE))
		GUICtrlCreateIcon ($pIconLib, $eIcnGold, $x + 40, $y, 16, 16)
		$lblHourlyStatsGold = GUICtrlCreateLabel("", $x - 20, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipHourlyStatsGold"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnElixir, $x + 40, $y, 16, 16)
		$lblHourlyStatsElixir = GUICtrlCreateLabel("", $x - 20, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipHourlyStatsElixir"))
		$y +=17
		$picHourlyStatsDark = GUICtrlCreateIcon ($pIconLib, $eIcnDark, $x + 40, $y, 16, 16)
		$lblHourlyStatsDark = GUICtrlCreateLabel("", $x - 20, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipHourlyStatsDE"))
		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnTrophy, $x + 40, $y, 16, 16)
		$lblHourlyStatsTrophy = GUICtrlCreateLabel("", $x - 20, $y + 2, 55, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipHourlyStatsTrophy"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x = 400
	$y = 220
	$btnResetStats = GUICtrlCreateButton(getLocaleString("btnResetStats"), $x - 29, $y + 3, 90, 20)
		GUICtrlSetOnEvent(-1, "btnResetStats")
		GUICtrlSetState(-1, $GUI_DISABLE)

	$x = 30
	$y = 260
	$grpStatsMisc = GUICtrlCreateGroup(getLocaleString("grpStatsMisc"), $x - 20, $y - 20, 450, 140)
		$y -=2
		$x = 25
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgTarget, $x - 10, $y, 16, 16)
        $lblvillagesattacked = GUICtrlCreateLabel(getLocaleString("lblvillagesattacked"), $x + 8, $y + 2, -1, 17)
        $lblresultvillagesattacked = GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("lblresultvillagesattacked"))

		$y += 17
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgX, $x - 10, $y, 16, 16)
        $lblvillagesskipped = GUICtrlCreateLabel(getLocaleString("lblvillagesskipped"), $x + 8, $y + 2, -1, 17)
        $lblresultvillagesskipped = GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipresultvillagesskipped"))

		$y += 17
		GUICtrlCreateIcon ($pIconLib, $eIcnWallGold, $x - 10, $y, 16, 16)
        $lblwallbygold = GUICtrlCreateLabel(getLocaleString("txtUpgByGold"), $x + 8, $y + 2, -1, 17)
		$lblWallgoldmake =  GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipWallgoldmake"))

		$y += 17
		GUICtrlCreateIcon ($pIconLib, $eIcnWallElixir, $x - 10, $y, 16, 16)
		$lblwallbyelixir = GUICtrlCreateLabel(getLocaleString("txtUpgByElixir"), $x + 8, $y + 2, -1, 17)
		$lblWallelixirmake =  GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipWallelixirmake"))

		$y += 17
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgGold, $x - 10, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("txtUpgByGold"), $x + 8, $y + 2, -1, 17)
		$lblNbrOfBuildingUpgGold = GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipBuildgoldmake"))

		$y += 17
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgElixir, $x - 10, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("txtUpgByElixir"), $x + 8, $y + 2, -1, 17)
		$lblNbrOfBuildingUpgElixir = GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipWallelixirmake"))

		$y += 17
		GUICtrlCreateIcon($pIconLib, $eIcnHeroes, $x - 10, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblHeroUpgrade"), $x + 8, $y + 2, -1, 17)
		$lblNbrOfHeroUpg = GUICtrlCreateLabel("0", $x + 40, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipHeroUpgrade"))

		$x = 146
		$y = 258
		GUICtrlCreateIcon ($pIconLib, $eIcnTrophy, $x - 5, $y, 16, 16)
        $lbltrophiesdropped = GUICtrlCreateLabel(getLocaleString("lbltrophiesdropped"), $x + 13, $y + 2, -1, 17)
        $lblresulttrophiesdropped = GUICtrlCreateLabel("0", $x + 95, $y + 2, 50, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipresulttrophiesdropped"))

        $y += 17
        GUICtrlCreateIcon ($pIconLib, $eIcnHourGlass, $x - 5, $y, 16, 16)
        $lblruntime = GUICtrlCreateLabel(getLocaleString("lblruntime"), $x + 13, $y + 2, -1, 17)
        $lblresultruntime = GUICtrlCreateLabel("00:00:00", $x + 85, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipresultruntime"))

        $y += 17
		GUICtrlCreateIcon ($pIconLib, $eIcnWallGold, $x - 5, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblUpgCostGold"), $x + 13, $y + 2, -1, 17)
		$lblWallUpgCostGold = GUICtrlCreateLabel("0", $x + 85, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipUpgCostGoldWall"))

		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnWallElixir, $x - 5, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblUpgCostElixir"), $x + 13, $y + 2, -1, 17)
		$lblWallUpgCostElixir = GUICtrlCreateLabel("0", $x + 85, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipUpgCostElixirWall"))

		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgGold, $x - 5, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblUpgCostGold"), $x + 13, $y + 2, -1, 17)
		$lblBuildingUpgCostGold = GUICtrlCreateLabel("0", $x + 85, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipUpgCostGoldBuild"))

		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnBldgElixir, $x - 5, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblUpgCostElixir"), $x + 13, $y + 2, -1, 17)
		$lblBuildingUpgCostElixir = GUICtrlCreateLabel("0", $x + 85, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipUpgCostElixirBuild"))

		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnHeroes, $x - 5, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblUpgCostDE"), $x + 13, $y + 2, -1, 17)
		$lblHeroUpgCost = GUICtrlCreateLabel("0", $x + 85, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipUpgCostDE"))

		$x = 280
		$y = 258

		GUICtrlCreateIcon ($pIconLib, $eIcnRecycle, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblNbrOfOos"), $x + 45, $y + 2, -1, 17)
		$lblNbrOfOoS = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipNbrOfOos"))

		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnMagnifier, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblSearchCost"), $x + 45, $y + 2, -1, 17)
		$lblSearchCost = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipSearchCost"))

		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnArcher, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblTrainCostE"), $x + 45, $y + 2, -1, 17)
		$lblTrainCostElixir = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTrainCostE"))

		$y +=17
		GUICtrlCreateIcon ($pIconLib, $eIcnMinion, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblTrainCostDE"), $x + 45, $y + 2, -1, 17)
		$lblTrainCostDElixir = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTrainCostDE"))

		$y += 17
		GUICtrlCreateIcon($pIconLib, $eIcnMine, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblCollectedGold"), $x + 45, $y + 2, -1, 17)
		$lblGoldFromMines = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipCollectedGold"))

		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnCollector, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblCollectedElixir"), $x + 45, $y + 2, -1, 17)
		$lblElixirFromCollectors = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipCollectedElixir"))

		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnDrill, $x + 27, $y, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblCollectedDElixir"), $x + 45, $y + 2, -1, 17)
		$lblDElixirFromDrills = GUICtrlCreateLabel("0", $x + 115, $y + 2, 60, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipCollectedDElixir"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x = 30
	$y = 405
	$grpStatsDB = GUICtrlCreateGroup(getLocaleString("grpStatsDB"), $x - 20, $y - 20, 111, 120)
        GUICtrlCreateLabel(getLocaleString("lblvillagesattacked"), $x - 15, $y - 2, -1, 17)
        $lblAttacked[$DB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDBAttacked"))

		$y +=17
        GUICtrlCreateIcon($pIconLib, $eIcnGold, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalGoldGain[$DB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDBGainGold"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalElixirGain[$DB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDBGainElixir"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnDark, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalDElixirGain[$DB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDBGainDE"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnTrophy, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalTrophyGain[$DB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipDBGainTrophy"))
		$y +=17
		$lblNbrOfDetectedMines[$DB] = GUICtrlCreateLabel("0", $x - 18, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnMine, $x + 1, $y - 4, 16, 16)
		$lblNbrOfDetectedCollectors[$DB] = GUICtrlCreateLabel("0", $x + 18, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnCollector, $x + 37, $y - 4, 16, 16)
		$lblNbrOfDetectedDrills[$DB] = GUICtrlCreateLabel("0", $x + 54, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnDrill, $x + 73, $y - 4, 16, 16)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 108 + 5
	$y = 405
	$grpStatsLB = GUICtrlCreateGroup(getLocaleString("grpStatsLB"), $x - 20, $y - 20, 111, 120)
        GUICtrlCreateLabel(getLocaleString("lblvillagesattacked"), $x - 15, $y - 2, -1, 17)
        $lblAttacked[$LB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipLBAttacked"))

		$y +=17
        GUICtrlCreateIcon($pIconLib, $eIcnGold, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalGoldGain[$LB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipLBGainGold"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalElixirGain[$LB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipLBGainElixir"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnDark, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalDElixirGain[$LB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipLBGainDE"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnTrophy, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalTrophyGain[$LB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipLBGainTrophy"))
		$y +=17
		$lblNbrOfDetectedMines[$LB] = GUICtrlCreateLabel("0", $x - 18, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnMine, $x + 1, $y - 4, 16, 16)
		$lblNbrOfDetectedCollectors[$LB] = GUICtrlCreateLabel("0", $x + 18, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnCollector, $x + 37, $y - 4, 16, 16)
		$lblNbrOfDetectedDrills[$LB] = GUICtrlCreateLabel("0", $x + 54, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnDrill, $x + 73, $y - 4, 16, 16)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 108 + 5
	$y = 405
	$grpStatsTB = GUICtrlCreateGroup(getLocaleString("grpStatsTB"), $x - 20, $y - 20, 111, 120)
        GUICtrlCreateLabel(getLocaleString("lblvillagesattacked"), $x - 15, $y - 2, -1, 17)
        $lblAttacked[$TB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTBAttacked"))

		$y +=17
        GUICtrlCreateIcon($pIconLib, $eIcnGold, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalGoldGain[$TB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTBGainGold"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalElixirGain[$TB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTBGainElixir"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnDark, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalDElixirGain[$TB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTBGainDElixir"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnTrophy, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalTrophyGain[$TB] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTBGainTrophy"))
		$y +=17
		$lblNbrOfDetectedMines[$TB] = GUICtrlCreateLabel("0", $x - 18, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnMine, $x + 1, $y - 4, 16, 16)
		$lblNbrOfDetectedCollectors[$TB] = GUICtrlCreateLabel("0", $x + 18, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnCollector, $x + 37, $y - 4, 16, 16)
		$lblNbrOfDetectedDrills[$TB] = GUICtrlCreateLabel("0", $x + 54, $y - 2, 18, 17, $SS_RIGHT)
		GUICtrlCreateIcon($pIconLib, $eIcnDrill, $x + 73, $y - 4, 16, 16)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 108 + 5
	$y = 405
	$grpStatsTS = GUICtrlCreateGroup(getLocaleString("grpStatsTS"), $x - 20, $y - 20, 111, 120)
        GUICtrlCreateLabel(getLocaleString("lblvillagesattacked"), $x - 15, $y - 2, -1, 17)
        $lblAttacked[$TS] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTSAttacked"))

		$y +=17
        GUICtrlCreateIcon($pIconLib, $eIcnGold, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalGoldGain[$TS] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTSGainGold"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalElixirGain[$TS] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTSGainElixir"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnDark, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalDElixirGain[$TS] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTSGainDElixir"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnTrophy, $x - 15, $y - 4, 16, 16)
		GUICtrlCreateLabel(getLocaleString("lblGain"), $x + 3, $y - 2, -1, 17)
        $lblTotalTrophyGain[$TS] = GUICtrlCreateLabel("0", $x + 2, $y - 2, 80, 17, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipTSGainTrophy"))
		$y +=17
		GUICtrlCreateIcon($pIconLib, $eIcnGreenLight, $x - 15, $y - 4, 16, 16)
		;GUICtrlCreateLabel(getLocaleString("lblNbrOfTSSuccess"), $x - 15, $y - 2, -1, 17)
		$lblNbrOfTSSuccess = GUICtrlCreateLabel("0", $x + 8, $y - 2, 25, 17, $SS_LEFT)
			GUICtrlSetTip(-1, getLocaleString("tipNbrOfTSSuccess"))
		GUICtrlCreateIcon($pIconLib, $eIcnRedLight, $x + 35, $y - 4, 16, 16)
		;GUICtrlCreateLabel(getLocaleString("lblNbrOfTSFailed"), $x + 50, $y - 2, -1, 17)
		$lblNbrOfTSFailed = GUICtrlCreateLabel("0", $x + 58, $y - 2, 25, 17, $SS_LEFT)
			GUICtrlSetTip(-1, getLocaleString("tipNbrOfTSFailed"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)
