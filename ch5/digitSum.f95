! Write a method named digitSum that accepts an integer as a parameter and 
! returns the sum of the digits of that number. For example, digitSum(29107) 
! returns 2+9+1+0+7 or 19. For negative numbers, return the same value that 
! would result if the number were positive. For example, digitSum(-456) 
! returns 4+5+6 or 15.

program SumDigits
    implicit none
    integer :: inputNum, s
    write(*, '(A)', advance='no') 'enter an integer: '
    read(*,*) inputNum
    s = digitSum(inputNum)
    write(*,'(A, I0)') 'sum of digits: ', s


contains
integer function digitSum(num) result (s)
    integer, intent(in) :: num
    integer :: temp, current 
   
    temp = abs(num)
    s = 0
    do while (temp > 0) 
        current = mod(temp, 10)    ! get right-most digit
        
        s = s + current            ! add to total
        temp = temp / 10           ! shave off digit in one's place
    end do 
end function digitSum


end program SumDigits
