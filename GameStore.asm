
               .MODEL SMALL
   
 
.STACK 100H

.DATA       

playingSimple db '.........Playing........$'
alreadyOwnedMsg db 'Game already purchased. Returning to browse menu...$', 13, 10

purchased1 db 3 dup(255)  
purchased2 db 3 dup(255)
purchased3 db 3 dup(255)



; Genre Menu Labels
openWorldLabel db '1 - Open World$', '$'
battleRoyaleLabel db '2 - Battle Royale$', '$'
multiplayerLabel db '3 - Multiplayer$', '$'
simulationLabel db '4 - Simulation$', '$'
goBackLabel db '0 - Go Back to Menu$', '$'

; Open World Games
open1 db '1 - Red Dead Redemption 2$', '$'
open2 db '2 - The Legend of Zelda: Breath of the Wild$', '$'
open3 db '3 - Grand Theft Auto V$', '$'
open4 db '4 - Elden Ring$', '$'
open5 db '5 - The Witcher 3$', '$'
open0 db '0 - Go Back$', '$'

; Battle Royale
battle1 db '1 - Fortnite$', '$'
battle2 db '2 - PUBG$', '$'
battle3 db '3 - Apex Legends$', '$'
battle0 db '0 - Go Back$', '$'

; Multiplayer
multi1 db '1 - League of Legends$', '$'
multi2 db '2 - Valorant$', '$'
multi3 db '3 - CS:GO$', '$'
multi0 db '0 - Go Back$', '$'

; Simulation
sim1 db '1 - The Sims$', '$'
sim2 db '2 - Microsoft Flight Simulator$', '$'
sim0 db '0 - Go Back$', '$'



; Game library flags for each account (a total of 13 games)
library1 db 13 dup(0)
library2 db 13 dup(0)
library3 db 13 dup(0)

; Prompt strings
browseMenuMsg db '4. Browse Games$', 13, 10
libraryMenuMsg db '5. View Personal Library$', 13, 10

purchasePrompt db '1. Purchase Game', 13, 10, '0. Go Back$', 13, 10, '$'
libraryActionPrompt db '1. Play', 13, 10, '2. Delete', 13, 10, '0. Go Back$', 13, 10, '$'





