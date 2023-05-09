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
^!$::MoveCurrentWindowToDesktopAndSwitch(1)
^![::MoveCurrentWindowToDesktopAndSwitch(2)
^!{::MoveCurrentWindowToDesktopAndSwitch(3)
^!}::MoveCurrentWindowToDesktopAndSwitch(4)
^!(::MoveCurrentWindowToDesktopAndSwitch(5)
^!=::MoveCurrentWindowToDesktopAndSwitch(6)
^!*::MoveCurrentWindowToDesktopAndSwitch(7)
^!)::MoveCurrentWindowToDesktopAndSwitch(8)
^!+::MoveCurrentWindowToDesktopAndSwitch(9)
RControl & Numpad1::MoveCurrentWindowToDesktopAndSwitch(1)
RControl & Numpad2::MoveCurrentWindowToDesktopAndSwitch(2)
RControl & Numpad3::MoveCurrentWindowToDesktopAndSwitch(3)
RControl & Numpad4::MoveCurrentWindowToDesktopAndSwitch(4)
RControl & Numpad5::MoveCurrentWindowToDesktopAndSwitch(5)
RControl & Numpad6::MoveCurrentWindowToDesktopAndSwitch(6)
RControl & Numpad7::MoveCurrentWindowToDesktopAndSwitch(7)
RControl & Numpad8::MoveCurrentWindowToDesktopAndSwitch(8)
RControl & Numpad9::MoveCurrentWindowToDesktopAndSwitch(9)
^!Numpad1::MoveCurrentWindowToDesktopAndSwitch(1)
^!Numpad2::MoveCurrentWindowToDesktopAndSwitch(2)
^!Numpad3::MoveCurrentWindowToDesktopAndSwitch(3)
^!Numpad4::MoveCurrentWindowToDesktopAndSwitch(4)
^!Numpad5::MoveCurrentWindowToDesktopAndSwitch(5)
^!Numpad6::MoveCurrentWindowToDesktopAndSwitch(6)
^!Numpad7::MoveCurrentWindowToDesktopAndSwitch(7)
^!Numpad8::MoveCurrentWindowToDesktopAndSwitch(8)
^!Numpad9::MoveCurrentWindowToDesktopAndSwitch(9)

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