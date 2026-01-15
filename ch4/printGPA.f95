! Write a method named printGPA that calculates a student's grade point 
! average. The user will type a line of input containing the student's name, 
! then a number of scores, followed by that many integer scores.

program TestPrintGPA
    implicit none
    character(len=100) :: userName
    integer :: numScores
    real :: solution
    write(*, '(A)') 'number of scores? (enter integer) '    
    read(*,*) numScores
    solution = printGPA(userName, numScores)
    write(*, '(A, F0.2)') 'gpa: ', solution

contains
function printGPA(userName, numScores) result (gpa)
    ! declare all variables 
    character(len=*), intent(in) :: userName
    integer, intent(in) :: numScores
    integer :: score, i 
    real :: gpa, scoreTotal
    
    ! initialize vars
    gpa = 0.0
    scoreTotal = 0.0
    do i = 1, numScores
        write(*, '(A)', advance='no') 'enter integer score: '
        read (*,*) score
        scoreTotal = scoreTotal + real(score)
    end do

    gpa = scoreTotal / real(numScores) 

end function printGPA

end program TestPrintGPA
