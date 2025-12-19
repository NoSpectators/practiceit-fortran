! Modify your code from the previous problem to produce the following output:
!
! 99999888887777766666555554444433333222221111100000
! 99999888887777766666555554444433333222221111100000
! 99999888887777766666555554444433333222221111100000
! 99999888887777766666555554444433333222221111100000
! 99999888887777766666555554444433333222221111100000

program NestedNumbers2 
    implicit none
    integer :: i, j, k 

    do i = 1, 5
        do j = 9, 0, -1
            do k = 1, 5
                write(*, '(I0)', advance='no') j
            enddo
        enddo
        write(*,*) ! newline
    enddo

      
end program NestedNumbers2