;Initial BIG Message
    ini1 db '     ________                          _________ __                        $'                 
    ini2 db '    /  _____/_____    _____   ____    /   _____//  |_  ___________   ____  $'    
    ini3 db '   /   \  ___\__  \  /     \_/ __ \   \_____  \\   __\/  _ \_  __ \_/ __ \ $'
    ini4 db '   \    \_\  \/ __ \|  Y Y  \  ___/   /        \|  | (  <_> )  | \/\  ___/ $'
    ini5 db '    \______  (____  /__|_|  /\___  > /_______  /|__|  \____/|__|    \___  >$' 
    ini6 db '           \/     \/      \/     \/          \/                         \/ $'                                                                                                                                               
                                                                                                                                            
    
    create1 db '______________________________   ___________________________$'      
    create2 db '\_   ___ \______   \_   _____/  /  _  \__    ___/\_   _____/$' 
    create3 db '/    \  \/|       _/|    __)_  /  /_\  \|    |    |    __)_ $'
    create4 db '\     \___|    |   \|        \/    |    \    |    |        \$'
    create5 db ' \______  /____|_  /_______  /\____|__  /____|   /_______  /$' 
    create6 db '        \/       \/        \/         \/                 \/ $' 
        

    login1 db '.____    ________    ________  .___ _______   $'      
    login2 db '|    |   \_____  \  /  _____/  |   |\      \  $' 
    login3 db '|    |    /   |   \/   \  ___  |   |/   |   \ $'
    login4 db '|    |___/    |    \    \_\  \ |   /    |    \$'
    login5 db '|_______ \_______  /\______  / |___\____|__  /$'  
    login6 db '        \/       \/        \/              \/ $'
    
    modify1 db '   _____   ________  ________  .___________________.___.$'      
    modify2 db '  /     \  \_____  \ \______ \ |   \_   _____/\__  |   |$'
    modify3 db ' /  \ /  \  /   |   \ |    |  \|   ||    __)    /   |   |$'
    modify4 db '/    Y    \/    |    \|    `   \   ||     \     \____  |$' 
    modify5 db '\____|__  /\_______  /_______  /___|\___  /     / ______|$'  
    modify6 db '        \/         \/        \/         \/      \/       $'
    
 
    delete1 db '  ________  ___________.____     _________________________________$'                      
    delete2 db '\______ \ \_   _____/|    |    \_   _____/\__    ___/\_   _____/$'
    delete3 db ' |    |  \ |    __)_ |    |     |    __)_   |    |    |    __)_ $'
    delete4 db ' |    `   \|        \|    |___  |        \  |    |    |        \$' 
    delete5 db '/_______  /_______  /|_______ \/_______  /  |____|   /_______  /$' 
    delete6 db '        \/        \/         \/        \/                    \/ $' 

                                   
    details1 db '________          __         .__.__          $'     
    details2 db '\______ \   _____/  |______  |__|  |   ______$'
    details3 db ' |    |  \_/ __ \   __\__  \ |  |  |  /  ___/$'
    details4 db ' |    `   \  ___/|  |  / __ \|  |  |__\___ \ $' 
    details5 db ' /_______  /\___  >__| (____  /__|____/____  >$'  
    details6 db '        \/     \/          \/             \/$'

    logout1 db '.____                   ________          __   $'      
    logout2 db '|    |    ____   ____   \_____  \  __ ___/  |_ $'
    logout3 db '|    |   /  _ \ / ___\   /   |   \|  |  \   __\$'
    logout4 db '|    |__(  <_> ) /_/  > /    |    \  |  /|  |  $'
    logout5 db '|_______ \____/\___  /  \_______  /____/ |__|  $'  
    logout6 db '        \/    /_____/           \/             $'

    
    bye1 db '_______________.___.___________._.$' 
    bye2 db '\______   \__  |   |\_   _____/| |$' 
    bye3 db ' |    |  _//   |   | |    __)_ | |$'   
    bye4 db ' |    |   \\____   | |        \ \|$'   
    bye5 db ' |______  // ______|/_______  / __$' 
    bye6 db '        \/ \/               \/  \/$'


    buy1 db '__________ ____ ________.___._________ $'
    buy2 db '\______   \    |   \__  |   |\_____   \$'
    buy3 db ' |    |  _/    |   //   |   |   /   __/$'
    buy4 db ' |    |   \    |  / \____   |  |   |   $'
    buy5 db ' |______  /______/  / ______|  |___|   $'
    buy6 db '        \/          \/         <___>   $'    
    
    
    brw1 db '____________________ ________  __      __  ____________________$'
    brw2 db '\______   \______   \\_____  \/  \    /  \/   _____/\_   _____/$' 
    brw3 db ' |    |  _/|       _/ /   |   \   \/\/   /\_____  \  |    __)_ $'
    brw4 db ' |    |   \|    |   \/    |    \        / /        \ |        \$'
    brw5 db ' |______  /|____|_  /\_______  /\__/\  / /_______  //_______  /$'
    brw6 db '        \/        \/         \/      \/          \/         \/ $'


    lib1 db '	.____    ._____.                              $'
    lib2 db '	|    |   |__\_ |______________ _______ ___.__.$'
    lib3 db '	|    |   |  || __ \_  __ \__  \\_  __ <   |  |$'
    lib4 db '	|    |___|  || \_\ \  | \// __ \|  | \/\___  |$'
    lib5 db '	|_______ \__||___  /__|  (____  /__|   / ____|$'
    lib6 db '	        \/       \/           \/       \/     	$'
    
    
    
       
                                     
;MENU Prompts      
	menu0 db '0. Exit$'
	menu1 db '1. Create new account$'
	menu2 db '2. Log in to existing account$'
	menu3 db '3. Modify account credentials$'

	menu6 db '6. Account Details$'
	menu7 db '7. Log out$'

    menuerror db 'Wrong input. Please try again$'  
    inputmsg db 'Please Select an option: $'
    input db ?
    
;CLEAR
    clear db '#XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX#$'
    

    
    
;Create Messages
    createmsg1 db '1. Enter Account Name: $'
    createmsg3 db '2. Enter Account Pin: $'    
    createmsg4 db 'New Account Created Successfully ! $'    
    sorry1 db 'Maximum Number of accounts already Created$'
    
    
