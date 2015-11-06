
; #FUNCTION# ====================================================================================================================
; Name ..........: LocateQueenAltar & LocateKingAltar
; Description ...:
; Syntax ........: LocateKingAltar() & LocateQueenAltar()
; Parameters ....:
; Return values .: None
; Author ........: ProMac 2015
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================




Func LocateQueenAltar()

	Local $stext, $MsgBox, $iSilly = 0, $iStupid = 0, $sErrorText = "", $sInfo

	$RunState = True
	WinActivate($Title)
	checkMainScreen(False)

	If _GetPixelColor($aTopLeftClient[0], $aTopLeftClient[1], True) <> Hex($aTopLeftClient[2], 6) And _GetPixelColor($aTopRightClient[0], $aTopRightClient[1], True) <> Hex($aTopRightClient[2], 6) Then
		Zoomout()
	EndIf

	SetLog(getLocaleString("logLocateQueen"), $COLOR_BLUE)
	While 1
		ClickP($aTopLeftClient)
		_ExtMsgBoxSet(1 + 64, $SS_CENTER, 0x004080, 0xFFFF00, 12, "Lucida Sans Unicode", 500)
		$stext = $sErrorText & @CRLF & getLocaleString("msgboxLocateQueen_msg",1) & @CRLF
		$MsgBox = _ExtMsgBox(0, getLocaleString("msgboxLocateHeroes_controls"), getLocaleString("msgboxLocateQueen_title"), $stext, 15, $frmBot)
		If $MsgBox = 1 Then
			$HWnD = WinGetHandle($Title)
			WinActivate($HWnD)
			$QueenAltarPos[0] = FindPos()[0]
			$QueenAltarPos[1] = FindPos()[1]
			If isInsideDiamond($QueenAltarPos) = False Then
				$iStupid += 1
				Select
					Case $iStupid = 1
						$sErrorText = getLocaleString("txtStupidCase1Queen") & @CRLF
						SetLog(getLocaleString("txtStupidCase1Queen"), $COLOR_RED)
						ContinueLoop
					Case $iStupid = 2
						$sErrorText = getLocaleString("txtStupidCase2") & @CRLF
						ContinueLoop
					Case $iStupid = 3
						$sErrorText = getLocaleString("txtStupidCase3") & $QueenAltarPos[0] & "," & $QueenAltarPos[1] & ")?" & @CRLF & getLocaleString("txtStupidCase3_2") & @CRLF & @CRLF
						ContinueLoop
					Case $iStupid = 4
						$sErrorText = getLocaleString("txtStupidCase4",1) & @CRLF
						ContinueLoop
					Case $iStupid > 4
						SetLog(getLocaleString("txtOperatorErrQueen") & "(" & $QueenAltarPos[0] & "," & $QueenAltarPos[1] & ")", $COLOR_RED)
						ClickP($aTopLeftClient)
						Return False
					Case Else
						SetLog(getLocaleString("txtOperatorErrQueen") & "(" & $QueenAltarPos[0] & "," & $QueenAltarPos[1] & ")", $COLOR_RED)
						$QueenAltarPos[0] = -1
						$QueenAltarPos[1] = -1
						ClickP($aTopLeftClient)
						Return False
				EndSelect
			EndIf
			SetLog(getLocaleString("logPosQueen") & "(" & $QueenAltarPos[0] & "," & $QueenAltarPos[1] & ")", $COLOR_GREEN)
		Else
			SetLog(getLocaleString("logLocateCancelledQueen"), $COLOR_BLUE)
			ClickP($aTopLeftClient)
			Return
		EndIf

		;get Queen info
		$sInfo = BuildingInfo(242, 520)
		If @error Then SetError(0, 0, 0)
		Local $CountGetInfo = 0
		While IsArray($sInfo) = False
			$sInfo = BuildingInfo(242, 520)
			If @error Then SetError(0, 0, 0)
			Sleep(100)
			$CountGetInfo += 1
			If $CountGetInfo = 50 Then Return
		WEnd
		If $debugSetlog = 1 Then SetLog($sInfo[1] & $sInfo[2])
		If @error Then Return SetError(0, 0, 0)

		If $sInfo[0] > 1 Or $sInfo[0] = "" Then
			If @error Then Return SetError(0, 0, 0)

			If StringInStr($sInfo[1], "Quee") = 0 Then
				If $sInfo[0] = "" Then
					$sLocMsg = "Nothing"
				Else
					$sLocMsg = $sInfo[1]
				EndIf
				$iSilly += 1
				Select
					Case $iSilly = 1
						$sErrorText = getLocaleString("txtSillyCaseQueen") & $sLocMsg & @CRLF
						ContinueLoop
					Case $iSilly = 2
						$sErrorText = getLocaleString("txtSillyCase2") & $sLocMsg & @CRLF
						ContinueLoop
					Case $iSilly = 3
						$sErrorText = getLocaleString("txtSillyCase3") & $sLocMsg & getLocaleString("txtSillyCase3_2") & @CRLF
						ContinueLoop
					Case $iSilly = 4
						$sErrorText = $sLocMsg & " ?!?!?!" & @CRLF & @CRLF & getLocaleString("txtStupidCase4",1) & @CRLF
						ContinueLoop
					Case $iSilly > 4
						SetLog(getLocaleString("txtSillyCase4Queen"), $COLOR_RED)
						$QueenAltarPos[0] = -1
						$QueenAltarPos[1] = -1
						ClickP($aTopLeftClient)
						Return False
				EndSelect
			EndIf
		Else
			SetLog(getLocaleString("txtOperatorErrQueen") & "(" & $QueenAltarPos[0] & "," & $QueenAltarPos[1] & ")", $COLOR_RED)
			$QueenAltarPos[0] = -1
			$QueenAltarPos[1] = -1
			ClickP($aTopLeftClient)
			Return False
		EndIf
		ExitLoop
	WEnd

	ClickP($aTopLeftClient, 1, 200, "#0327")
	If _Sleep(1000) Then Return

	_ExtMsgBoxSet(1 + 64, $SS_CENTER, 0x004080, 0xFFFF00, 12, "Lucida Sans Unicode", 500)
	$stext = getLocaleString("txtRemoveMouse")
	$MsgBox = _ExtMsgBox(48, getLocaleString("msgboxMsgACControls"), getLocaleString("msgboxMsgACTitle"), $stext, 15, $frmBot)

	IniWrite($building, "other", "xQueenAltarPos", $QueenAltarPos[0])
	IniWrite($building, "other", "yQueenAltarPos", $QueenAltarPos[1])

