! Write a method called printRange that accepts two integers as arguments and 
! prints the sequence of numbers between the two arguments, separated by 
! spaces. Print an increasing sequence if the first argument is smaller than 
! the second; otherwise, print a decreasing sequence. If the two numbers are 
! the same, that number should be printed by itself.

program TestPrintRange
    implicit none
    integer :: a, b
    write(*,'(A)', advance='no') 'enter num1: '
    read(*,*) a
    write(*,'(A)', advance='no') 'enter num2: '
    read(*,*) b
    call printRange(a, b)

contains
subroutine printRange(a, b)
    integer, intent(in) :: a, b
    integer :: i, s 
    
    ! determine the step
    if (a <= b) then
        s = 1
    else 
        s = -1
    end if 

    do i = a, b, s
        if (i == a) then
            write(*, '(I0)', advance='no') i
        else
            write(*, '(A, I0)', advance='no') " ", i 
        end if
    end do 
    write(*,*) ! newline
end subroutine printRange
end program TestPrintRange
