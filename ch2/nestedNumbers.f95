! Write nested do loops that produce the following output:
!
! 000111222333444555666777888999
! 000111222333444555666777888999
! 000111222333444555666777888999

program NestedNumbers 
    implicit none
    integer :: i, j, k
    do i = 0, 2
        do j = 0, 9 
            do k = 0, 2
                write(*,'(I0)', advance='no') j
            enddo
        enddo
        write(*,*) ! newline
    enddo        

end program NestedNumbers
