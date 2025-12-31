! Write a function named lastDigit that returns the last digit of an integer. 
! It should work for negative numbers as well.

program TestLastDigit
    implicit none
    integer :: num, res
    write(*, '(A)', advance='no') 'enter a number: '
    read (*, *) num
    res = lastDigit(num)
    write(*, '(A, I0)') 'last digit: ' , res

contains

function lastDigit(num) result (last)
    implicit none
    integer, intent(in) :: num
    integer :: last
    last = mod(abs(num), 10)
    
    ! careful: the below code results in a bug.  
    !last = modulo(num, 10)
    
end function lastDigit

end program TestLastDigit
