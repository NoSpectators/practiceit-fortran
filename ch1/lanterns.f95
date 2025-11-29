! Write a complete program named Lanterns that generates the
! following three figures of output. Use methods to show structure and
! eliminate redundancy in your solution.
!
! Expected Output Structure:
!
!      *****
!    *********
!  *************
!
!      *****
!    *********
!  *************
!  * | | | | | *
!  *************
!      *****
!    *********
!  *************
!
!      *****
!    *********
!  *************
!      *****
!  * | | | | | *
!  * | | | | | *
!      *****
!      *****

program Lanterns
    implicit none
    call cone()    
end program Lanterns

subroutine cone() 
    implicit none
    integer :: i
    do i = 1, 3
        write(*, '(A)', advance='no') repeat(' ', -2 * i + 6) !leading spaces
        write(*, '(A)'), repeat('*', 4 * i + 1) !asterisks
    enddo
end subroutine cone
