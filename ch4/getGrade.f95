! Write a method called getGrade that accepts an integer representing a 
! student's grade in a course and returns that student's numerical course 
! grade. The grade can be between 0.0 (failing) and 4.0 (perfect). Assume 
! that scores are in the range of 0 to 100. For an added challenge, make your 
! method throw an IllegalArgumentException if the user passes a grade lower 
! than 0 or higher than 100.

program TestGetGrade
    implicit none
    integer :: grade
    real :: solution
    
    write(*,'(A)', advance='no') 'enter grade (1-100): '
    read (*,*) grade
    solution = getGrade(grade)
    write(*, '(A, F0.2)') 'final grade: ', solution

contains

function getGrade(score) result (gpa)
    integer, intent(in) :: score
    real :: gpa
   
    if (score < 0 .or. score > 100) then
        print*, 'Error: score must be between 0 and 100.'
        stop ! terminates program
    end if 
   
    select case (score) 
        case (90:100)
            gpa = 4.0
        case (80:89)
            gpa = 3.0
        case (70:79)
            gpa = 2.0
        case (60:69)
            gpa = 1.0
        case default
            gpa = 0.0
    end select
end function getGrade

end program TestGetGrade
