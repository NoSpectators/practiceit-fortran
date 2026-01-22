! Write a method named season that takes two integers as parameters 
! representing a month and day and that returns a String indicating the 
! season for that month and day.

! If the date falls between 12/16 and 3/15, you should return "Winter". If 
! the date falls between 3/16 and 6/15, you should return "Spring". If the 
! date falls between 6/16 and 9/15, you should return "Summer". And if the 
! date falls between 9/16 and 12/15, you should return "Fall".


program TestSeason
    implicit none
    integer :: month, day
    character(len=:), allocatable :: result
    write(*,'(A)', advance='no') 'enter month: '
    read(*,*) month
    write(*,'(A)', advance='no') 'enter day (1-31) : '
    read(*,*) day
    result = season(month, day)
    write(*,'(A, A)') 'month: ', result

contains
function season(month, day) result (outStr)
    integer, intent(in) :: month, day
    character(len=:), allocatable :: outStr
    if (month == 1 .or. month == 2 .or. (month == 12 .and. day >= 16) .or. (month == 3 .and. day <= 15)) then 
        outStr = "Winter"
    else if ((month == 3 .and. day >= 16) .or. month == 4 .or. month == 5 .or. (month == 6 .and. day <= 15)) then
        outStr = "Spring"
    else if ((month == 6 .and. day >= 16) .or. month == 7 .or. month == 8 .or. (month == 9 .and. day <= 15)) then
        outStr = "Summer"
    else if ((month == 9 .and. day >= 16) .or. month == 10 .or. month == 11 .or. (month == 12 .and. day <= 15)) then
        outStr = "Fall"
    end if
end function season

end program TestSeason
