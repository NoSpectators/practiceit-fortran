! Write a subroutine named printGrid that accepts two integer parameters rows and 
! cols. The output is a comma-separated grid of numbers where the first 
! parameter (rows) represents the number of rows of the grid and the second 
! parameter (cols) represents the number of columns. The numbers count up 
! from 1 to (rows x cols). The output are displayed in column-major order, 
! meaning that the numbers shown increase sequentially down each column and 
! wrap to the top of the next column to the right once the bottom of the 
! current column is reached. Assume that rows and cols are greater than 0.

! example: 3 rows, 4 cols
! Col 1,  Col 2, Col 3, Col 4

!     1,   4,     7,    10
!     2,   5,     8,    11
!     3,   6,     9,    12

program Grid
    implicit none
    integer :: rows, cols
    write(*, '(A)', advance='no') 'number of rows: '
    read (*,*) rows
    write(*, '(A)', advance='no') 'number of cols: '
    read (*,*) cols
    call printGrid(rows, cols) 

contains

subroutine printGrid(rows, cols)
    implicit none
    integer, intent(in) :: rows, cols
    integer :: i, j, endVal
    
    !outer loop
    do i = 1, rows
        endVal = i + rows * (cols-1) !first endVal=10 if rows=3,cols=4
        do j = i, endVal, rows !each j gets incremented by rows
            write(*, '(I0)', advance='no') j
            if (j /= endVal) then
                write(*, '(A)', advance='no') ', '
            end if
        end do
        write(*,*) !newline
    end do
end subroutine printGrid


end program Grid
