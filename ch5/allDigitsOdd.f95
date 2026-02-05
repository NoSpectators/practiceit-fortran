! Write a method named allDigitsOdd that returns whether every digit of a
! given integer is odd. Your method should return true if the number consists
! entirely of odd digits and false if any of its digits are even. 0, 2, 4, 6,
! and 8 are even digits, and 1, 3, 5, 7, 9 are odd digits. Your method should
! work for positive and negative numbers.


program AllOdd
    implicit none
    integer :: inputNum
    logical :: numsAllOdd
    write(*,'(A)', advance='no') 'enter an integer: '
    read(*,*) inputNum
    numsAllOdd = allDigitsOdd(inputNum)
    if (numsAllOdd) then
        write(*, '(A)') 'the digits are all odd!'
    else
        write(*, '(A)') 'the digits are not all odd.'
    end if 

contains
logical function allDigitsOdd(num) result (odd)
    integer, intent(in) :: num
    integer :: n, digit  
    
    n = abs(num)
    odd = .true.

    ! forever loop  
    do while (n >= 0) 
        digit = mod(n, 10) ! last digit in num
        if (mod(digit, 2) == 0)  then 
            odd = .false.
            return       ! exit function 
        end if  
        n = n / 10 ! slice last digit
        if (n == 0)  exit ! exit loop
    end do 


end function allDigitsOdd

end program AllOdd
