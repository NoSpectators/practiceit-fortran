! Write a complete program named CollegeAdmit that reads 
! user input for a student's grade point average and SAT exam score, 
! and uses these values to decide whether the student is admitted to the 
! university. A GPA below 1.8 will cause the student to be rejected; an SAT 
! score below 900 will also cause a rejection. Otherwise the student is 
! accepted. If both the GPA and the SAT score are too low, print the message 
! about the GPA being too low.

program College
    implicit none
    real :: gpa
    integer :: sat
    write(*, '(A)') 'enter your gpa'
    read(*,*) gpa
    write(*, '(A, f4.2)') 'you entered ', gpa
    write(*, '(A)') 'enter your sat score'
    read(*,*) sat
    write(*, '(A, I0)') 'you entered ', sat
    if (gpa < 1.8 .or. sat < 900) then
        write(*, '(A)') 'you are rejected'
    else
        write(*, '(A)') 'you are accepted'
    endif

end program College