EndFunc   ;==>LocateQueenAltar



Func LocateKingAltar()

	Local $stext, $MsgBox, $iSilly = 0, $iStupid = 0, $sErrorText = "", $sInfo
	$RunState = True
	WinActivate($Title)
	checkMainScreen(False)

	SetLog(getLocaleString("logLocateKing"), $COLOR_BLUE)
	While 1
		ClickP($aTopLeftClient)
		_ExtMsgBoxSet(1 + 64, $SS_CENTER, 0x004080, 0xFFFF00, 12, "Lucida Sans Unicode", 500)
		$stext = $sErrorText & @CRLF & getLocaleString("msgboxLocateKing_msg",1) & @CRLF
		$MsgBox = _ExtMsgBox(0, getLocaleString("msgboxLocateHeroes_controls"), getLocaleString("logLocateKing"), $stext, 15, $frmBot)
		If $MsgBox = 1 Then
			$HWnD = WinGetHandle($Title)
			WinActivate($HWnD)
			$KingAltarPos[0] = FindPos()[0]
			$KingAltarPos[1] = FindPos()[1]
			If isInsideDiamond($KingAltarPos) = False Then
				$iStupid += 1
				Select
					Case $iStupid = 1
						$sErrorText = getLocaleString("txtStupidCase1King") & @CRLF
						SetLog(getLocaleString("txtStupidCase1King"), $COLOR_RED)
						ContinueLoop
					Case $iStupid = 2
						$sErrorText = getLocaleString("txtStupidCase2") & @CRLF
						ContinueLoop
					Case $iStupid = 3
						$sErrorText = getLocaleString("txtStupidCase3") & $KingAltarPos[0] & "," & $KingAltarPos[1] & ")?" & @CRLF & getLocaleString("txtStupidCase3_2") & @CRLF & @CRLF
						ContinueLoop
					Case $iStupid = 4
						$sErrorText = getLocaleString("txtStupidCase4",1) & @CRLF
						ContinueLoop
					Case $iStupid > 4
						SetLog(getLocaleString("txtOperatorErrKing") & "(" & $KingAltarPos[0] & "," & $KingAltarPos[1] & ")", $COLOR_RED)
						ClickP($aTopLeftClient)
						Return False
					Case Else
						SetLog(getLocaleString("txtOperatorErrKing") & "(" & $KingAltarPos[0] & "," & $KingAltarPos[1] & ")", $COLOR_RED)
						$KingAltarPos[0] = -1
						$KingAltarPos[1] = -1
						ClickP($aTopLeftClient)
						Return False
				EndSelect
			EndIf
			SetLog(getLocaleString("logPosKing") & "(" & $KingAltarPos[0] & "," & $KingAltarPos[1] & ")", $COLOR_GREEN)
		Else
			SetLog(getLocaleString("logLocateCancelledKing"), $COLOR_BLUE)
			ClickP($aTopLeftClient)
			Return
		EndIf

		;Get King info
		$sInfo = BuildingInfo(242, 520)
		If @error Then SetError(0, 0, 0)
		Local $CountGetInfo = 0
		While IsArray($sInfo) = False
			$sInfo = BuildingInfo(242, 520)
			If @error Then SetError(0, 0, 0)
			Sleep(100)
			$CountGetInfo += 1
			If $CountGetInfo = 50 Then Return
		WEnd
		If $debugSetlog = 1 Then SetLog($sInfo[1] & $sInfo[2])
		If @error Then Return SetError(0, 0, 0)

		If $sInfo[0] > 1 Or $sInfo[0] = "" Then

			If (StringInStr($sInfo[1], "Barb") = 0) And (StringInStr($sInfo[1], "King") = 0) Then
				If $sInfo[0] = "" Then
					$sLocMsg = "Nothing"
				Else
					$sLocMsg = $sInfo[1]
				EndIf
				$iSilly += 1
				Select
					Case $iSilly = 1
						$sErrorText = getLocaleString("txtSillyCaseKing") & $sLocMsg & @CRLF
						ContinueLoop
					Case $iSilly = 2
						$sErrorText = getLocaleString("txtSillyCase2") & $sLocMsg & @CRLF
						ContinueLoop
					Case $iSilly = 3
						$sErrorText = getLocaleString("txtSillyCase3") & $sLocMsg & getLocaleString("txtSillyCase3_2") & @CRLF
						ContinueLoop
					Case $iSilly = 4
						$sErrorText = $sLocMsg & " ?!?!?!" & @CRLF & @CRLF & getLocaleString("txtStupidCase4",1) & @CRLF
						ContinueLoop
					Case $iSilly > 4
						SetLog(getLocaleString("txtSillyCase4King"), $COLOR_RED)
						$KingAltarPos[0] = -1
						$KingAltarPos[1] = -1
						ClickP($aTopLeftClient)
						Return False
				EndSelect
			EndIf
		Else
			SetLog(getLocaleString("txtOperatorErrKing") & "(" & $KingAltarPos[0] & "," & $KingAltarPos[1] & ")", $COLOR_RED)
			$KingAltarPos[0] = -1
			$KingAltarPos[1] = -1
			ClickP($aTopLeftClient)
			Return False
		EndIf
		ExitLoop
	WEnd

	ClickP($aTopLeftClient, 1, 200, "#0327")
	If _Sleep(1000) Then Return

	_ExtMsgBoxSet(1 + 64, $SS_CENTER, 0x004080, 0xFFFF00, 12, "Lucida Sans Unicode", 500)
	$stext = getLocaleString("txtRemoveMouse")
	$MsgBox = _ExtMsgBox(48, getLocaleString("msgboxMsgACControls"), getLocaleString("msgboxMsgACTitle"), $stext, 15, $frmBot)

	IniWrite($building, "other", "xKingAltarPos", $KingAltarPos[0])
	IniWrite($building, "other", "yKingAltarPos", $KingAltarPos[1])

EndFunc   ;==>LocateKingAltar
