! Write a method named evenSum that prompts the user for many integers and 
! print the total even sum and maximum of the even numbers. You may assume 
! that the user types at least one non-negative even integer.

program EvenSum
    implicit none
    integer :: numInts      ! total number of integers to conduct evenSum on
    integer :: totalEvenSum ! the eventual solution
    integer :: inputNum     ! variable used to save each user input 
    integer :: maxEven      ! find the maximum even number entered
    integer :: i            ! used in the loop 

    totalEvenSum = 0
    maxEven = -1

    write(*,'(A)', advance='no') 'How many integers (or enter -1 to stop): ' 
    read(*,*) numInts
    
    do i = 1, numInts
        write(*, '(A)') 'enter number: '
        read(*,*)  inputNum
        if (mod(inputNum, 2) == 0) then
            totalEvenSum = totalEvenSum + inputNum
            if (inputNum > maxEven) then
                maxEven = inputNum
            end if 
        end if
    enddo
    write(*, '(A, I0)') 'sum of even numbers entered: ', totalEvenSum
    write(*, '(A, I0)') 'maximum even number entered: ', maxEven
end program EvenSum
