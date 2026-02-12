! Write a method named hasAnOddDigit that returns whether any digit of a 
! positive integer is odd. Your method should return true if the number has 
! at least one odd digit and false if none of its digits are odd.

program HasOdd
    implicit none
    integer(kind=8) :: inputNum
    logical :: hasOddDigit 
    write(*, '(A)', advance='no') 'Enter an integer: '
    read(*,*) inputNum
    hasOddDigit = hasAnOddDigit(inputNum)
    if (hasOddDigit) then
        write(*, '(I0, A)') inputNum, ' contains an odd digit.'
    else
        write(*, '(I0, A)') inputNum, ' does not contain an odd digit.'
    end if

contains
logical function hasAnOddDigit(inputNum) result (found)
    integer(kind=8), intent(in) :: inputNum
    integer(kind=8) :: temp 

    ! initialize variables
    found = .false.
    temp = abs(inputNum) 
    
    do while (temp /= 0) 
        if (mod(temp, 2) == 1) then
            found = .true.
            return
        else
            temp = temp / 10
        end if 
    end do 
    
end function hasAnOddDigit

end program HasOdd