;Login Messages
    logmsg1 db '1. Enter Account Name: $'
    logmsg2 db '2. Enter Account Pin: $'    
    logmsg3 db 'Logged in Successfully ! $'    
    logmsg4 db 'Log in failed.Please try again$'
    logmsg5 db 'Please Create an account first$'
    
;Modify Messages
    modmsg1 db '1. Enter new Account Name: $'
    modmsg2 db '2. Enter new Account Pin: $'    
    modmsg3 db 'Account Modified Successfully ! $'    
    modmsg4 db 'Modification failed.No account selected$'     
    modmsg5 db 'Selected Account no: $'
    modmsg6 db 'Current Account Name: $'        
    modmsg7 db 'Modification completed. You will need to log in again$'     
;Logout Messages
    logmsg6 db 'Logged out Successfully ! $'
    logmsg7 db 'Please Log in again. $'    

    
;Details Messages
    detailsmsg1 db 'Selected Account no: $'
    detailsmsg2 db 'Current Account Name: $'    
    detailsmsg3 db 'Current Account Pin: $'    
    detailsmsg4 db '..........GAMESTORE HISTORY........ $'
    detailsmsg5 db 'Please Select an account first$'        
    detailsmsg6 db 'Last 3 Games bought: $'  
    tdeposit db 'deposit$'
    twithdraw db 'withdraw$'   
    saved dw ?
    gap db '  $'
    lastmsg db 'Transactions: $'                 

    
    
;ACCOUNTS    
    countacount dw 0 
    
       
    accountName db 100 dup('$')
    accountPIN db 100 dup('$')
    countpin dw 0       
    totalAmount dw 0
    amounttens dw 0
    acountno dw 0    
  

    
   
    account1Name db 100 dup('$')
    account1PIN db 100 dup('$')
    countpin1 dw 0       
    totalAmount1 dw 0
    amounttens1 dw 0 

    
    
    account2Name db 100 dup('$')
    account2PIN db 100 dup('$')
    countpin2 dw 0       
    totalAmount2 dw 0
    amounttens2 dw 0

    
    
    account3Name db 100 dup('$')
    account3PIN db 100 dup('$')
    countpin3 dw 0       
    totalAmount3 dw 0
    amounttens3 dw 0

    



;Storing the last 3 purchased games
    lastcount dw 0
    last1 dw ?
    last1type db 100 dup('$')
    last2 dw ?
    last2type db 100 dup('$')
    last3 dw ?
    last3type db 100 dup('$')     
    
                                   

    
    
    
.CODE



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           U T I L S                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

printNumber proc                    
    ;initilize count 
    
    mov cx,0 
    mov dx,0
     
    start: 
         
        cmp ax,0 
        je print1       
        mov bx,10          
        div bx                    
        push dx              
        inc cx                           
        mov dx,0 
        jmp start
         
    print1: 
        cmp cx,0 
        je exitprint 
        pop dx           
        add dx,30h  
        mov ah,2 
        int 21h  
        dec cx 
        jmp print1 
    exitprint:  
ret
printNumber endp



macro clearScreen clear1   
    call newLine
    call newLine
    printString clear1
    call newLine
endm

macro printString str   
  mov ah,9
  lea dx,str
  int 21h
endm



;Procs

newLine proc   
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
ret    
newLine endp

enter proc
   enter1:
      mov ah,1
      int 21h
      cmp al,13
      je home
      jmp enter1
ret
enter endp

clean proc
    clean1:
        mov al,[si]
        cmp al,'$'
        je inmatch4
        mov bl,'$'
        mov [si],'$'
        inc si
        jmp clean1 
        inmatch4:
ret
clean endp

    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                             M E N U                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

;Take Input
takeinput proc
    call newLine
    printString inputmsg
    mov ah,01
    int 21h
    mov input,al
    ret 
takeinput endp
    
menu proc 
    ;Inital Big message
    printString ini1
    call newLine
    printString ini2
    call newLine
    printString ini3
    call newLine
    printString ini4
    call newLine
    printString ini5
    call newLine
    printString ini6
    call newLine

    ; Updated Options
    clearScreen clear
    printString menu0   ; 0 - Exit
    call newLine
    printString menu1   ; 1 - Create new Account
    call newLine
    printString menu2   ; 2 - Log in to existing account
    call newLine
    printString menu3   ; 3 - Modify account credentials
    call newLine
    printString browseMenuMsg   ; 4 - Browse Games
    call newLine
    printString libraryMenuMsg  ; 5 - View Personal Library
    call newLine
    printString menu6   ; 6 - Account Details
    call newLine
    printString menu7   ; 7 - Log out

