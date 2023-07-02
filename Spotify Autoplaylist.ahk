#SingleInstance

!#p::{
    if not WinExist("ahk_class Spotify")
    {
        Run "spotify"
        WinWait "ahk_exe Spotify.exe"
        WinMaximize "ahk_exe Spotify.exe"
        WinActivate "ahk_exe Spotify.exe"
        Sleep 1000
    }
    else
    {
        WinActivate "ahk_exe Spotify.exe"
        WinMaximize "ahk_exe Spotify.exe"
    }
    
    Sleep 300 
    Send "{Media_Stop}"
    Sleep 50 
    Send "^!f"
    Sleep 50 
    Send "^a"
    Sleep 50
    Send "Autoplaylist"
    Sleep 300 
    Send "{tab}{tab}{tab}{down}+{enter}"
    Sleep 100 
    Send "{esc}"
    Sleep 100 
    Send "{Media_Stop}"
    Sleep 100 
    Send "{Media_Previous}"
    Sleep 100 
    Send "{Media_Play_Pause}"
    Sleep 150
    WinMinimize "ahk_exe Spotify.exe"
    ; SendEvent "{+}{enter}"
}
