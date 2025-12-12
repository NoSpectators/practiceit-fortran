! Write a DO loop that produces the following output:
! 1 4 9 16 25 36 49 64 81 100
!
! For added challenge, try to modify your code so that it does not need to
! use the * multiplication operator (Hint: use the ** exponentiation operator).

program LoopSquares
    implicit none
    call mult()

end program LoopSquares

subroutine mult
    implicit none
    integer :: i
    do i = 1, 10
        ! print the number (I1: minimum width), followed by 1 space(1X)
        write(*,'(I0, 1X)', advance='no') i * i
    enddo
    write(*,*) ! print newline
end subroutine mult
