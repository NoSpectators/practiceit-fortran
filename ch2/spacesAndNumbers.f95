! Write nested DO loops to produce the following output:
!
!     1
!    22
!   333
!  4444
! 55555

program SpacesAndNumbers
    implicit none
    integer :: i, j, k

    do i = 1, 5
        do j = 5 - i, 1, -1
            write(*, '(A)', advance='no') " "
        enddo
        do k = 1, i
            write(*, '(I0)', advance='no') i
        enddo
        write(*,*) !newline
    enddo
end program SpacesAndNumbers
