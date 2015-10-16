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
; Misc Tab
;~ -------------------------------------------------------------
$tabMisc = GUICtrlCreateTabItem(getLocaleString("tabMisc"))
Local $x = 30, $y = 150
	$grpControls = GUICtrlCreateGroup(getLocaleString("grpHaltAttack"), $x - 20, $y - 20, 450, 50)
		$chkBotStop = GUICtrlCreateCheckbox("", $x - 5, $y, 16, 16)
			GUICtrlSetTip(-1, getLocaleString("tipChkBotStop"))
		$cmbBotCommand = GUICtrlCreateCombo("", $x + 20, $y - 3, 100, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipChkBotStop"))
			GUICtrlSetData(-1, getLocaleString("cmbBotCommand"), getLocaleString("cmbBotCommandDefault"))
		$lblBotCond = GUICtrlCreateLabel(getLocaleString("lbBotCond"), $x + 125, $y, 45, 17)
		$cmbBotCond = GUICtrlCreateCombo("", $x + 175, $y - 3, 160, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipChkBotStop"))
			GUICtrlSetData(-1, getLocaleString("cmbBotCond"), getLocaleString("cmbBotCondDefault"))
			GUICtrlSetOnEvent(-1, "cmbBotCond")
		$cmbHoursStop = GUICtrlCreateCombo("", $x + 335, $y - 3, 80, 35, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, getLocaleString("tipChkBotStop"))
			GUICtrlSetData(-1, getLocaleString("cmbHoursStop"), getLocaleString("cmbHoursStopDefault"))
			GUICtrlSetState (-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

Local $x = 20, $y = 205
	$grpControls = GUICtrlCreateGroup(getLocaleString("grpProfiles"), $x - 10, $y - 20, 235, 55)
		$lblProfile = GUICtrlCreateLabel(getLocaleString("lblProfile"), $x, $y, -1, -1)
		$cmbProfile = GUICtrlCreateCombo("01", $x + 75, $y - 5, 40, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
		GUICtrlSetTip(-1, getLocaleString("tipCmbProfile",1) & @CRLF & $sProfilePath)
		GUICtrlSetData(-1, "02|03|04|05|06", "01")
		GUICtrlSetOnEvent(-1, "cmbProfile")
		$txtVillageName = GUICtrlCreateInput(getLocaleString("txtVillageName"), $x + 120, $y - 4, 100, 18, BitOR($SS_CENTER, $ES_AUTOHSCROLL))
		GUICtrlSetLimit (-1, 100, 0)
		GUICtrlSetFont(-1, 9, 400, 1)
		GUICtrlSetTip(-1, getLocaleString("tipVillageName"))
		GUICtrlSetOnEvent(-1, "txtVillageName")
	GUICtrlCreateGroup("", -99, -99, 1, 1)

Local $x = 260, $y = 205
	$grpLanguage = GUICtrlCreateGroup(getLocaleString("grpLanguage"), $x - 10, $y - 20, 235, 55)
		$cmbLanguage = GUICtrlCreateCombo("", $x , $y + 2, 194, 20, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
		Populatelocalization()
		_GUICtrlComboBox_SetCurSel($cmbLanguage, _GUICtrlComboBox_FindStringExact($cmbLanguage, $StartupLanguage))
		GUICtrlSetTip(-1, getLocaleString("tipCmbLanguage"))
		GUICtrlSetOnEvent(-1, "cmbLanguage")
	GUICtrlCreateGroup("", -99, -99, 1, 1)


	Local $x = 30, $y = 275
	$grpMisc = GUICtrlCreateGroup(getLocaleString("grpMisc"), $x -20, $y - 20 , 225, 100)
		GUICtrlCreateIcon($pIconLib, $eIcnTrap, $x - 5, $y, 24, 24)
		GUICtrlCreateIcon($pIconLib, $eIcnXbow, $x + 20, $y, 24, 24)
		GUICtrlCreateIcon($pIconLib, $eIcnInferno, $x + 45, $y, 24, 24)
		$chkTrap = GUICtrlCreateCheckbox(getLocaleString("chkTrap",1), $x + 75, $y + 2, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkTrap"))
			GUICtrlSetOnEvent(-1, "chkTrap")
			_ArrayConcatenate($G, $D)
	;GUICtrlCreateGroup("", -99, -99, 1, 1)
	$y += 25
	;Local $x = 30, $y = 335
	;$grpCollect = GUICtrlCreateGroup("Collecting Resources", $x - 20, $y - 20 , 225, 60)
		GUICtrlCreateIcon($pIconLib, $eIcnMine, $x - 5, $y, 24, 24)
		GUICtrlCreateIcon($pIconLib, $eIcnCollector, $x + 20, $y, 24, 24)
		GUICtrlCreateIcon($pIconLib, $eIcnDrill, $x + 45, $y, 24, 24)
		$chkCollect = GUICtrlCreateCheckbox(getLocaleString("chkCollect"), $x + 75, $y + 2, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkCollect",1))
			GUICtrlSetState(-1, $GUI_CHECKED)
	;GUICtrlCreateGroup("", -99, -99, 1, 1)
	$y += 25
	;Local $x = 30, $y = 400
	;$grpTombstones = GUICtrlCreateGroup("Clear Tombstones", $x - 20, $y - 20 , 225, 55)
		GUICtrlCreateIcon($pIconLib, $eIcnTombstone, $x + 20, $y, 24, 24)
		$chkTombstones = GUICtrlCreateCheckbox(getLocaleString("chkTombstones"), $x + 75, $y + 2, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipChkTombstones"))
			GUICtrlSetState(-1, $GUI_UNCHECKED)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 30, $y = 380
	$grpRestartMins = GUICtrlCreateGroup(getLocaleString("grpRestartMins"), $x - 20, $y - 20 , 225, 75)
		$lblRestartMins = GUICtrlCreateLabel(getLocaleString("lblRestartMins"), $x, $y, 110, 50, $BS_MULTILINE)
		$y -= 7
		$lblRestartGold = GUICtrlCreateLabel(">", $x + 112, $y, -1, -1)
		GUICtrlCreateIcon ($pIconLib, $eIcnGold, $x + 175, $y, 16, 16)
		$txtRestartGold = GUICtrlCreateInput("10000", $x + 120, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipRestartGold"))
			GUICtrlSetLimit(-1, 7)
		$y += 20
		$lblRestartElixir = GUICtrlCreateLabel(">", $x + 112, $y, -1, -1)
		GUICtrlCreateIcon ($pIconLib, $eIcnElixir, $x + 175, $y, 16, 16)
		$txtRestartElixir = GUICtrlCreateInput("25000", $x + 120, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipRestartElixir"))
			GUICtrlSetLimit(-1, 7)
		$y += 20
		$lblRestartDark = GUICtrlCreateLabel(">", $x + 112, $y, -1, -1)
		GUICtrlCreateIcon ($pIconLib, $eIcnDark, $x + 175, $y, 16, 16)
		$txtRestartDark = GUICtrlCreateInput("500", $x + 120, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipRestartDark"))
			GUICtrlSetLimit(-1, 6)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 260, $y = 265
	$grpTrophy = GUICtrlCreateGroup(getLocaleString("grpTrophy"), $x - 20, $y - 20, 220, 65)
		GUICtrlCreateIcon($pIconLib, $eIcnTrophy, $x - 10, $y + 5, 24, 24)
		$lblTrophyRange = GUICtrlCreateLabel(getLocaleString("lblTrophyRange"), $x + 20, $y, -1, -1)
		$txtdropTrophy = GUICtrlCreateInput("5000", $x + 110, $y - 5, 35, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetLimit(-1, 4)
			GUICtrlSetTip(-1, getLocaleString("tipTrophyRangeMin"))
		$lblDash = GUICtrlCreateLabel(" - ", $x + 148, $y, -1, -1)
		$txtMaxTrophy = GUICtrlCreateInput("5000", $x + 160, $y - 5, 35, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetLimit(-1, 4)
			GUICtrlSetTip(-1, getLocaleString("tipTrophyRangeMax"))
		$chkTrophyHeroes = GUICtrlCreateCheckbox(getLocaleString("chkTrophyHeroes"), $x + 20, $y + 20, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipTrophyHeroes"))
		$chkTrophyAtkDead = GUICtrlCreateCheckbox(getLocaleString("chkTrophyAtkDead"), $x + 100, $y + 20, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipTrophyAtkDead"))
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 260, $y = 335
	$grpTimeWakeUp = GUICtrlCreateGroup(getLocaleString("grpTimeWakeUp"), $x - 20, $y - 20 , 220, 50)
		$lblTimeWakeUp = GUICtrlCreateLabel(getLocaleString("lblTimeWakeUp"), $x, $y + 2, -1, -1)
			GUICtrlSetTip(-1, getLocaleString("tipTimeWakeUp"))
		$txtTimeWakeUp = GUICtrlCreateInput("120", $x + 138, $y - 1, 35, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetTip(-1, getLocaleString("tipTimeWakeUp"))
			GUICtrlSetLimit(-1, 3)
		$lblTimeWakeUpSec = GUICtrlCreateLabel(getLocaleString("lblTimeWakeUpSec"), $x + 175, $y + 2, -1, -1)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 260, $y = 388
	$grpVSDelay = GUICtrlCreateGroup(getLocaleString("grpVSDelay"), $x - 20, $y - 20, 220, 72)
		$lblVSDelay0 = GUICtrlCreateLabel("Min", $x-25, $y-2, 30, 15, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipVSDelay"))
		$lblVSDelay = GUICtrlCreateLabel("0", $x+7, $y-2, 12, 15, $SS_RIGHT)
			GUICtrlSetTip(-1, getLocaleString("tipVSDelay"))
		$lbltxtVSDelay = GUICtrlCreateLabel(getLocaleString("lbltxtVSDelay"), $x + 23, $y-2, -1, -1)
		$sldVSDelay = GUICtrlCreateSlider($x + 62, $y - 4, 118, 25, BITOR($TBS_TOOLTIPS, $TBS_AUTOTICKS)) ;,
			GUICtrlSetTip(-1, getLocaleString("tipVSDelay"))
			GUICtrlSetBkColor(-1, $COLOR_WHITE)
			_GUICtrlSlider_SetTipSide(-1, $TBTS_BOTTOM)
			_GUICtrlSlider_SetTicFreq(-1, 1)
			GUICtrlSetLimit(-1, 10, 0) ; change max/min value
			GUICtrlSetData(-1, 0) ; default value
			GUICtrlSetOnEvent(-1, "sldVSDelay")
		$y += 25
		$lblMaxVSDelay0 = GUICtrlCreateLabel("Max", $x-23, $y-2, 30, 15, $SS_RIGHT)
			$txtTip = "Enable random village search delay value by setting" &@CRLF&"bottom Max slide value higher than the top minimum slide"
			GUICtrlSetTip(-1, $txtTip)
		$lblMaxVSDelay = GUICtrlCreateLabel("0", $x+7, $y-2, 12, 15, $SS_RIGHT)
			GUICtrlSetTip(-1, $txtTip)
		$lbltxtMaxVSDelay = GUICtrlCreateLabel(getLocaleString("lbltxtVSDelay"), $x + 23, $y-2, 45, -1)
		$sldMaxVSDelay = GUICtrlCreateSlider($x + 62, $y - 4, 137, 25, BITOR($TBS_TOOLTIPS, $TBS_AUTOTICKS)) ;,
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetBkColor(-1, $COLOR_WHITE)
			_GUICtrlSlider_SetTipSide(-1, $TBTS_BOTTOM)
			_GUICtrlSlider_SetTicFreq(-1, 1)
			GUICtrlSetLimit(-1, 12, 0) ; change max/min value
			GUICtrlSetData(-1, 0) ; default value
			GUICtrlSetOnEvent(-1, "sldMaxVSDelay")
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	Local $x = 30, $y = 462
	$grpLocateBuildings = GUICtrlCreateGroup(getLocaleString("grpLocateBuildings"), $x - 20, $y - 20, 450, 65)
		$btnLocateTownHall = GUICtrlCreateButton(getLocaleString("btnLocateTownHall"), $x - 10, $y, 40, 40, $BS_ICON)
			GUICtrlSetImage(-1, $pIconLib, $eIcnTH10, 1)
			GUICtrlSetTip(-1, getLocaleString("tipLocateTownHall"))
			;GUICtrlSetState(-1, $GUI_HIDE)
			GUICtrlSetOnEvent(-1, "btnLocateTownHall")
		$btnLocateClanCastle = GUICtrlCreateButton(getLocaleString("btnLocateClanCastle"), $x + 30, $y, 40, 40, $BS_ICON)
			GUICtrlSetOnEvent(-1, "btnLocateClanCastle")
			GUICtrlSetImage(-1, $pIconLib, $eIcnCC, 1)
			GUICtrlSetTip(-1, getLocaleString("tipLocateClanCastle"))
		$btnLocateArmyCamp = GUICtrlCreateButton(getLocaleString("btnLocateArmyCamp"), $x + 70, $y, 40, 40, $BS_ICON)
			GUICtrlSetOnEvent(-1, "btnLocateArmyCamp")
			GUICtrlSetImage(-1, $pIconLib, $eIcnCamp, 1)
			GUICtrlSetTip(-1, getLocaleString("tipLocateArmyCamp"))
		$btnLocateBarracks = GUICtrlCreateButton(getLocaleString("btnLocateBarracks"), $x + 110, $y, 40, 40, $BS_ICON)
			GUICtrlSetOnEvent(-1, "btnLocateBarracks")
			GUICtrlSetImage(-1, $pIconLib, $eIcnBarrack, 1)
			GUICtrlSetTip(-1, getLocaleString("tipLocateBarracks"))
	    $btnLocateSpellFactory = GUICtrlCreateButton(getLocaleString("btnLocateSpellFactory"), $x + 150, $y, 40, 40, $BS_ICON)
			GUICtrlSetOnEvent(-1, "btnLocateSpellfactory")
			GUICtrlSetImage(-1, $pIconLib, $eIcnSpellFactory, 1)
			GUICtrlSetTip(-1, getLocaleString("tipLocateSpellFactory"))
			_ArrayConcatenate($G, $T)
		 $btnLocateSpellFactory = GUICtrlCreateButton("D.S.F.", $x + 190, $y, 40, 40, $BS_ICON)
			GUICtrlSetOnEvent(-1, "btnLocateDarkSpellfactory")
			GUICtrlSetImage(-1, $pIconLib, $eIcnDarkSpellFactory, 1)
			$txtTip = "Relocate your Dark Spell Factory."
			GUICtrlSetTip(-1, $txtTip)
			_ArrayConcatenate($G, $T)
		$btnLocateLaboratory = GUICtrlCreateButton("King", $x + 230, $y, 40, 40, $BS_ICON)
			GUICtrlSetImage(-1, $pIconLib, $eIcnKingBoostLocate)
			$txtTip = "Relocate your Barbarian King Altar"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "btnLocateKingAltar")
		$btnLocateLaboratory = GUICtrlCreateButton("Queen", $x + 270, $y, 40, 40, $BS_ICON)
			GUICtrlSetImage(-1, $pIconLib, $eIcnQueenBoostLocate)
			$txtTip = "Relocate your Archer Queen Altar"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "btnLocateQueenAltar")
		$btnLocateLaboratory = GUICtrlCreateButton(getLocaleString("btnLocateLaboratory"), $x + 310, $y, 40, 40, $BS_ICON)
			GUICtrlSetImage(-1, $pIconLib, $eIcnLaboratory)
			GUICtrlSetTip(-1, getLocaleString("tipLocateLaboratory"))
			GUICtrlSetOnEvent(-1, "btnLab")
		$btnResetBuilding = GUICtrlCreateButton("Reset.", $x + 380, $y, 40, 40, $BS_ICON)
			GUICtrlSetImage(-1, $pIconLib, $eIcnBldgX)
			$txtTip = "Click here it reset all building locations," & @CRLF & "like when you have changed base layout"
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "btnResetBuilding")
		GUICtrlCreateGroup("", -99, -99, 1, 1)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
