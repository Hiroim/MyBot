; #FUNCTION# ====================================================================================================================
; Name ..........: TestLanguage
; Description ...: This function tests if the game is in english language
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: Sardo (2015-06)
; Modified ......: Hervidero(2015)
;
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func TestLanguage()
	If $Runstate Then
		; test "builder" word top of sceen
		If getOcrLanguage(324,6) = "english"  Then
			Setlog(getLocaleString("logTestLangCorrect"), $COLOR_BLUE)
		Else
			SetLog(getLocaleString("logTestLangIncorrect"), $COLOR_RED)
			btnStop()
		EndIf
	EndIf
EndFunc   ;==>TestLanguage
