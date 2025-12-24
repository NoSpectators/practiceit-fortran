! Write DO loops to produce the following output:
!
! *
! **
! ***
! ****
! *****

program StarTriangle
    implicit none
    integer :: i, j
  
    do i = 1, 5
        do j = 1, i
            write(*, '(A)', advance='no') "*" 
        enddo 
    
        write(*,*) !newline
    enddo
end program StarTriangle
