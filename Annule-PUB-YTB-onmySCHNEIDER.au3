#include <Misc.au3>
;-- YT F8 F9 --;
; F8 - valid & next short
; F9 stop pub button clic
; SHIFT - ESC top end

Local $hDLL = DllOpen("user32.dll")

Sleep(1000);
Beep(500,150);

; -- TODO - config files for 2 parametrable positions for F8 & F9

;~ _IsPressed
;~     01 Left mouse button
;~     02 Right mouse button
;~     03 Control-break processing
;~     04 Middle mouse button (three-button mouse)
;~     05 X1 mouse button
;~     06 X2 mouse button
;~     08 BACKSPACE key
;~     09 TAB key
;~     0C CLEAR key
;~     0D ENTER key
;~     10 SHIFT key
;~     11 CTRL key
;~     12 ALT key
;~     13 PAUSE key
;~     14 CAPS LOCK key
;~     1B ESC key
;~     20 SPACEBAR
;~     21 PAGE UP key
;~     22 PAGE DOWN key
;~     23 END key
;~     24 HOME key
;~     25 LEFT ARROW key
;~     26 UP ARROW key
;~     27 RIGHT ARROW key
;~     28 DOWN ARROW key
;~     29 SELECT key
;~     2A PRINT key
;~     2B EXECUTE key
;~     2C PRINT SCREEN key
;~     2D INS key
;~     2E DEL key
;~     30 0 key
;~     31 1 key
;~     32 2 key
;~     33 3 key
;~     34 4 key
;~     35 5 key
;~     36 6 key
;~     37 7 key
;~     38 8 key
;~     39 9 key
;~     41 A key
;~     42 B key
;~     43 C key
;~     44 D key
;~     45 E key
;~     46 F key
;~     47 G key
;~     48 H key
;~     49 I key
;~     4A J key
;~     4B K key
;~     4C L key
;~     4D M key
;~     4E N key
;~     4F O key
;~     50 P key
;~     51 Q key
;~     52 R key
;~     53 S key
;~     54 T key
;~     55 U key
;~     56 V key
;~     57 W key
;~     58 X key
;~     59 Y key
;~     5A Z key
;~     5B Left Windows key
;~     5C Right Windows key
;~     5D PopUp Menu Key - Applications key on a Microsoft Natural Keyboard
;~     60 Numeric keypad 0 key
;~     61 Numeric keypad 1 key
;~     62 Numeric keypad 2 key
;~     63 Numeric keypad 3 key
;~     64 Numeric keypad 4 key
;~     65 Numeric keypad 5 key
;~     66 Numeric keypad 6 key
;~     67 Numeric keypad 7 key
;~     68 Numeric keypad 8 key
;~     69 Numeric keypad 9 key
;~     6A Multiply key
;~     6B Add key
;~     6C Separator key
;~     6D Subtract key
;~     6E Decimal key
;~     6F Divide key
;~     70 F1 key
;~     71 F2 key
;~     72 F3 key
;~     73 F4 key
;~     74 F5 key
;~     75 F6 key
;~     76 F7 key
;~     77 F8 key
;~     78 F9 key
;~     79 F10 key
;~     7A F11 key
;~     7B F12 key
;~     7C-7F F13 key - F16 key
;~     80H-87H F17 key - F24 key
;~     90 NUM LOCK key
;~     91 SCROLL LOCK key
;~     A0 Left SHIFT key
;~     A1 Right SHIFT key
;~     A2 Left CONTROL key
;~     A3 Right CONTROL key
;~     A4 Left MENU key
;~     A5 Right MENU key
;~     BA ;
;~     BB =
;~     BC ,
;~     BD -
;~     BE .
;~     BF /
;~     C0 `
;~     DB [
;~     DC \
;~     DD ]

Do
	Sleep(20);

	If _IsPressed ( "78", $hDLL  ) Then
		#F9 key - Ignorer la PUB
		MouseMove(2463, 1317, 5);
		MouseClick("Left");
		Sleep(50);
;~ 		MouseUp("Left");
	EndIf
	If _IsPressed ( "77", $hDLL  ) Then
		#F8 key - J'aime for Shorts + Touche BAS
		MouseMove(1781, 977, 5);
		MouseClick("Left");
		Sleep(50);
		Send("{Down}");
;~ 		MouseUp("Left");
	EndIf
	If _IsPressed ( "1B", $hDLL  ) Then
		# ESC
		If _IsPressed ( "A2", $hDLL  ) Then
			#LEFT CTRL
			MsgBox("1","2","ESC PRESSED - END");
			ExitLoop;
		EndIf
	EndIf
Until _IsPressed("1B", $hDLL)

MouseUp("Left");

DllClose($hDLL);
