! Write a static method named anglePairs that accepts three angles (integers),
! measured in degrees, as parameters and returns whether or not there exists
! both complementary and supplementary angles amongst the three angles passed.
! Two angles are complementary if their sum is exactly 90 degrees; two angles
! are supplementary if their sum is exactly 180 degrees. 

! Therefore, the method should return true if any two of the three angles add up 
! to 90 degrees and also any two of the three angles add up to 180 degrees; 
! otherwise the method should return false. You may assume that each angle
! passed is non-negative.

program Angles
    implicit none
    integer :: a, b, c
    logical :: goodAnglePairs
    
    ! example that passes: 30, 60, 120
    write(*, '(A)', advance='no') 'angle a: ' 
    read(*,*) a 
    write(*, '(A)', advance='no') 'angle b: ' 
    read(*,*) b 
    write(*, '(A)', advance='no') 'angle c: ' 
    read(*,*) c 
    
    goodAnglePairs = anglePairs(a, b, c)
    if (goodAnglePairs) then
        write(*, '(A)') 'pairs are good!'
    else
        write(*, '(A)') 'bad pairs.'
    end if

contains
logical function anglePairs(a, b, c) 
    integer, intent(in) :: a, b, c 
    logical :: complementary, supplementary
    
    complementary = (a + b == 90 .or. a + c == 90 .or. b + c == 90)
    supplementary = (a + b == 180 .or. a + c == 180 .or. b + c == 180)
    anglePairs = complementary .and. supplementary 
end function anglePairs

end program Angles
