! Write a subroutine named inputBirthday that prompts the user 
! to enter a month, day, and year of birth, then prints the 
! birthdate in a suitable format.

program Birthday
    implicit none
    integer :: month, day, year

    write(*, '(A)') 'enter month: '
    read (*,*) month
    write(*, '(A)') 'enter day: '
    read (*,*) day
    write(*, '(A)') 'enter year: '
    read (*,*) year
    
    write(*, '(/, A, I0, A, I0, A, I0)') 'Birthdate: ', month, '/', day, '/', year 

end program Birthday