ret
menu endp



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                         C R E A T E                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

createname proc
ninput:
    mov ah,1
    int 21h
    cmp al,13
    je createnameEnd
    cmp al,8
    je Backn 
    mov [si],al
    inc si
    jmp ninput
    Backn:
    dec si
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp ninput 
    createnameEnd:    
ret
endp


createpin proc
pinput:
    mov ah,7
    int 21h
    cmp al,13 
    je createpinEnd
    inc [di]
    cmp al,8
    je Backp
    mov [si],al
    mov dl,'*'
    mov ah,2
    int 21h
    inc si
    jmp pinput 
    Backp:
    dec si
    mov [si],'$'
    mov ah,2
    mov dl,8
    int 21h
    mov dl,0
    int 21h
    mov dl,8
    int 21h
    jmp pinput
ret
endp


create proc
    ;Initial BIG Message
        clearScreen clear
        printString create1
        call newLine
        printString create2
        call newLine
        printString create3
        call newLine
        printString create4
        call newLine
        printString create5
        call newLine
        clearScreen clear 
    
    ;Selecting Account no.
        cmp countacount,0
        je countacount0
        cmp countacount,1
        je countacount1
        cmp countacount,2
        je countacount2
        cmp countacount,3
        je countacount3
    
    
    countacount0:
        printString createmsg1 
        mov si,offset account1Name
        call createname
        call newLine
        call newLine
        printString createmsg3
        mov si,offset account1PIN
        mov di,offset countpin1
        call createpin 
    
    countacount1:
        printString createmsg1
        mov si,offset account2Name
        call createname 
        call newLine
        call newLine
        printString createmsg3
        mov si,offset account2PIN
        mov di,offset countpin2
        call createpin 
    
    countacount2:
        printString createmsg1
        mov si,offset account3Name
        call createname 
        call newLine 
        call newLine
        printString createmsg3
        mov si,offset account3PIN
        mov di,offset countpin3
        call createpin 
    
    
    countacount3:
        printString sorry1
        call Enter   
    
    createpinEnd:
        call newLine
        call newLine
        inc countacount
        printString createmsg4
        call Enter
    
    ret
create endp

 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           L O G I N                               ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
logname proc

linput1:
    mov ah,1
    int 21h
    cmp al,13
    je lognameEnd
    cmp al,8
    je Backl1 
    mov [si],al
    inc si
    jmp linput1
    Backl1:
    dec si
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp linput1
    lognameEnd:     
ret
logname endp

logpin proc

linput2:
    mov ah,7
    int 21h
    cmp al,13
    je logpinEnd1
    cmp al,8
    je Backl2 
    mov [si],al
    mov dl,'*'
    mov ah,2
    int 21h
    inc si
    jmp linput2
    Backl2:
    dec si
    mov [si],'$'
    mov ah,2
    mov dl,8
    int 21h
    mov dl,0
    int 21h
    mov dl,8
    int 21h
    jmp linput2     
ret
logpin endp
     

comparename proc

compare1:
    mov al,[si]
    mov bl,[di]
    cmp [di],'$'
    je inmatch1
    inc si
    inc di
    cmp al,bl
    je compare1 
    inmatch1:
    cmp al,bl
    je match
ret
comparename endp 
    



comparepin proc

comparep1:
    mov ax,0
    mov bx,0
    mov al,[si]
    mov bl,[di]
    cmp [di],'$'
    je inmatchp1
    inc si
    inc di
    cmp al,bl
    je comparep1 
    inmatchp1:
    cmp al,bl
    je match2
