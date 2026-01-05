! Write a subroutine called printReverse that accepts a string as its parameter 
! and prints the characters in opposite order. If the empty string is passed, 
! no output is produced. Your subroutine should produce a complete line of output.


program TestPrintReverse
    implicit none
    character(len=100) :: userInput
    write(*, '(A)', advance='no') 'enter a string: '
    read(*,'(A)') userInput
    call printReverse(trim(userInput))
    

contains 

subroutine printReverse(s)
    character(len=*), intent(in) :: s
    integer :: i
    if (len(s) == 0) then
        return
    end if
    
    do i = len(s), 1, -1
        write(*, '(A1)', advance='no') s(i:i) 
    end do 
    write(*,*)

end subroutine printReverse

end program TestPrintReverse
