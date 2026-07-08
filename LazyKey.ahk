#Requires AutoHotkey v2.0
#SingleInstance Force

f12::KeyHistory()

Script := true
^+F1::{
    global Script
    Script := !Script
    
}



Controls := false



KeyPress(normal, control){
    global Controls

    ; Shift
    if ((GetKeyState("Shift", "P") || GetKeyState("SC035", "P")) && !GetKeyState("Control", "P")) {
        if(Controls){
            Send("+" . control)
        } else{
            Send("+" . normal)
        }
    } 
    
    ; Control
    else if(!(GetKeyState("Shift", "P") || GetKeyState("SC035", "P")) && GetKeyState("Control", "P")){
        if(Controls){
            Send("^" . control)
        } else{
            Send("^" . normal)
        }        
    } 
    
    ; normal
    else {
        if(Controls){
            Send(control)
        } else{
            Send(normal)
        }
    }
}



#HotIf Script
    ; First Row
        ; ` ~
            SC029::return
        ; 1 !
            SC002::return
        ; 2 @
            SC003::return
        ; 3 #
            SC004::return
        ; 4 $
            SC005::return
        ; 5 %
            SC006::return
        ; 6 ^
            SC007::return
        ; 7 &
            SC008::return
        ; 8 *
            SC009::return
        ; 9 (
            SC00A::return
        ; 0 )
            SC00B::return
        ; - _
            SC00C::return
        ; = +
            SC00D::return
    
    ; Second Row
        ; q Q -> Backspace
            *SC010::SC00E
            

        ; w W
            SC011::{
                KeyPress("w", "{return}")
            }
        ; e E
            *SC012::{
                KeyPress("e", "{Up}")
            }
        ; r R
            SC013::{
                KeyPress("r", "{return}")
            }
        ; t T
            SC014::{
                KeyPress("f", "{return}")
            }
        ; y Y
            SC015::{
                KeyPress("q", "{return}")
            }
        ; u U
            SC016::{
                KeyPress("u", "{return}")
            }
        ; i I
            SC017::{
                KeyPress("i", "{return}")
            }
        ; o O
            SC018::{
                KeyPress("p", "{return}")
            }
        ; p P
            SC019::return
        ; [ {
            SC01A::return
        ; ] }
            SC01B::return
        ; \ |
            SC02B::return

    ; Thrid Row
        ; a A
            *SC01E::{
                KeyPress("a", "{Enter}")
            }
        ; s S
            *SC01F::{
                KeyPress("s", "{Left}")
            }
        ; d D
            *SC020::{
                KeyPress("d", "{SC150}")
            }
        ; f F
            *SC021::{
                KeyPress("t", "{Right}")
            }
        ; g G
            SC022::{
                KeyPress("g", "{return}")
            }
        ; h H
            SC023::{
                KeyPress("y", "{return}")
            }
        ; j J
            SC024::{
                KeyPress("n", "{return}")
            }
        ; k K
            SC025::{
                KeyPress("h", "{return}")
            }
        ; l L
            SC026::{
                KeyPress("l", "{return}")
            }
        ; ; :
            SC027::{
                KeyPress("o", "{return}")
            }

            
        ; ' "
            *SC028::{
                global Controls
                Controls := true
            }
            *SC028 up::{
                global Controls
                Controls := false
            }

    ; Fourth Row
        ; z Z
            SC02C::{
                KeyPress("z", "{return}")
            }
        ; x X
            SC02D::{
                KeyPress("x", "{return}")
            }
        ; c C
            SC02E::{
                KeyPress("c", "{return}")
            }
        ; v V
            SC02F::{
                KeyPress("v", "{return}")
            }
        ; b B
            *SC030::return
        ; n N
            SC031::{
                KeyPress("b", "{return}")
            }
        ; m M
            SC032::{
                KeyPress("m", "{return}")
            }
        ; , <
            SC033::{
                KeyPress("k", "{return}")
            }
        ; . >
            SC034::{
                KeyPress("j", "{return}")
            }


        ; / ? -> Right Shift
            *SC035::SC136
#HotIf 
