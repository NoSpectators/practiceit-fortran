! A "perfect number" is a positive integer that is the sum of all its proper 
! factors (that is, factors including 1 but not the number itself). Write a 
! static method perfectNumbers that takes an integer max as an argument and 
! prints out all perfect numbers that are less than or equal to max.

program TestPerfectNumber
    implicit none
    integer :: maxNum
    write(*, '(A)', advance='no') 'enter max: '
    read(*,*) maxNum
    call perfectNumber(maxNum)
 
contains
subroutine perfectNumber(maxNum)
    integer, intent(in) :: maxNum
    integer :: i, j, factorSum
    
    
    do i = 1, maxNum
        factorSum = 0 
        do j = 1, i / 2 !no number can have a factor greater than its half 
            if (mod(i, j) == 0) then
                factorSum = factorSum + j
            end if
        end do 
        if (i > 0 .and. i == factorSum) then
            write(*, '(A, I0)') 'perfect num: ', i
        end if 
    end do

end subroutine perfectNumber

end program TestPerfectNumber
