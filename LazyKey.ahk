#Requires AutoHotkey v2.0
#SingleInstance Force

f12::KeyHistory()

Script := false
^+F1::{
    global Script
    Script := !Script
}


Control := false

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
        ; q Q
            SC010::return
        ; w W
            SC011::return
        ; e E
            SC012::return
        ; r R
            SC013::return
        ; t T
            SC014::return
        ; y Y
            SC015::return
        ; u U
            SC016::return
        ; i I
            SC017::return
        ; o O
            SC018::return
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
            SC01E::return
        ; s S
            SC01F::return
        ; d D
            SC020::return
        ; f F
            SC021::return
        ; g G
            SC022::return
        ; h H
            SC023::return
        ; j J
            SC024::return
        ; k K
            SC025::return
        ; l L
            SC026::return
        ; ; :
            SC027::return
        ; ' "
            SC028::return

    ; Fourth Row
        ; z Z
            SC02C::return
        ; x X
            SC02D::return
        ; c C
            SC02E::return
        ; v V
            SC02F::return
        ; b B
            SC030::return
        ; n N
            SC031::return
        ; m M
            SC032::return
        ; , <
            SC033::return
        ; . >
            SC034::return
        ; / ?
            SC035::return
#HotIf 
