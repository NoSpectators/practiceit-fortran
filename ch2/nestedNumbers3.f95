! Modify your code from the previous problem to produce the following output:
!
! 999999999888888887777777666666555554444333221
! 999999999888888887777777666666555554444333221
! 999999999888888887777777666666555554444333221
! 999999999888888887777777666666555554444333221

program NestedNumbers3
    implicit none
    integer :: i, j, k 
    
    do i = 1, 4
        do j = 9, 1, -1
            do k = j, 1, -1
                write(*,'(I0)', advance='no') j
            enddo
        enddo
        write(*,*) ! newline
    enddo
end program NestedNumbers3
