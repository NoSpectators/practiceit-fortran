! Write DO loops to produce the following output:
!
! *****
! *****
! *****
! *****

program StarSquare
    implicit none
    integer :: i, j

    do i = 1, 4
        do j = 1, 5
            write(*, '(A)', advance='no') "*"
        enddo
        write(*,*) !newline
    enddo
end program StarSquare