ret
comparepin endp
    

    
login proc
    ;Inital Big Message
        clearScreen clear
        printString login1
        call newLine
        printString login2
        call newLine
        printString login3
        call newLine
        printString login4
        call newLine
        printString login5
        call newLine
        printString login6
        call newLine
        clearScreen clear 
    ;No Account    
        cmp countacount,0 
        jne accountfound
        call newline
        printString logmsg5
        call Enter
        accountfound:
    ;Name Input        
        printString logmsg1
        mov si,offset accountName
        call logname 
    
    ;First Account
        mov acountno, 1
        mov si,offset accountName
        mov di,offset account1Name
        call comparename
    ;Name check 2nd acc      
        cmp countacount,2
        jl end:
        mov acountno, 2
        mov si,offset accountName
        mov di,offset account2Name
        call comparename
    ;Name check 3rd acc   
        cmp countacount,3
        jl end:
        mov acountno, 3
        mov si,offset accountName
        mov di,offset account3Name
        call comparename
    
    jmp end
    
    ;NAME MATCH
        match:
            call newline
            call newline
            ;PIN input
                printString logmsg2 
                mov si,offset accountPIN
                call logpin
                logPINEnd1: 
                call newLine
            ;Check if account1 and compare pin
                cmp acountno,1
                jne skip1          
                mov ax,totalamount1
                mov totalamount,ax
                mov si,offset accountPIN
                mov di,offset account1PIN
                call comparepin
                skip1:
            ;Check for acc 2, comp pin
                cmp acountno,2
                jne skip2:
                mov ax,totalamount2
                mov totalamount,ax
                mov si,offset accountPIN
                mov di,offset account2PIN
                call comparepin
                skip2:
            ;checkt to see acc3 and comp pin
                cmp acountno,3
                jne end:             
                mov ax,totalamount3
                mov totalamount,ax
                mov si,offset accountPIN
                mov di,offset account3PIN
                call comparepin
             jmp end
    
    ;PIN MATCH    
    match2:
               
        call newline
        printString logmsg3
        call newline
        call enter        
    ;NO MATCH
    end:
        mov totalamount,0
       
        call newLine 
        mov si,offset accountName
        call clean 
        mov si,offset accountPIN
        call clean    
        printString logmsg4
        call enter
ret
login endp

 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           M O D I F Y                             ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    

modname proc
minput1:
    mov ah,1
    int 21h
    cmp al,13
    je modnameEnd1
    cmp al,8
    je Backm1 
    mov [si],al
    inc si
    jmp minput1
    Backm1:
    dec si
    mov [si],'$'
    mov dl,0
    mov ah,2
    int 21h
    mov dl,8
    int 21h
    jmp minput1
    modnameEnd1:     
ret
modname endp

modpin proc
minput2:
    mov ah,7
    int 21h
    cmp al,13
    je modpinEnd1
    cmp al,8
    je Backm2 
    mov [si],al
    mov dl,'*'
    mov ah,2
    int 21h
    inc si
    jmp minput2
    Backm2:
    dec si
    mov [si],'$'
    mov ah,2
    mov dl,8
    int 21h
    mov dl,0
    int 21h
    mov dl,8
    int 21h
    jmp minput2     
ret
    jmp minput2
    modpinEnd1:     
ret
modpin endp



modify proc 
    
    ;Inital Big Message
        clearScreen clear
        printString modify1
        call newLine
        printString modify2
        call newLine
        printString modify3
        call newLine
        printString modify4
        call newLine
        printString modify5
        call newLine
        printString modify6
        call newLine
        clearScreen clear 
        
        
    
        cmp acountno,0 
        jne modaccountfound
        printString modmsg4
        call enter
    modaccountfound:
    ;Current account info
        printString modmsg5
        mov ax,acountno 
        call printNumber 
        call newline
        call newline
        printString modmsg6
        printString accountName
    
    ;First Account       
        cmp acountno,1
        jne skipm1
        call newline
    
        call newline
        printString modmsg1
        mov si,offset account1Name
        call clean 
        mov si,offset account1PIN
        call clean
        
        mov si,offset account1name
        call modname
        call newline
        call newline 
        printString modmsg2
        mov si,offset account1pin
        call modpin 
        call newline
        call newline      
        printString modmsg7
        jmp logout
        skipm1:
    ;Second Account
            
        cmp acountno,2
        jne skipm2:
        call newline
        printString modmsg1
        
        mov si,offset account2Name
        call clean 
        mov si,offset account2PIN
        call clean
        
        mov si,offset account2name
        call modname
        call newline
        call newline 
        printString modmsg2
        mov si,offset account2pin
        call modpin        
        call newline
        call newline
        printString modmsg7
        jmp logout
        skipm2:
    ;Third Account    
        cmp acountno,3
        jne end2:
        call newline
        printString modmsg1
        
        mov si,offset account3Name
        call clean 
        mov si,offset account3PIN
        call clean
        
        mov si,offset account3name
        call modname
        call newline
        call newline 
        printString modmsg2
        mov si,offset account3pin
        call modpin
        call newline
        call newline
        printString modmsg7 
        jmp logout
        jmp end2    
    end2:
    call enter

  


