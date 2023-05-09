SetWorkingDir, C:\ ;prevent secondary WT windows from opening in script dir
; Keep End working as normal on its own
End::send {End}
; Switch Desktop with Alt+Number or End+Num
; Uses standard number layout on a modified programmer Dvorak based layout
!$::switchDesktopByNumber(1)
![::switchDesktopByNumber(2)
!{::switchDesktopByNumber(3)
!}::switchDesktopByNumber(4)
!(::switchDesktopByNumber(5)
!=::switchDesktopByNumber(6)
!*::switchDesktopByNumber(7)
!)::switchDesktopByNumber(8)
!+::switchDesktopByNumber(9)
End & Numpad1::switchDesktopByNumber(1)
End & Numpad2::switchDesktopByNumber(2)
End & Numpad3::switchDesktopByNumber(3)
End & Numpad4::switchDesktopByNumber(4)
End & Numpad5::switchDesktopByNumber(5)
End & Numpad6::switchDesktopByNumber(6)
End & Numpad7::switchDesktopByNumber(7)
End & Numpad8::switchDesktopByNumber(8)
End & Numpad9::switchDesktopByNumber(9)
!Numpad1::switchDesktopByNumber(1)
!Numpad2::switchDesktopByNumber(2)
!Numpad3::switchDesktopByNumber(3)
!Numpad4::switchDesktopByNumber(4)
!Numpad5::switchDesktopByNumber(5)
!Numpad6::switchDesktopByNumber(6)
!Numpad7::switchDesktopByNumber(7)
!Numpad8::switchDesktopByNumber(8)
!Numpad9::switchDesktopByNumber(9)
; Move Window to Desktop with Ctrl+Alt+Number or RCtrl+Num
^!$::MoveCurrentWindowToDesktop(1)
^![::MoveCurrentWindowToDesktop(2)
^!{::MoveCurrentWindowToDesktop(3)
^!}::MoveCurrentWindowToDesktop(4)
^!(::MoveCurrentWindowToDesktop(5)
^!=::MoveCurrentWindowToDesktop(6)
^!*::MoveCurrentWindowToDesktop(7)
^!)::MoveCurrentWindowToDesktop(8)
^!+::MoveCurrentWindowToDesktop(9)
RControl & Numpad1::MoveCurrentWindowToDesktop(1)
RControl & Numpad2::MoveCurrentWindowToDesktop(2)
RControl & Numpad3::MoveCurrentWindowToDesktop(3)
RControl & Numpad4::MoveCurrentWindowToDesktop(4)
RControl & Numpad5::MoveCurrentWindowToDesktop(5)
RControl & Numpad6::MoveCurrentWindowToDesktop(6)
RControl & Numpad7::MoveCurrentWindowToDesktop(7)
RControl & Numpad8::MoveCurrentWindowToDesktop(8)
RControl & Numpad9::MoveCurrentWindowToDesktop(9)
^!Numpad1::MoveCurrentWindowToDesktop(1)
^!Numpad2::MoveCurrentWindowToDesktop(2)
^!Numpad3::MoveCurrentWindowToDesktop(3)
^!Numpad4::MoveCurrentWindowToDesktop(4)
^!Numpad5::MoveCurrentWindowToDesktop(5)
^!Numpad6::MoveCurrentWindowToDesktop(6)
^!Numpad7::MoveCurrentWindowToDesktop(7)
^!Numpad8::MoveCurrentWindowToDesktop(8)
^!Numpad9::MoveCurrentWindowToDesktop(9)

;WSL 1
#Enter::
Run, wt ;start terminal
Sleep, 750 ;wait for newest window to open
WinActivate, WSL1 ;just use a string that matches the start of the terminal window
return

;Powershell
#+Enter::
Run, wt -p "PowerShell 5"
Sleep, 750
WinActivate, PowerShell
return

;WSL2
#^Enter::
Run, wt -p "WSL2 (Ubuntu)"
Sleep, 750
WinActivate, WSL2
return