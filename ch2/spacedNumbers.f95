! Write nested DO loops to produce the following output:
!
!     1
!    2
!   3
!  4
! 5

program SpacedNumbers
    implicit none
    integer :: i, j

    do i = 1, 5
        do j = i, 5
            write(*,'(A)', advance='no') " "
        enddo
        write(*, '(I0)', advance='no') i
        write(*,*)
    enddo
end program SpacedNumbers