ret    
modify endp    














    

 
 
 
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                        D E T A I L S                              ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     
 
 

details proc 
    
   ;Inital Big Message
        clearScreen clear
        printString details1
        call newLine
        printString details2
        call newLine
        printString details3
        call newLine
        printString details4
        call newLine
        printString details5
        call newLine
        clearScreen clear 
    
        
    
   
        cmp acountno,0 
        jne detaccountfound
        printString detailsmsg5
        call enter
    detaccountfound:
    ;Current account info
        printString detailsmsg1 
        mov ax,acountno 
        call printNumber
        call newline
        call newline
        printString detailsmsg2
        printString accountName
        call newline
        call newline
        printString detailsmsg3
        mov ax,0
        printString accountPIN
        call newline
        call newline
        printString detailsmsg4
        mov ax,totalamount
        call printNumber
        call newline
        call newline
        
printString detailsmsg6 
call newline
call newline

cmp acountno, 1
je showPurchase1
cmp acountno, 2
je showPurchase2
cmp acountno, 3
je showPurchase3
jmp doneDetails

showPurchase1:
    mov si, offset purchased1
    jmp displayPurchases
showPurchase2:
    mov si, offset purchased2
    jmp displayPurchases
showPurchase3:
    mov si, offset purchased3

displayPurchases:
    mov cx, 0

showLoop:
    cmp cx, 3
    je doneDetails

    mov bx, cx       
    add bx, si        
    mov al, [bx]      
    cmp al, 255
    je skipShow
    mov bl, al


    
    cmp bl, 0
    je sh0
    cmp bl, 1
    je sh1
    cmp bl, 2
    je sh2
    cmp bl, 3
    je sh3
    cmp bl, 4
    je sh4
    cmp bl, 5
    je sh5
    cmp bl, 6
    je sh6
    cmp bl, 7
    je sh7
    cmp bl, 8
    je sh8
    cmp bl, 9
    je sh9
    cmp bl, 10
    je sh10
    cmp bl, 11
    je sh11
    cmp bl, 12
    je sh12
    jmp skipShow

sh0: printString open1
    jmp showDone
sh1: printString open2
    jmp showDone
sh2: printString open3
    jmp showDone
sh3: printString open4
    jmp showDone
sh4: printString open5
    jmp showDone
sh5: printString battle1
    jmp showDone
sh6: printString battle2
    jmp showDone
sh7: printString battle3
    jmp showDone
sh8: printString multi1
    jmp showDone
sh9: printString multi2
    jmp showDone
sh10: printString multi3
    jmp showDone
sh11: printString sim1
    jmp showDone
sh12: printString sim2

showDone:
    call newline

skipShow:
    inc cx
    jmp showLoop

doneDetails:
    call newline
    call enter

    enddt2: 
    call newline
    call enter

ret
details endp  

 
 
 
 
 
 
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                          L O G O U T                              ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
logout proc  
    
    call newline
    call newline
    mov si,offset accountName
        
        call clean 
        mov si,offset accountPIN
        call clean 
        printString logmsg6 
       
        call newline   
        call newline
        printString logmsg7
        mov last1,0
        mov si,offset last1type
        call clean
        mov last2,0
        mov si,offset last2type
        call clean        
        mov last3,0
        mov si,offset last3type
        call clean  
        mov lastcount, 0
        mov acountno,0
        
        call enter 
        
ret
logout endp    
             
             
             
             
   

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                      B R O W S E  G A M E S                       ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;          
             
             
             
             
             
             
browseGames proc
    clearScreen clear

    printString brw1
    call newLine
    printString brw2
    call newLine
    printString brw3
    call newLine
    printString brw4
    call newLine
    printString brw5
    call newLine
    printString brw6
    call newLine

