! Write a method named repl that accepts a String and a number of repetitions 
! as parameters and returns the String concatenated that many times. For 
! example, the call repl("hello", 3) returns "hellohellohello". If the number 
! of repetitions is 0 or less, an empty string is returned.


program TestRepl
    implicit none
    character(len=:), allocatable :: result
    character(len=100) :: inputStr
    integer :: reps
    
    write(*,'(A)', advance='no') 'enter text to replicate: '
    read(*,*) inputStr
    
    write(*,'(A)', advance='no') 'enter number of repetitions: '
    read(*,*) reps
    result = repl(trim(inputStr), reps)
    write(*,'(A, A)') 'solution: ', result

contains

function repl(myStr, reps) result (outStr)
    character(len=*), intent(in) :: myStr    ! len=* used for dummy variables of type string
    integer, intent(in) :: reps
    character(len=:), allocatable :: outStr  ! len=: used for allocatable variables
    integer :: i 
   
    outStr = "" !initialize empty string. if reps is 0, outStr returns correctly

    do i = 1, reps
        outStr = outStr // myStr 
    end do 
    
end function repl

end program TestRepl
