! Write a Fortran program called DollarFigure that produces the following
! output to the console. Use nested DO loops to capture the structure of the figure.
!
! $$$$$$$**************$$$$$$$
! **$$$$$$************$$$$$$**
! ****$$$$$**********$$$$$****
! ******$$$$********$$$$******
! ********$$$******$$$********
! **********$$****$$**********
! ************$**$************
!
! Note: Fortran output typically requires careful use of formatting or the REPEAT function 
! (if available) to print repeated characters on a single line.

program DollarFigure
    implicit none
    call OuterStars()
end program DollarFigure

subroutine OuterStars 
    implicit none
    integer :: i
    ! advance='no' means do not go to the next line (\n)
    do i = 1, 7 
        write(*, '(A)', advance='no') repeat('*',  2 * i - 2)
        write(*, '(A)', advance='no') repeat("$", -1 * i + 8)
        write(*, '(A)', advance='no') repeat('*', -2 * i + 16) 
        write(*, '(A)', advance='no') repeat("$", -1 * i + 8)
        write(*, '(A)', advance='no') repeat('*',  2 * i - 2)
        write(*,*) ! new line
    enddo
end subroutine OuterStars

