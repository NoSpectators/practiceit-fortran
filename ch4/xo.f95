! Write a static method named xo that accepts an integer size as a parameter 
! and prints a square of size by size characters, where all characters are 
! "o" except that an "x" pattern of "x" characters has been drawn from the 
! corners of the square. In other words, on the first line, the first and 
! last characters are "x"; on the second line, the second and second-from-last
! characters are "x"; and so on. If 0 or less is passed for the size, no 
! output should be produced.

program TestXO
    implicit none
    integer :: squareSize 
    write(*, '(A)', advance='no') 'enter square size: '
    read(*,*) squareSize
    call xo(squareSize)

contains 
subroutine xo(squareSize) 
    integer, intent(in) :: squareSize
    integer :: i, j

    ! guard user input
    if (squareSize <= 0) return

    do i = 1, squareSize 
        do j = 1, squareSize 
            ! main diagonal: j == i 
            ! other diagonal: j == squareSize - i + 1
            if (j == i  .or. j == squareSize - i + 1) then 
                write(*, '(A)', advance='no') "x"
            else
                write(*, '(A)', advance='no') "o"
            end if 
        end do 
        write(*,*)
    end do

end subroutine xo

end program TestXO
