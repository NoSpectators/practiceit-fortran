! Write a method dominant that accepts three integers as parameters and 
! returns true if any one of the three integers is larger than the sum of the 
! other two integers. The integers might be passed in any order, so the 
! largest value could be any of the three. If no value is larger than the sum 
! of the other two, your method should return false.


program TestDominant
    implicit none
    integer :: a, b, c
    logical :: isDominant, solution
    write(*, '(A)', advance='no') 'enter digit: '
    read(*,*) a
    write(*, '(A)', advance='no') 'enter digit: '
    read(*,*) b
    write(*, '(A)', advance='no') 'enter digit: '
    read(*,*) c
    solution = dominant(a, b, c)
    if (solution) then
        write(*, '(A)') 'dominant!'
    else
        write(*, '(A)') 'not dominant.'
    end if
    
contains
logical function dominant(a, b, c) result (solution) 
    integer, intent(in) :: a, b, c
    solution = (c > a + b) .or. (b > a + c) .or. (a > b + c) 
end function dominant

end program TestDominant
