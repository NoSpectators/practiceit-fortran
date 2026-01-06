! Write a subroutine called printSquare that takes in two integer parameters, a
! min and a max, and prints the numbers in the range from min to max inclusive
! in a square pattern. Each line of the square consists of a circular sequence
! of increasing integers between min and max. Each line prints a different
! permutation of this sequence. The first line begins with min, the second
! line begins with min + 1, and so on. When the sequence in any line reaches
! max, it wraps around back to min. You may assume the caller of the subroutine
! will pass a min and a max parameter such that min is less than or equal to
! max.

! each row "shifts" by 1, and "wrap around" back to the start
! example:
! 3, 4, 5, 6, 7
! 4, 5, 6, 7, 3
! 5, 6, 7, 3, 4

program TestPrintSquare
    implicit none
    integer :: min_val, max_val
    write(*, '(A)', advance='no') 'enter min val: '
    read(*,*) min_val
    write(*, '(A)', advance='no') 'enter max val: '
    read(*,*) max_val
    call printSquare(min_val, max_val)

contains

subroutine printSquare(min_val, max_val)
    implicit none
    integer, intent(in) :: min_val, max_val
    integer :: i, j, currentNum, rangeSize

    !calculate how many numbers are in the set
    ! need to do loops from 0 to rangeSize - 1 for modulo secret sauce
    rangeSize = max_val - min_val + 1
    do i = 0, rangeSize - 1  ! 
        do j = 0, rangeSize - 1
            currentNum = min_val + modulo(i + j, rangeSize)
            write(*, '(I0)', advance='no') currentNum
        end do
        write(*,*)
    end do    

end subroutine printSquare



end program TestPrintSquare
