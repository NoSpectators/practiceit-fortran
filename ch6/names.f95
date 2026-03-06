! Write a method named boyGirl that accepts its input from a file containing 
! a series of names followed by integers. The names alternate between boys' 
! names and girls' names. Your method should compute the absolute difference 
! between the sum of the boys' integers and the sum of the girls' integers. 
! The input could end with either a boy or girl; you may not assume that it 
! contains an even number of names.

program Names
    implicit none
    character(len=50) :: fileName

    write(*, '(A)', advance='no') 'enter filename: '
    read(*, '(A)') fileName

    call boyGirl(filename)

contains

subroutine boyGirl(fName) 
    character(len=*), intent(in) :: fName
    integer :: unit, ios 
    character(len=200) :: line
    
    integer :: tokenNum
    character(len=50) :: tokenName
    integer :: i, boysSum, girlsSum, absDiff

    write(*, '(A A)') 'fileName: ', fName

    unit = 10
    boysSum = 0
    girlsSum = 0
    i = 1

    !open the file for reading
    open(unit=unit, file=fName, status="old", action="read")
    do
        read(unit, '(A)', iostat=ios) line
        if (ios /= 0) exit  ! nonzero ios = end of file or error
        
        read(line, *) tokenName, tokenNum 
        write(*, '(A A I0)') trim(tokenName), ' ', tokenNum
        if (mod(i, 2) == 1) then 
            boysSum = boysSum + tokenNum 
        else 
            girlsSum = girlsSum + tokenNum
        end if

        i = i + 1
    end do

    write(*, '(A I0)') 'boys sum: ', boysSum
    write(*, '(A I0)') 'girls sum: ', girlsSum
    write(*, '(A I0)') 'absolute difference: ', abs(boysSum - girlsSum)
     
end subroutine boyGirl
end program Names
