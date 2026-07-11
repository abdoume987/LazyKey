#Requires AutoHotkey v2.0
#SingleInstance Force

f12::KeyHistory()

Script := true
^+F1::{
    global Script
    Script := !Script
    
}





LastPressTimeMap := Map()
held := Map()
KeyPress(PressedKey, State){
    global LastPressTimeMap, held
    switch State{
        case "down":
            CurrentPressTime := A_TickCount
            if(CurrentPressTime - LastPressTimeMap.Get(PressedKey, 0) >= 50){
                if(!held.Get(PressedKey, false)){
                    Send(PressedKey)
                }
                else{
                    Send("{Backspace}" . "+" . PressedKey)
                }
            }
            held[PressedKey] := true
            LastPressTimeMap[PressedKey] := CurrentPressTime
        case "up": 
            held[PressedKey] := false


    }




}



#HotIf Script
    ; First Row
        ; ` ~
            *SC029::return
        ; 1 !
            *SC002::return
        ; 2 @
            *SC003::return
        ; 3 #
            *SC004::return
        ; 4 $
            *SC005::return
        ; 5 %
            *SC006::return
        ; 6 ^
            *SC007::return
        ; 7 &
            *SC008::return
        ; 8 *
            *SC009::return
        ; 9 (
            *SC00A::return
        ; 0 )
            *SC00B::return
        ; - _
            *SC00C::return
        ; = +
            *SC00D::return
    
    ; Second Row
        ; q Q -> Backspace
            *SC010::SC00E
            

        ; w W -> w W
            *SC011::{
                KeyPress("{SC011}", "down")
            }
            *SC011 up::{
                KeyPress("{SC011}", "up")
            }
        ; e E 
            *SC012::{
                KeyPress("{SC012}", "down")
            }
            *SC012 up::{
                KeyPress("{SC012}", "up")
            }
        ; r R
            *SC013::{
                KeyPress("{SC013}", "down")
            }
            *SC013 up::{
                KeyPress("{SC013}", "up")
            }
        ; t T -> f F
            *SC014::{
                KeyPress("{SC021}", "down")
            }
            *SC014 up::{
                KeyPress("{SC021}", "up")
            }
        ; y Y -> q Q
            *SC015::{
                KeyPress("{SC010}", "down")
            }
            *SC015 up::{
                KeyPress("{SC010}", "up")
            }
        ; u U
            *SC016::{
                KeyPress("{SC016}", "down")
            }
            *SC016 up::{
                KeyPress("{SC016}", "up")
            }
        ; i I
            *SC017::{
                KeyPress("{SC017}", "down")
            }
            *SC017 up::{
                KeyPress("{SC017}", "up")
            }
        ; o O -> p P
            *SC018::{
                KeyPress("{SC019}", "down")
            }
            *SC018 up::{
                KeyPress("{SC019}", "up")
            }
        
        
        ; p P
            *SC019::return
        ; [ {
            *SC01A::return
        ; ] }
            *SC01B::return
        ; \ |
            *SC02B::return

    ; Thrid Row
        ; a A
            *SC01E::{
                KeyPress("{SC01E}", "down")
            }
            *SC01E up::{
                KeyPress("{SC01E}", "up")
            }
        ; s S
            *SC01F::{
                KeyPress("{SC01F}", "down")
            }
            *SC01F up::{
                KeyPress("{SC01F}", "up")
            }
        ; d D
            *SC020::{
                KeyPress("{SC020}", "down")
            }
            *SC020 up::{
                KeyPress("{SC020}", "up")
            }
        ; f F -> t T
            *SC021::{
                KeyPress("{SC014}", "down")
            }
            *SC021 up::{
                KeyPress("{SC014}", "up")
            }
        ; g G
            *SC022::{
                KeyPress("{SC022}", "down")
            }
            *SC022 up::{
                KeyPress("{SC022}", "up")
            }
        ; h H -> y Y
            *SC023::{
                KeyPress("{SC015}", "down")
            }
            *SC023 up::{
                KeyPress("{SC015}", "up")
            }
        ; j J
            *SC024::{
                KeyPress("{SC031}", "down")
            }
            *SC024 up::{
                KeyPress("{SC031}", "up")
            }
        ; k K -> h H
            *SC025::{
                KeyPress("{SC023}", "down")
            }
            *SC025 up::{
                KeyPress("{SC023}", "up")
            }
        ; l L
            *SC026::{
                KeyPress("{SC026}", "down")
            }
            *SC026 up::{
                KeyPress("{SC026}", "up")
            }
        ; ; :
            *SC027::{
                KeyPress("{SC018}", "down")
            }
            *SC027 up::{
                KeyPress("{SC018}", "up")
            }

            
        ; ' "
            *SC028::return

    ; Fourth Row
        ; z Z
            *SC02C::{
                KeyPress("{SC02C}", "down")
            }
            *SC02C up::{
                KeyPress("{SC02C}", "up")
            }
        ; x X
            *SC02D::{
                KeyPress("{SC02D}", "down")
            }
            *SC02D up::{
                KeyPress("{SC02D}", "up")
            }
        ; c C
            *SC02E::{
                KeyPress("{SC02E}", "down")
            }
            *SC02E up::{
                KeyPress("{SC02E}", "up")
            }
        ; v V
            *SC02F::{
                KeyPress("{SC02F}", "down")
            }
            *SC02F up::{
                KeyPress("{SC02F}", "up")
            }
        ; b B
            *SC030::return

        ; n N
            *SC031::{
                KeyPress("{SC030}", "down")
            }
            *SC031 up::{
                KeyPress("{SC030}", "up")
            }
        ; m M
            *SC032::{
                KeyPress("{SC032}", "down")
            }
            *SC032 up::{
                KeyPress("{SC032}", "up")
            }
        ; , <
            *SC033::{
                KeyPress("{SC025}", "down")
            }
            *SC033 up::{
                KeyPress("{SC025}", "up")
            }
        ; . >
            *SC034::{
                KeyPress("{SC024}", "down")
            }
            *SC034 up::{
                KeyPress("{SC024}", "up")
            }


        ; / ?
            *SC035::return
#HotIf 
