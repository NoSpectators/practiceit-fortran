! Write for loops to produce the following output:
! 1
! 22
! 333
! 4444
! 55555
! 666666
! 7777777

program NumberTriangle
    implicit none
    integer :: i, j
    do i = 1, 7
        do j = 1, i
            write(*, '(I0)', advance='no') i
        enddo
        write(*,*) !newline
    enddo 
end program NumberTriangle
