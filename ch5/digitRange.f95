! Write a method named digitRange that accepts an integer as a parameter and
! returns the range of values of its digits. The range is defined as 1 more
! than the difference between the largest and smallest digit value. For
! example, the call of digitRange(68437) would return 6 because the largest
! digit value is 8 and the smallest is 3, so 8 - 3 + 1 = 6. If the number
! contains only one digit, return 1. You should solve this problem without
! using a String.


program TestDigitRange
    implicit none
    integer :: inputNum, solution 
    write(*,'(A)', advance='no') 'Enter an integer: '
    read(*,*) inputNum

    solution = digitRange(inputNum)
    write(*,'(A, I0)') 'range: ', solution

contains
function digitRange(inputNum) result(r)
    integer, intent(in) :: inputNum
    integer :: r, minNum, maxNum, digit
    integer :: tempNum

    minNum = huge(0)
    maxNum = -huge(0)
    tempNum = abs(inputNum)

    do while (tempNum > 0) 
        digit = mod(tempNum, 10) 
        
        if (digit > maxNum) then
            maxNum = digit
        end if
        
        if (digit < minNum) then
            minNum = digit
        end if 
        tempNum = tempNum / 10 ! shave off last number
    end do 
   
    r = maxNum - minNum + 1

end function digitRange

end program TestDigitRange