genreMenu:
    call newline
    printString openWorldLabel
    call newline
    printString battleRoyaleLabel
    call newline
    printString multiplayerLabel
    call newline
    printString simulationLabel
    call newline
    printString goBackLabel
    call newline


    mov ah, 1
    int 21h
    sub al, '0'
    cmp al, 0
    je home
    cmp al, 1
    je openWorld
    cmp al, 2
    je battleRoyale
    cmp al, 3
    je multiplayer
    cmp al, 4
    je simulation
    jmp genreMenu


openWorld:
    call newline
    printString open1
    call newline
    printString open2
    call newline
    printString open3
    call newline
    printString open4
    call newline
    printString open5
    call newline
    printString open0
    call newline

    mov ah,1
    int 21h
    sub al,'0'
    cmp al,0
    je genreMenu
    cmp al,1
    jb openWorld
    cmp al,5
    ja openWorld
    dec al
    jmp purchaseGame

battleRoyale:
    call newLine
    printString battle1
    call newline
    printString battle2
    call newline
    printString battle3
    call newline
    printString battle0
    call newLine
    mov ah,1
    int 21h
    sub al,'0'
    cmp al,0
    je genreMenu
    cmp al,1
    jb battleRoyale
    cmp al,3
    ja battleRoyale
    add al,4
    jmp purchaseGame

multiplayer:
    call newLine
    printString multi1
    call newline
    printString multi2
    call newline
    printString multi3
    call newline
    printString multi0
    call newLine
    mov ah,1
    int 21h
    sub al,'0'
    cmp al,0
    je genreMenu
    cmp al,1
    jb multiplayer
    cmp al,3
    ja multiplayer
    add al,7
    jmp purchaseGame

simulation:
    call newLine
    printString sim1
    call newline
    printString sim2
    call newline
    printString sim0
    call newLine
    mov ah,1
    int 21h
    sub al,'0'
    cmp al,0
    je genreMenu
    cmp al,1
    jb simulation
    cmp al,2
    ja simulation
    add al,10
    jmp purchaseGame

purchaseGame:
    mov bl, al
    call newLine
    printString purchasePrompt
    call newLine
    mov ah,1
    int 21h
    cmp al, '0'
    je genreMenu
    cmp al, '1'
    jne genreMenu

    cmp acountno, 0
    je notLoggedIn

    cmp acountno, 1
    je getLib1
    cmp acountno, 2
    je getLib2
    cmp acountno, 3
    je getLib3
    jmp genreMenu

getLib1: mov si, offset library1
    jmp checkLibrary
getLib2: mov si, offset library2
    jmp checkLibrary
getLib3: mov si, offset library3

checkLibrary:
    mov bh, 0
    add si, bx
    cmp byte ptr [si], 1
    je alreadyOwned
    mov byte ptr [si], 1
    ; Save purchased game index to purchased list
    cmp acountno, 1
    je updatePurchase1
    cmp acountno, 2
    je updatePurchase2
    cmp acountno, 3
    je updatePurchase3
    jmp donePurchaseUpdate

updatePurchase1:
    mov dl, bl
    mov al, purchased1+1
    mov purchased1+2, al
    mov al, purchased1
    mov purchased1+1, al
    mov purchased1, dl
    jmp donePurchaseUpdate

updatePurchase2:
    mov dl, bl
    mov al, purchased2+1
    mov purchased2+2, al
    mov al, purchased2
    mov purchased2+1, al
    mov purchased2, dl
    jmp donePurchaseUpdate

updatePurchase3:
    mov dl, bl
    mov al, purchased3+1
    mov purchased3+2, al
    mov al, purchased3
    mov purchased3+1, al
    mov purchased3, dl
    jmp donePurchaseUpdate

donePurchaseUpdate:


    call newLine
    printString buy1
    call newLine
    printString buy2
    call newLine
    printString buy3
    call newLine
    printString buy4
    call newLine
    printString buy5
    call newLine
    printString buy6
    call newLine
    call enter
    jmp genreMenu

alreadyOwned:
    call newLine
    printString alreadyOwnedMsg
    call newLine
    call enter
    jmp genreMenu

notLoggedIn:
    call newLine
    printString logmsg5
    call enter
    jmp home

