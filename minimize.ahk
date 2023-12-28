; Define the hotkey to toggle the window
m::ToggleMinimize()

; Function to toggle the minimize state of a specific window
ToggleMinimize() {
    ; Enter the custom window title here
    WinTitle := "axanael.exe"

    ; Check if the window exists
    IfWinExist, ahk_exe %WinTitle%
    {
        ; Check if the window is currently active
        IfWinActive, ahk_exe %WinTitle%
        {
            ; Toggle the minimize state of the window
            WinMinimize, ahk_exe %WinTitle%
        }
        else
        {
            ; If the window is not currently active, activate it
            WinActivate, ahk_exe %WinTitle%
        }
    }
}
