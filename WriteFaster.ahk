﻿; Main Navigation
MoveCursor(key) {
    shift := GetKeyState("SHIFT","P")
    control := GetKeyState("CONTROL","P")
    controlShift := control && shift

    if controlShift {
        Send, ^+%key%
    }
    else if shift {
        Send, +%key%
    }
    else if control {
        Send, ^%key%
    }
    else {
        Send, %key%
    }


}
; Alternatively, using Alt...
ALT & j::MoveCursor("{LEFT}")
ALT & l::MoveCursor("{RIGHT}")
ALT & i::MoveCursor("{UP}")
ALT & k::MoveCursor("{DOWN}")
ALT & g::MoveCursor("{HOME}")
ALT & `;::MoveCursor("{END}")
ALT & BACKSPACE::Send {DELETE}
