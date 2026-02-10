! Write a method named firstDigit that returns the first digit of an integer. 
! For example, firstDigit(3572) should return 3. It should work for negative 
! numbers as well. For example, firstDigit(-947) should return 9.

program First
    implicit none
    integer :: inputNum, solution
    write(*, '(A)', advance='no') 'enter an integer: '
    read(*,*) inputNum

    solution = firstDigit(inputNum)
    write(*, '(A, I0)') 'first digit: ', solution

contains
integer function firstDigit(inputNum) result (r)
    integer, intent(in) :: inputNum
    
    r = abs(inputNum)
    do while (r >= 10) 
         r = r / 10 
    end do 
end function firstDigit 

end program First
