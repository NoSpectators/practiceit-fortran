! Write a method named toBinary that accepts an integer as a parameter and 
! returns a string of that number's representation in binary. For example, 
! the call of toBinary(42) should return "101010".

program BinaryString
    implicit none
    integer :: inputNum
    character(len=:), allocatable :: solution

    write(*, '(A)', advance='no') 'Enter an integer: '
    read(*,*) inputNum
    
    solution = toBinary(inputNum)
    write(*, '(A)') solution

contains
function toBinary(intNum) result(r)
    integer, intent(in) :: intNum
    character(len=:), allocatable :: r
    integer :: temp, remainder
    character(len=1) :: digit

    temp = intNum
    r = "" 
    
    if (temp == 0) then
        r = "0"
        return
    end if 
    
    do while (temp > 0)  
        remainder = mod(temp, 2)
        if (remainder .eq. 0) then
            digit="0"
        else
            digit="1"
        end if
   
        temp = temp / 2  ! divide number in half (integer division)
        r = digit // r   ! reverse the string
    end do
end function toBinary

end program BinaryString
