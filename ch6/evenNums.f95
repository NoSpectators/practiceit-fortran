! Write a method named evenNumbers that accepts a filename as a parameter 
! reading input from a file containing a series of integers, and report 
! various statistics about the integers. You may assume that there is at 
! least one integer in the file. Report the total number of numbers, the sum 
! of the numbers, the count of even numbers and the percent of even numbers.

program Evens
    implicit none
    character(len=50) :: fileName

    write(*,'(A)', advance='no') 'Enter filename: '
    read(*, *) fileName

    call evenNumbers(fileName)

contains

subroutine evenNumbers(fname)
    character(len=*), intent(in) :: fname
    integer :: unit, ios, i 

    integer, allocatable :: scores(:) ! dynamic array
    integer :: n, n_evens                 

    unit=10
    open(unit=unit, file=trim(fname), status="old", action="read", iostat=ios)
   
    if (ios /= 0) then 
        print*, "Error: Could not open file.", trim(fname)
        return
    end if 
  
    ! Count the entries in file
    n = 0
    do
        read(unit, *, iostat=ios) i  
        if (ios /= 0) exit  ! nonzero ios = end of file or error
        n = n + 1 
    end do

    ! allocate memory based on count
    allocate(scores(n))

    ! fill the array
    rewind(unit)   ! go back to beginning of file
    do i = 1, n
        read(unit, *) scores(i)
    end do

    close(unit)

    ! calculate even statistic
    n_evens = 0
    do i = 1, n
        if (mod(scores(i), 2) == 0) then
            n_evens = n_evens + 1
        end if 
    end do 

    ! display data
    write(*, '(A, I0)') 'Total scores read: ', n
    write(*, '(A, I0)') 'Sum of numbers: ', sum(scores)
    write(*, '(A, I0)') 'Count of evens: : ', n_evens
    write(*, '(A, F5.2)') 'Percent of evens: : ', (real(n_evens) / real(n)) * 100
    write(*, '(A, F5.2)') 'Average score: ', real(sum(scores)) / n 
    write(*, '(A, I0)') 'Highest score: ', maxval(scores)

end subroutine evenNumbers

end program Evens
