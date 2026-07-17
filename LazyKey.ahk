#Requires AutoHotkey v2.0
#SingleInstance Force
F12::KeyHistory()

Script := true
^+F1::{
    global Script
    Script := !Script   
}

LayerI := false
LayerII := false

KeysFunction(Key, State, KeyI := ""){
    if(LayerI){
        Send(KeyI)
    } else{
        if(GetKeyState("Shift","P") && !GetKeyState("LAlt","P") && !GetKeyState("LWin","P") && !GetKeyState("LControl","P")){
            Send("+" . "{" . Key . "}")
        } else if(!GetKeyState("Shift","P") && GetKeyState("LAlt","P") && !GetKeyState("LWin","P") && !GetKeyState("LControl","P")){
            Send("!" . "{" . Key . "}")
        } else if(!GetKeyState("Shift","P") && !GetKeyState("LAlt","P") && GetKeyState("LWin","P") && !GetKeyState("LControl","P")){
            Send("#" . "{" . Key . "}")
        } else if(!GetKeyState("Shift","P") && !GetKeyState("LAlt","P") && !GetKeyState("LWin","P") && GetKeyState("LControl","P")){
            Send("^" . "{" . Key . "}")
        } else if(GetKeyState("Shift","P") && GetKeyState("LAlt","P") && !GetKeyState("LWin","P") && !GetKeyState("LControl","P")){
            Send("+!" . "{" . Key . "}")
        } else if(GetKeyState("Shift","P") && !GetKeyState("LAlt","P") && GetKeyState("LWin","P") && !GetKeyState("LControl","P")){
            Send("+#" . "{" . Key . "}")
        } else if(GetKeyState("Shift","P") && !GetKeyState("LAlt","P") && !GetKeyState("LWin","P") && GetKeyState("LControl","P")){
            Send("+^" . "{" . Key . "}")
        } else if(!GetKeyState("Shift","P") && GetKeyState("LAlt","P") && GetKeyState("LWin","P") && !GetKeyState("LControl","P")){
            Send("!#" . "{" . Key . "}")
        } else if(!GetKeyState("Shift","P") && GetKeyState("LAlt","P") && !GetKeyState("LWin","P") && GetKeyState("LControl","P")){
            Send("!^" . "{" . Key . "}")
        } else if(!GetKeyState("Shift","P") && !GetKeyState("LAlt","P") && GetKeyState("LWin","P") && GetKeyState("LControl","P")){
            Send("#^" . "{" . Key . "}")
        } else{
            Send("{" . Key . "}")
        }
    }
}

#HotIf Script
    ; First Row
        ; ` ~
            *SC029::KeysFunction("SC029", "Down")
        ; 1 !
            *SC002::KeysFunction("SC002", "Down")
        ; 2 @
            *SC003::KeysFunction("SC003", "Down")
        ; 3 #
            *SC004::KeysFunction("SC004", "Down")
        ; 4 $
            *SC005::KeysFunction("SC005", "Down")
        ; 5 %
            *SC006::KeysFunction("SC006", "Down")
        ; 6 ^
            *SC007::KeysFunction("SC007", "Down")
        ; 7 &
            *SC008::KeysFunction("SC008", "Down")
        ; 8 *
            *SC009::KeysFunction("SC009", "Down")
        ; 9 (
            *SC00A::KeysFunction("SC00A", "Down")
        ; 0 )
            *SC00B::KeysFunction("SC00B", "Down")
        ; - _
            *SC00C::KeysFunction("SC00C", "Down")
        ; = +
            *SC00D::KeysFunction("SC00D", "Down")
    


    ; Second Row
        ; q Q
            *SC010::KeysFunction("SC010", "Down")
        ; w W
            *SC011::KeysFunction("SC011", "Down")
        ; e E 
            *SC012::KeysFunction("SC012", "Down")
        ; r R
            *SC013::KeysFunction("SC013", "Down")
        ; t T
            *SC014::KeysFunction("SC014", "Down")
        ; y Y
            *SC015::KeysFunction("SC015", "Down")
        ; u U
            *SC016::KeysFunction("SC016", "Down")
        ; i I
            *SC017::KeysFunction("SC017", "Down")
        ; o O
            *SC018::KeysFunction("SC018", "Down")
        ; p P
            *SC019::KeysFunction("SC019", "Down")
        ; [ {
            *SC01A::KeysFunction("SC01A", "Down")
        ; ] }
            *SC01B::KeysFunction("SC01B", "Down")
        ; \ |
            *SC02B::KeysFunction("SC02B", "Down")



    ; Thrid Row
        ; a A
            *SC01E::KeysFunction("SC01E", "Down", "1")
        ; s S
            *SC01F::KeysFunction("SC01F", "Down", "2")
        ; d D
            *SC020::KeysFunction("SC020", "Down", "3")
        ; f F
            *SC021::KeysFunction("SC021", "Down", "4")
        ; g G
            *SC022::KeysFunction("SC022", "Down", "5")
        ; h H
            *SC023::KeysFunction("SC023", "Down", "6")
        ; j J
            *SC024::KeysFunction("SC024", "Down", "7")
        ; k K
            *SC025::KeysFunction("SC025", "Down", "8")
        ; l L
            *SC026::KeysFunction("SC026", "Down", "9")
        ; ; :
            *SC027::KeysFunction("SC027", "Down", "0")
        ; ' "
            *SC028::KeysFunction("SC028", "Down")



    ; Fourth Row
        ; z Z
            *SC02C::KeysFunction("SC02C", "Down")
        ; x X
            *SC02D::KeysFunction("SC02D", "Down")
        ; c C
            *SC02E::KeysFunction("SC02E", "Down")
        ; v V
            *SC02F::KeysFunction("SC02F", "Down")
        ; b B
            *SC030::KeysFunction("SC030", "Down")
        ; n N
            *SC031::KeysFunction("SC031", "Down")
        ; m M
            *SC032::KeysFunction("SC032", "Down")
        ; , 
            *SC033::KeysFunction("SC033", "Down")
        ; . >
            *SC034::KeysFunction("SC034", "Down")
            ; / ?
            *SC035::KeysFunction("SC035", "Down")


    ; Fifth Row
        ; Left Ctrl
        ; Left Windows
        ; Left Alt
        ; Space
        ; Right Alt
            *SC138::{
                global LayerI
                LayerI := true
            }
            *SC138 up::{
                global LayerI
                LayerI := false
            }
        ; Right Ctrl
            *SC11D::return
            

        
#HotIf