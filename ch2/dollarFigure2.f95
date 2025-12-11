! Write a Fortran program called DollarFigure2 that uses a global constant
! for the figure's height
!
! $$$$$$$**************$$$$$$$
! **$$$$$$************$$$$$$**
! ****$$$$$**********$$$$$****
! ******$$$$********$$$$******
! ********$$$******$$$********
! **********$$****$$**********
! ************$**$************
!


program DollarFigure2 
    implicit none
    integer :: i, j, k, l, m, n 
    integer :: numRows
    numRows = 5
    ! numRows - 1 because fortran has no < in the loop.
    do i = 0, numRows - 1 
       
        ! outer stars
        do j = 0, 2 * i - 1
            write(*, '(A)', advance='no') '*'
        enddo
        
        !dollar signs
        do k = 1, numRows - i   
            write(*, '(A)', advance='no') '$'
        enddo

        ! middle stars
        do l = 1, 2 * (numRows - i)
            write(*, '(A)', advance='no') '*'
        enddo

        !dollar signs
        do m = 1, numRows - i 
            write(*, '(A)', advance='no') '$'
        enddo

        ! outer stars
        do n = 0, 2 * i - 1
            write(*, '(A)', advance='no') '*'
        enddo

        ! newline 
        write(*,*)
    
    enddo

end program DollarFigure2

