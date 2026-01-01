! Write a function named pay that accepts a real number for a TA's salary and an
! integer for the number of hours the TA worked this week, and returns how 
! much money to pay the TA. The TA should receive "overtime" pay of 1.5 
! normal salary for any hours above 8.


program CalculatePay
    implicit none
    real :: salary, totalPay
    integer :: hoursWorked
    write(*, '(A)', advance='no') 'enter TA salary: '
    read(*,*) salary
    write(*, '(A)', advance='no') 'enter hours worked: '
    read(*,*) hoursWorked
    totalPay = pay(salary, hoursWorked)
    write(*, '(A, F0.2)') 'total pay for the week: ', totalPay
contains

function pay(salary, hoursWorked) result (finalPay)
    implicit none
    real, intent(in) :: salary
    integer, intent(in) :: hoursWorked
    real :: finalPay
    if (hoursWorked <= 8) then 
        finalPay = hoursWorked * salary
    else
        finalPay = (8.0 * salary) + (real(hoursWorked-8) * (salary*1.5))
    endif
    
end function pay

end program CalculatePay
