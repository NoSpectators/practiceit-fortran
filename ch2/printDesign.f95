! Write a subroutine called printDesign that produces the following output.
! Use nested DO loops to capture the structure of the figure.
!
! -----1-----
! ----333----
! ---55555---
! --7777777--
! -999999999-

program PrintDesign
    implicit none
    integer :: i, j, k

    do i = 1, 5
        ! left dashes 
        do j = 5-i, 0, -1
            write(*,'(A)', advance='no') "-"
        enddo
   
        ! middle numbers (odd number of digits and digits themselves=2*i-1)
        do k = 1, 2*i-1 
            write(*, '(I0)', advance='no') 2*i-1
        enddo 

        ! right dashes
        do j = 5-i, 0, -1
            write(*, '(A)', advance='no') "-"
        enddo        

        write(*,*) !newline
    enddo
    
end program PrintDesign
