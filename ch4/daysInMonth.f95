! Write a method named daysInMonth that accepts a month (an integer between 1 
! and 12) as a parameter and returns the number of days in that month in this 
! year. For example, the call daysInMonth(9) would return 30 because 
! September has 30 days. Assume that the code is not being run during a leap 
! year (that February always has 28 days).

program TestDaysInMonth
    implicit none
    integer :: month, numDays
    write(*, '(A)', advance='no') 'enter month (1 - 12): '
    read(*,*) month
    numDays = daysInMonth(month)
    write(*, '(A, I0)') 'days in month: ', numDays
    
contains
function daysInMonth(month) result (days)
    integer, intent(in) :: month
    integer :: days
    select case (month)
        case(4, 6, 9, 11) 
            days = 30
        case(1, 3, 5, 7, 8, 10, 12)
            days = 31
        case(2)
            days = 28
        case default
            !invalid input 
            days = -1
    end select
end function daysInMonth

end program TestDaysInMonth
