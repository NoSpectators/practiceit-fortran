! Write a subroutine called process_name that prompts the user to enter
! his or her full name, then prints the name in reverse order 
! (i.e., last name, first name). 
!
! Assumes only a first and last name will be given. The code should 
! read the entire line of input at once and then break it apart 
! as necessary.


program TestProcessName
    implicit none
    character(len=100) :: fullName
    write(*,'(A)', advance='no') 'please enter full name: '
    read (*,'(A)') fullName
    call processName(fullName)

contains

subroutine processName(fullName)
    implicit none
    character(len=*), intent(in) :: fullName
    integer :: spaceIdx
    
    ! find first space separating first and last name
    spaceIdx = index(trim(fullName), ' ')
    ! if two words (first and last name exist) 
    if (spaceIdx > 0) then
        write(*, '(A)', advance='no') trim(fullName(spaceIdx+1:)) // ", " // trim(fullName(1:spaceIdx-1))
    end if  
    write(*,*)
end subroutine processName


end program TestProcessName