browseGames endp







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                 P E R S O N A L  L I B R A R Y                    ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

viewLibrary proc
    clearScreen clear

    printString lib1
    call newLine
    printString lib2
    call newLine
    printString lib3
    call newLine
    printString lib4
    call newLine
    printString lib5
    call newLine
    printString lib6
    call newLine


    call newline
    printString libraryMenuMsg
    call newline
    call newline

    
    cmp acountno, 1
    je setLib1
    cmp acountno, 2
    je setLib2
    cmp acountno, 3
    je setLib3
    jmp noAccount

setLib1:
    mov si, offset library1
    jmp beginLoop
setLib2:
    mov si, offset library2
    jmp beginLoop
setLib3:
    mov si, offset library3

beginLoop:
    mov cx, 0

printLoop:
    cmp cx, 13
    je afterPrintLoop

    mov bx, cx
    mov al, [si+bx]
    cmp al, 1
    jne skipPrint

    
    push cx
    mov bx, cx
    cmp bx, 0
    je show0
    cmp bx, 1
    je show1
    cmp bx, 2
    je show2
    cmp bx, 3
    je show3
    cmp bx, 4
    je show4
    cmp bx, 5
    je show5
    cmp bx, 6
    je show6
    cmp bx, 7
    je show7
    cmp bx, 8
    je show8
    cmp bx, 9
    je show9
    cmp bx, 10
    je show10
    cmp bx, 11
    je show11
    cmp bx, 12
    je show12
    jmp afterPrint

show0: printString open1
    call newline
    jmp afterPrint
show1: printString open2
    call newline
    jmp afterPrint
show2: printString open3
    call newline
    jmp afterPrint
show3: printString open4
    call newline
    jmp afterPrint
show4: printString open5
    call newline
    jmp afterPrint
show5: printString battle1
    call newline
    jmp afterPrint
show6: printString battle2
    call newline
    jmp afterPrint
show7: printString battle3
    call newline
    jmp afterPrint
show8: printString multi1
    call newline
    jmp afterPrint
show9: printString multi2
    call newline
    jmp afterPrint
show10: printString multi3
    call newline
    jmp afterPrint
show11: printString sim1
    call newline
    jmp afterPrint
show12: printString sim2
    call newline

afterPrint:
    pop cx
skipPrint:
    inc cx
    jmp printLoop

afterPrintLoop:
    call newline
    printString inputmsg
    mov ah, 1
    int 21h
    sub al, '0'
    mov bl, al

    call newline
    printString libraryActionPrompt
    call newline
    printString inputmsg
    mov ah, 1
    int 21h
    cmp al, '1'
    je playGame
    cmp al, '2'
    je deleteGame
    cmp al, '0'
    je home         ; ? FIXED: Go back to main menu
    jmp viewLibrary

playGame:
    call newline
    call newline
    printString playingSimple
    call newline
    call enter
    jmp viewLibrary

deleteGame:
    cmp acountno, 1
    je del1
    cmp acountno, 2
    je del2
    cmp acountno, 3
    je del3
    jmp viewLibrary

del1:
    mov si, offset library1
    jmp doDelete
del2:
    mov si, offset library2
    jmp doDelete
del3:
    mov si, offset library3

doDelete:
    mov bh, 0
    add si, bx
    mov byte ptr [si], 0
    jmp viewLibrary

noAccount:
    printString logmsg5
    call enter
    jmp home

viewLibrary endp

             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;                                                                   ;
;                           M A I N                                 ;
;                                                                   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    


MAIN PROC



MOV AX,@DATA
MOV DS,AX



home:
    clearScreen clear
    call menu
    call takeinput

    cmp input,'0'
    je exit

    cmp input,'1'
    je create

    cmp input,'2'
    je login

    cmp input,'3'
    je modify

    cmp input,'4'
    je browseGames

    cmp input,'5'
    je viewLibrary

    cmp input,'6'
    je details

    cmp input,'7'
    je logout

    call newline
    call newline
    printString menuerror
    call enter
    jmp home

  
    exit:
    
    call newLine
    call newLine
    clearScreen clear
    
    printString bye1
    call newLine
    printString bye2
    call newLine
    printString bye3
    call newLine
    printString bye4
    call newLine       
    printString bye5
    call newLine
    
    clearScreen clear

 


MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN




