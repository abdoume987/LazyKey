#Requires AutoHotkey v2.0
#SingleInstance Force

f12::KeyHistory()

Script := true
^+F1::{
    global Script
    Script := !Script
    
}





PressTimeMap := Map()
ReleaseTimeMap := Map()
held := Map()


KeyPress(PressedKey, State){
    global PressTimeMap, ReleaseTimeMap
    PressTimeMap[PressedKey] := A_TickCount
    
    
    if(KeyWait(PressedKey)){
        ReleaseTimeMap[PressedKey] := A_TickCount
    }

    if(ReleaseTimeMap[PressedKey] - PressTimeMap[PressedKey] >= 300){
        Send("+{" . PressedKey . "}")
        
    } else{
        Send("{" . PressedKey . "}")
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
        ; e E 
            *SC012::{
                KeyPress("{SC012}", "down")
            }
        ; r R
            *SC013::{
                KeyPress("{SC013}", "down")
            }
        ; t T -> f F
            *SC014::{
                KeyPress("{SC021}", "down")
            }
        ; y Y -> q Q
            *SC015::{
                KeyPress("{SC010}", "down")
            }
        ; u U
            *SC016::{
                KeyPress("{SC016}", "down")
            }
        ; i I
            *SC017::{
                KeyPress("{SC017}", "down")
            }
        ; o O -> p P
            *SC018::{
                KeyPress("{SC019}", "down")
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
                PressTime := A_TickCount
                
                
                if(KeyWait("SC01E")){
                    ReleaseTime := A_TickCount
                }

                if(ReleaseTime - PressTime >= 300){
                    Send("+{SC01E}")
                    
                } else{
                    Send("{SC01E}")
                }
            }
        ; s S
            *SC01F::{
                PressTime := A_TickCount
                
                
                if(KeyWait("SC01F")){
                    ReleaseTime := A_TickCount
                }

                if(ReleaseTime - PressTime >= 300){
                    Send("+{SC01F}")
                    
                } else{
                    Send("{SC01F}")
                }
            }
        ; d D
            *SC020::{
                PressTime := A_TickCount
                
                
                if(KeyWait("SC020")){
                    ReleaseTime := A_TickCount
                }

                if(ReleaseTime - PressTime >= 300){
                    Send("+{SC020}")
                    
                } else{
                    Send("{SC02}")
                }
            }
        ; f F -> t T
            *SC021::{
                KeyPress("{SC014}", "down")
            }
        ; g G
            *SC022::{
                KeyPress("{SC022}", "down")
            }
        ; h H -> y Y
            *SC023::{
                KeyPress("{SC015}", "down")
            }
        ; j J
            *SC024::{
                KeyPress("{SC031}", "down")
            }
        ; k K -> h H
            *SC025::{
                KeyPress("{SC023}", "down")
            }
        ; l L
            *SC026::{
                KeyPress("{SC026}", "down")
            }
        ; ; :
            *SC027::{
                KeyPress("{SC018}", "down")
            }

            
        ; ' "
            *SC028::return

    ; Fourth Row
        ; z Z
            *SC02C::{
                KeyPress("{SC02C}", "down")
            }
        ; x X
            *SC02D::{
                KeyPress("{SC02D}", "down")
            }
        ; c C
            *SC02E::{
                KeyPress("{SC02E}", "down")
            }
        ; v V
            *SC02F::{
                KeyPress("{SC02F}", "down")
            }
        ; b B
            *SC030::return

        ; n N
            *SC031::{
                KeyPress("{SC030}", "down")
            }
        ; m M
            *SC032::{
                KeyPress("{SC032}", "down")
            }
        ; , <
            *SC033::{
                KeyPress("{SC025}", "down")
            }
        ; . >
            *SC034::{
                KeyPress("{SC024}", "down")
            }
            
            
            ; / ?
            *SC035::return
            
            
        #HotIf 

