! Write a method named monthApart that accepts four integer parameters
! representing two calendar dates. Each date consists of a month (1 through 12)
! and a day (1 through the number of days in that month [28-31]). The method
! returns whether the dates are at least a month apart. Assume that all dates
! in this problem occur during the same year. Note that the first date could
! come before or after (or be the same as) the second date. Assume that all
! parameter values passed are valid.

program TestMonthApart
    implicit none
    integer :: month1, day1, month2, day2
    logical :: solution, solution2

    write(*, '(A)', advance='no') 'Enter month 1: '
    read(*,*) month1
    write(*, '(A)', advance='no') 'Enter day 1: '
    read(*,*) day1
    write(*, '(A)', advance='no') 'Enter month 2: '
    read(*,*) month2
    write(*, '(A)', advance='no') 'Enter day 2: '
    read(*,*) day2
 
    solution = monthApart(month1, day1, month2, day2)
    if (solution) then
        write(*, '(A)') 'at least 1 month apart!'
    else
        write(*, '(A)') 'sorry. within 1 month time.'
    end if

    solution2 = monthApart2(month1, day1, month2, day2)
    if (solution2) then
        write(*, '(A)') 'at least 1 month apart!'
    else
        write(*, '(A)') 'sorry. within 1 month time.'
    end if


contains
! month=1-12, day=1-31
! returns whether or not the dates provided are at least one month apart
logical function monthApart(m1, d1, m2, d2) result (ma)
    integer, intent(in) :: m1, d1, m2, d2
    integer :: monthDiff
 
    monthDiff = abs(m1-m2)

    if (monthDiff == 0) then 
        ma = .false.                         ! same month
    else if (monthDiff >= 2) then
        ma = .true.                          ! guaranteed to be at least 1 month apart
    else                                     ! one month apart, need to compare days 
        if (m1 < m2) then
            ma = (d2 >= d1)                ! month1=4, day1=5, month2=5, day2=6 
        else  
            ma = (d1 >= d2)                ! month1=4, day1=5, month2=3, day2=4 
        end if 
    end if 
end function monthApart

! this converts everything to "day units"
! 31 is the largest possible days in month
logical function monthApart2(m1, d1, m2, d2) result(ma)
    integer, intent(in) :: m1, d1, m2, d2
    integer :: date1, date2

    date1 = m1 * 31 + d1
    date2 = m2 * 31 + d2

    ma = abs(date1 - date2) >= 31

end function monthApart2

end program TestMonthApart
